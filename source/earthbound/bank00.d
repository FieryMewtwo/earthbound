/// low level stuff, actionscript, overworld code
module earthbound.bank00;

import earthbound.commondefs;
import earthbound.globals;
import earthbound.hardware;
import earthbound.bank01;
import earthbound.bank02;
import earthbound.bank03;
import earthbound.bank04;
import earthbound.bank05;
import earthbound.bank07;
import earthbound.bank0F;
import earthbound.bank10;
import earthbound.bank17;
import earthbound.bank1C;
import earthbound.bank20;
import earthbound.bank21;
import earthbound.bank2F;
import core.stdc.string;
import core.bitop;

/// $C00000
short* ClearEntityDrawSortingTable() {
    EntityDrawSorting[] = 0;
    return EntityDrawSorting.ptr;
}

/// $C00013
void OverworldSetupVRAM() {
    UnknownC08D79(9);
    SetBG1VRAMLocation(BGTileMapSize.horizontal, 0x3800, 0);
    SetBG2VRAMLocation(BGTileMapSize.horizontal, 0x5800, 0x2000);
    SetBG3VRAMLocation(BGTileMapSize.normal, 0x7C00, 0x6000);
    SetOAMSize(0x62);
}

/// $C0004B
void OverworldInitialize();

/// $C00085
void LoadTilesetAnim();

/// $C00172
void AnimateTileset();

/// $C0023F
void LoadPaletteAnim();

/// $C0030F
void AnimatePalette();

/// $C0035B
ushort UnknownC0035B(ushort a, ushort x, ushort y) {
	return Unknown7F8000[a * 32 + x * 2 + y * 8];
}

/// $C00391
void GetColorAverage(uint* ptr);

/// $C00434
ushort Func_C00434(ushort arg1, ushort arg2);

/// $C00480
void UnknownC00480();

/// $C005E7
void UnknownC005E7();

/// $C0062A
void LoadCollisionData(short tileset);

/// $C0067E
void Function14(size_t index1, size_t index2);

/// $C006F2
void UnknownC006F2(short);

/// $C00778
void LoadSpecialSpritePalette();

/// $C007B6
void LoadMapPalette(short, short);

/// $C008C3
void LoadMapAtSector(short x, short y) {
    if ((Unknown7E438A | Unknown7E438C) != 0) {
        x = Unknown7E438A / 32;
        y = Unknown7E438C / 16;
    }
    ubyte x1A = GlobalMapTilesetPaletteData[y][x];
    ubyte x18 = x1A & 7;
    ubyte x04 = x1A >> 3;
    Decomp(&MapDataTileArrangementPtrTable[TilesetTable[x04]][0], &Unknown7F8000[0]);
    LoadCollisionData(TilesetTable[x04]);
    UnknownC006F2(TilesetTable[x04]);
    UnknownC005E7();
    memcpy(&palettes[8][0], &SpriteGroupPalettes[0], 0x100);
    if (x04 != Unknown7E436E) {
        Unknown7E4372 = TilesetTable[x04];
        Decomp(&MapDataTilesetPtrTable[TilesetTable[x04]][0], &Unknown7F0000[0]);
        while (Unknown7E0028 != 0) {}
        if (Unknown7EB4EF == 0) {
            CopyToVram2(0, 0x7000, 0, &Unknown7F0000[0]);
        } else {
            CopyToVram2(0, 0x4000, 0, &Unknown7F0000[0]);
        }
    }
    while (Unknown7E0028 != 0) {}
    LoadMapPalette(x04, x18);
    UnknownC00480();
    LoadSpecialSpritePalette();
    if (Unknown7EB4EF == 0) {
        LoadOverlaySprites();
        LoadTilesetAnim();
        LoadPaletteAnim();
    }
    if (Unknown7EB4EF == 0) {
        if (Debug != 0) {
            UnknownEFD9F3();
        } else {
            UnknownC47F87();
        }
        UnknownC0856B(0);
    }
    memcpy(&Unknown7E4476[0], &palettes[2][0], 0x1C0);
    if (Unknown7E4676 != 0) {
        UnknownC496F9();
        memset(&palettes[0][0], 0xFF, 0x200);
    }
    if (Unknown7EB4EF != 0) {
        UnknownC496F9();
        memset(&palettes[1][0], 0, 0x1E0);
    }
    UnknownC0856B(0x18);
    Unknown7E436E = x04;
    Unknown7E4370 = x18;
}

/// $C00AA1
short LoadSectorAttributes(ushort arg1, ushort arg2) {
    CurrentSectorAttributes = MapDataPerSectorAttributesTable[((arg2 &0xFF80) >> 2) + (arg1 >> 8)];
    return CurrentSectorAttributes;
}

/// $C00AC5
void UnknownC00AC5(short x, short y);

/// $C00BDC
void UnknownC00BDC(short x, short y);

/// $C00CF3
void UnknownC00CF3(short x, short y);

/// $C00D7E
void UnknownC00D7E(short x, short y);

/// $C00E16
void UnknownC00E16(short x, short y);

/// $C00FCB
void UnknownC00FCB(short x, short y);

/// $C012ED
void ReloadMapAtPosition(short x, short y) {
    Unknown7E4380 = x;
    Unknown7E437C = x;
    Unknown7E4382 = y;
    Unknown7E437E = y;
    short x14 = x / 8;
    short x02 = y / 8;
    Unknown7E4370 = -1;
    Unknown7E436E = -1;
    LoadMapAtSector(x14 / 32, x02 / 16);
    for (short i = 0; i < 16; i++) {
        Unknown7E43C0[i] = -1;
        Unknown7E43B0[i] = -1;
        Unknown7E43A0[i] = -1;
        Unknown7E4390[i] = -1;
    }
    for (short i = 0; i < 60; i++) {
        UnknownC00AC5(cast(short)(x14 - 32), cast(short)(x02 - 32 + i));
    }
    for (short i = 0; i < 60; i++) {
        UnknownC00CF3(cast(short)(x14 - 32), cast(short)(x02 - 32 + i));
    }
    for (short i = -1; i != 31; i++) {
        UnknownC00E16(cast(short)(x14 - 16), cast(short)(x02 - 14 + i));
    }
    while (Unknown7E0028 != 0) {}
    BG2_X_POS = cast(short)(Unknown7E4380 - 0x80);
    BG1_X_POS = cast(short)(Unknown7E4380 - 0x80);
    BG2_Y_POS = cast(short)(Unknown7E4382 - 0x70);
    BG1_Y_POS = cast(short)(Unknown7E4382 - 0x70);
    Unknown7E4374 = cast(short)(x14 - 16);
    Unknown7E4376 = cast(short)(x02 - 14);
}

/// $C013F6
void LoadMapAtPosition(short x, short y) {
    UnknownC02194(x, y);
    Unknown7E4380 = x;
    Unknown7E437C = x;
    Unknown7E4382 = y;
    Unknown7E437E = y;
    short x02 = x / 8;
    short x12 = y / 8;
    LoadMapAtSector(x02 / 32, x12 / 16);
    if (Unknown7EB4EF == 0) {
        OverworldSetupVRAM();
    }
    for (short i = 0; i < 16; i++) {
        Unknown7E43C0[i] = -1;
        Unknown7E43B0[i] = -1;
        Unknown7E43A0[i] = -1;
        Unknown7E4390[i] = -1;
    }
    for (short i = 0; i < 60; i++) {
        UnknownC00AC5(cast(short)(x02 - 32), cast(short)(x12 - 32 + i));
    }
    for (short i = 0; i < 60; i++) {
        UnknownC00CF3(cast(short)(x02 - 32), cast(short)(x12 - 32 + i));
    }
    while (Unknown7E0028 != 0) {}
    if (Unknown7EB4EF == 0) {
        TM_MIRROR = 0x17;
    }
    if (Unknown7E4A58 != 0) {
        Unknown7E4A58 = 1;
    }
    BG2_X_POS = cast(short)(Unknown7E4380 - 0x80);
    BG1_X_POS = cast(short)(Unknown7E4380 - 0x80);
    BG2_Y_POS = cast(short)(Unknown7E4382 - 0x70);
    BG1_Y_POS = cast(short)(Unknown7E4382 - 0x70);
    for (short i = -1; i != 31; i++) {
        UnknownC00E16(cast(short)(x02 - 16), cast(short)(x12 - 14 + i));
        UnknownC0255C(cast(short)(x02 - 16), cast(short)(x12 - 14 + i));
    }
    for (short i = -8; i != 40; i++) {
        SpawnHorizontal(cast(short)(x02 - 16), cast(short)(x12 + i));
    }
    if (Unknown7E4A58 != 0) {
        Unknown7E4A58 = -1;
    }
    Unknown7E4374 = cast(short)(x02 - 16);
    Unknown7E4376 = cast(short)(x12 - 14);
}

/// $C01558
void RefreshMapAtPosition(short x, short y) {
    BG2_X_POS = x;
    BG1_X_POS = x;
    BG2_Y_POS = y;
    BG1_Y_POS = y;
    ushort x04 = cast(short)(((x & 0x8000) != 0) ? ((x / 8) | 0xE000) : (x / 8));
    ushort x02 = cast(short)(((y & 0x8000) != 0) ? ((y / 8) | 0xE000) : (y / 8));
    while ((Unknown7E4374 - x04) != 0) {
        if (((Unknown7E4374 - x04) < 0) != 0) {
            Unknown7E4374++;
            UnknownC00BDC(cast(short)(Unknown7E4374 + 41), cast(short)(x02 - 16));
            UnknownC00D7E(cast(short)(Unknown7E4374 + 41), cast(short)(x02 - 16));
            UnknownC00FCB(cast(short)(Unknown7E4374 + 32), x02);
            UnknownC025CF(cast(short)(Unknown7E4374 + 34), cast(short)(x02 - 1));
            SpawnVertical(cast(short)(Unknown7E4374 + 40), cast(short)(x02 - 8));
        } else {
            Unknown7E4374--;
            UnknownC00BDC(cast(short)(Unknown7E4374 - 16), cast(short)(x02 - 16));
            UnknownC00D7E(cast(short)(Unknown7E4374 - 16), cast(short)(x02 - 16));
            UnknownC00FCB(cast(short)(Unknown7E4374 - 1), x02);
            UnknownC025CF(cast(short)(Unknown7E4374 - 3), cast(short)(x02 - 1));
            SpawnVertical(cast(short)(Unknown7E4374 - 8), cast(short)(x02 - 8));
        }
    }
    while ((Unknown7E4376 - x02) != 0) {
        if (((Unknown7E4376 - 0x02) < 0) != 0) {
            Unknown7E4376++;
            UnknownC00AC5(cast(short)(x04 - 16), cast(short)(Unknown7E4376 + 41));
            UnknownC00CF3(cast(short)(x04 - 16), cast(short)(Unknown7E4376 + 41));
            UnknownC00E16(x04, cast(short)(Unknown7E4376 + 28));
            UnknownC0255C(x04, cast(short)(Unknown7E4376 + 29));
            SpawnHorizontal(cast(short)(x04 - 8), cast(short)(Unknown7E4376 + 36));
        } else {
            Unknown7E4376--;
            UnknownC00AC5(cast(short)(x04 - 16), cast(short)(Unknown7E4376 - 16));
            UnknownC00CF3(cast(short)(x04 - 16), cast(short)(Unknown7E4376 - 16));
            UnknownC00E16(x04, cast(short)(Unknown7E4376 - 1));
            UnknownC0255C(x04, cast(short)(Unknown7E4376 - 1));
            SpawnHorizontal(cast(short)(x04 - 8), cast(short)(Unknown7E4376 - 8));
        }
    }
    Unknown7E4386 = x;
    Unknown7E4388 = y;
}

/// $C018F3
void ReloadMap() {
    Unknown7E4370 = -1;
    Unknown7E436E = -1;
    Unknown7E4380 &= 0xFFF8;
    Unknown7E4382 &= 0xFFF8;
    UnknownC08726();
    Unknown7E5DD4 = -1;
    UnknownC068F4(gameState.leaderX.integer, gameState.leaderY.integer);
    UnknownC08D79(9);
    SetBG1VRAMLocation(BGTileMapSize.horizontal, 0x3800, 0);
    SetBG2VRAMLocation(BGTileMapSize.horizontal, 0x5800, 0x2000);
    SetBG3VRAMLocation(BGTileMapSize.normal, 0x7C00, 0x6000);
    SetOAMSize(0x62);
    ReloadMapAtPosition(gameState.leaderX.integer, gameState.leaderY.integer);
    if (gameState.walkingStyle == WalkingStyle.Bicycle) {
        ChangeMusic(Music.Bicycle);
    } else {
        UnknownC069AF();
    }
    TM_MIRROR = 0x17;
    if (Debug != 0) {
        UnknownEFD9F3();
    }
    UnknownC08744();
}

/// $C019B2
void InitializeMap(short x, short y, short direction) {
    UnknownC068F4(x, y);
    LoadMapAtPosition(x, y);
    UnknownC03FA9(x, y, direction);
    UnknownC069AF();
}

/// $C01A69
void InitializeMiscObjectData() {
    for (short i = 0; i < 0x1E; i++) {
        UNKNOWN_30X2_TABLE_35[i] = 0;
        EntityCollidedObjects[i] = 0xFFFF;
        EntityTPTEntries[i] = 0xFFFF;
    }
}

/// $C01A87
void UnknownC01A87();

/// $C01A9D
short FindFree7E4682(ushort);

/// $C01A86
void UnknownC01A86();

/// $C01C11
void AllocSpriteMem(short arg1, ubyte arg2) {
    for (short i = 0; i < 0x58; i++) {
        if (((Unknown7E4A00[i] & 0xFF) == (arg1 | 0x80)) || (arg1 == short.min)) {
            Unknown7E4A00[i] = arg2;
        }
    }
}

/// $C01C52
short UnknownC01C52(short, short, short);

/// $C01D38
void UnknownC01D38(short arg1, short arg2, short arg3, const(UnknownC42B0DEntry)* arg4) {
    // why???
    ubyte* x10 = cast(ubyte*)&SpriteTable7E467E.ptr[0] + arg1;
    const(UnknownC42B0DSubEntry)* x06 = &arg4.unknown2[0][0];
    for (short i = 0; i < 2; i++) {
        for (short j = 0; j < arg4.unknown0; j++) {
            x10[0] = x06.unknown0;
            x10++;
            x10[0] = cast(ubyte)UnknownC4303C[arg2 + j];
            x10++;
            x10[0] = cast(ubyte)((x06.unknown2 & 0xFE) | ((UnknownC4303C[arg2 + j] >> 8) & 0xFF) | arg3);
            x10++;
            x10[0] = x06.unknown3;
            x10++;
            x10[0] = x06.unknown4;
            x10++;
            x06++;
        }
    }
}

/// $C01DED
short UnknownC01DED(short);

/// $C01E49
short CreateEntity(short sprite, short actionScript, short index, short x, short y) {
    short result;
    if (Debug != 0) {
        if (sprite == -1) {
            return 0;
        }
    }
    short x02 = UnknownC01DED(sprite);
    short x21 = UnknownC01C52(Unknown7E467A, Unknown7E467C, index);
    while (x21 <= 0) {}
    short x1F = FindFree7E4682(UnknownC42B0D[x02].unknown0 * 10);
    while (x1F <= 0) {}
    NewEntityPriority = 1;
    UnknownC01D38(x1F, x21, SpriteGroupingPointers[sprite].unknown3, &UnknownC42B0D[x02]);
    if (index != -1) {
        EntityAllocationMinSlot = index;
        EntityAllocationMaxSlot = cast(short)(index + 1);
        result = InitEntity(actionScript, x, y);
    } else {
        EntityAllocationMinSlot = 0;
        EntityAllocationMaxSlot = 0x16;
        result = InitEntity(actionScript, x, y);
        AllocSpriteMem(-1, cast(ubyte)(result | 0x80));
    }
    EntitySpriteMapPointers[result] = &SpriteTable7E467E[x1F];
    EntityUnknown2916[result] = UnknownC42B0D[x02].unknown0 * 5;
    EntityUnknown2952[result] = x21;
    EntityVramAddresses[result] = cast(ushort)(UnknownC42F8C[x21] + 0x4000);
    EntityByteWidths[result] = SpriteGroupingPointers[sprite].width;
    EntityTileHeights[result] = SpriteGroupingPointers[sprite].height;
    UNKNOWN_30X2_TABLE_31[result] = SpriteGroupingPointers[sprite].spriteBank;
    EntityTPTEntrySprites[result] = sprite;
    //EntityGraphicsPointerHigh[result] = &SpriteGroupingPointers[sprite];
    //EntityGraphicsPointerLow[result] = &SpriteGroupingPointers[sprite];
    EntityGraphicsPointers[result] = &SpriteGroupingPointers[sprite];
    if ((Unknown7E467C & 1) != 0) {
        EntityVramAddresses[result] += 0x100;
    }
    UNKNOWN_30X2_TABLE_36[result] = SpriteGroupingPointers[sprite + 1].height;
    Unknown7E3366[result] = SpriteGroupingPointers[sprite].unknown4;
    Unknown7E33A2[result] = SpriteGroupingPointers[sprite].unknown5;
    Unknown7E33DE[result] = SpriteGroupingPointers[sprite].unknown6;
    Unknown7E1A4A[result] = SpriteGroupingPointers[sprite].unknown7;
    Unknown7E332A[result] = UnknownC42AEB[SpriteGroupingPointers[sprite + 1].width];
    UNKNOWN_30X2_TABLE_38[result] = cast(ushort)((UnknownC42B0D[x02].unknown1 <<8) | (UnknownC42B0D[x02].unknown0 - UnknownC42B0D[x02].unknown1));
    UNKNOWN_30X2_TABLE_43[result] = 0xFFFF;
    EntityEnemyIDs[result] = -1;
    EntityTPTEntries[result] = 0xFFFF;
    EntityCollidedObjects[result] = 0xFFFF;
    EntitySurfaceFlags[result] = 0;
    UNKNOWN_30X2_TABLE_45[result] = 0;
    UNKNOWN_30X2_TABLE_44[result] = 0;
    UNKNOWN_30X2_TABLE_41[result] = 0;
    UNKNOWN_30X2_TABLE_35[result] = 0;
    EntityDirections[result] = 0;
    EntityObstacleFlags[result] = 0;
    return result;
}

/// $C02140
void UnknownC02140(short);

/// $C02194
void UnknownC02194(short, short);

/// $C021E6
void UnknownC021E6();

/// $C0255C
void UnknownC0255C(short x, short y);

/// $C025CF
void UnknownC025CF(short x, short y);

/// $C0263D
short UnknownC0263D(short x, short y) {
    if ((x >= 128) && (y >= 160)) {
        return 0;
    }
    return MapEnemyPlacement[y][x];
}

/// $C02668
short UnknownC02668(short, short, short);

/// $C02A6B
void SpawnHorizontal(short x, short y) {
    if (getEventFlag(EventFlag.UNKNOWN_00B) != 0) {
        return;
    }
    if (getEventFlag(EventFlag.USE_POSTGAME_MUSIC) != 0) {
        return;
    }
    if (Unknown7E4A5A == 0) {
        return;
    }
    if ((y & 7) != 0) {
        return;
    }
    if (((y < -16) ? 0 : y) >= 0x500) {
        return;
    }
    short x14 = x / 8;
    short x12 = ((y < -16) ? 0 : y) / 8;
    for (short i = x14; x14 + 5 > i; i++) {
        short x10 = i;
        Unknown7E4A62 = 8;
        Unknown7E4A64 = 8;
        short x02 = 1;
        Unknown9:
        short x16 = UnknownC0263D(i, x12);
        short tmp = UnknownC0263D(cast(short)(i + 1), x12);
        if ((x16 != 0) && (tmp == x16)) {
            Unknown7E4A62 += 8;
            i++;
            if (++x02 != 6) {
                goto Unknown9;
            }
        }
        while (x02-- != 0) {
            UnknownC02668(x10, x12, x16);
        }
    }
}

/// $C02B55
void SpawnVertical(short x, short y) {
    if (getEventFlag(EventFlag.UNKNOWN_00B) != 0) {
        return;
    }
    if (getEventFlag(EventFlag.USE_POSTGAME_MUSIC) != 0) {
        return;
    }
    if (Unknown7E4A5A == 0) {
        return;
    }
    if ((x & 7) != 0) {
        return;
    }
    if (((x < -16) ? 0 : x) >= 0x400) {
        return;
    }
    short x14 = ((x < -16) ? 0 : x) / 8;
    short x12 = y / 8;
    for (short i = x12; x12 + 5 > i; i++) {
        short x10 = i;
        Unknown7E4A62 = 8;
        Unknown7E4A64 = 8;
        short x02 = 1;
        Unknown9:
        short x18 = UnknownC0263D(x14, i);
        short tmp = UnknownC0263D(x14, cast(short)(i + 1));
        if ((x18 != 0) && (tmp == x18)) {
            Unknown7E4A64 += 8;
            i++;
            if (++x02 != 6) {
                goto Unknown9;
            }
        }
        while (x02-- != 0) {
            UnknownC02668(x14, x10, x18);
        }
    }
}

/// $C02D29
void UnknownC02D29() {
    UNKNOWN_30X2_TABLE_36[23] = 1;
    Unknown7E9F6B = -1;
    gameState.unknown88 = 0;
    gameState.unknownB0 = 0;
    gameState.unknownB2 = 0;
    gameState.unknownB4 = 0;
    gameState.partyStatus = 0;
    gameState.currentPartyMembers = 0x18;
    for (short i = 0; i < 6; i++) {
        gameState.unknown96[i] = 0;
        Unknown7E5D8C[i] = 0;
    }
    gameState.playerControlledPartyMemberCount = 0;
    gameState.partyCount = 0;
    VelocityStore();
    PajamaFlag = getEventFlag(NessPajamaFlag);
}

/// $C02D8F
uint AdjustPositionHorizontal(short arg1, uint arg2, short arg3) {
    switch (arg3 & SurfaceFlags.DeepWater) {
        case SurfaceFlags.ShallowWater:
            return (((horizontalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined / 256) * ShallowWaterSpeed.combined) / 256) + arg2;
        case SurfaceFlags.DeepWater:
            return (((horizontalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined / 256) * DeepWaterSpeed.combined) / 256) + arg2;
        default:
            if (Unknown7E0081 != 0) {
                return horizontalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined + arg2;
            } else if ((gameState.partyStatus == 3) && (gameState.walkingStyle == 0)) {
                return (((horizontalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined / 256) * SkipSandwichSpeed.combined) / 256) + arg2;
            }
            return horizontalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined + arg2;
    }
}

/// $C03017
uint AdjustPositionVertical(short arg1, uint arg2, short arg3) {
    switch (arg3 & SurfaceFlags.DeepWater) {
        case SurfaceFlags.ShallowWater:
            return (((verticalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined / 256) * ShallowWaterSpeed.combined) / 256) + arg2;
        case SurfaceFlags.DeepWater:
            return (((verticalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined / 256) * DeepWaterSpeed.combined) / 256) + arg2;
        default:
            if (Unknown7E0081 != 0) {
                return verticalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined + arg2;
            } else if ((gameState.partyStatus == 3) && (gameState.walkingStyle == 0)) {
                return (((verticalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined / 256) * SkipSandwichSpeed.combined) / 256) + arg2;
            }
            return verticalMovementSpeeds[gameState.walkingStyle].directionSpeeds[arg1].combined + arg2;
    }
}

/// $C032EC
void UnknownC032EC();

/// $C034D6
void UpdateParty();

/// $C0369B
short UnknownC0369B(short id) {
    short x18 = 0;
    if (id >= 5) {
        while(true) {
            if (gameState.unknown96[x18] == 0) {
                break;
            }
            if (gameState.unknown96[x18] <= id) {
                break;
            }
            x18++;
        }
    } else {
        while (true) {
            if (gameState.unknown96[x18] == 0) {
                break;
            }
            if (5 <=gameState.unknown96[x18]) {
                break;
            }
            if (gameState.unknown96[x18] > id) {
                break;
            }
            if (PartyCharacters[EntityScriptVar1Table[x18]].afflictions[0] == 1) {
                break;
            }
            x18++;
        }
    }
    if (gameState.unknown96[x18] != 0) {
        for (short i = 5; i != x18 - 1; i--) {
            gameState.unknown96[i] = gameState.unknown96[i - 1];
            gameState.unknownA2[i] = gameState.unknownA2[i - 1];
            gameState.playerControlledPartyMembers[i] = gameState.playerControlledPartyMembers[i - 1];
        }
    }
    gameState.unknown96[x18] = cast(ubyte)id;
    gameState.partyCount++;
    NewEntityVar0 = cast(short)(id - 1);
    short x1A_2 = CharacterInitialEntityData[id - 1].unknown6;
    if (EntityScriptTable[x1A_2] != -1) {
        x1A_2++;
    }
    gameState.unknownA2[x18] = cast(ubyte)x1A_2;
    NewEntityVar1 = cast(short)(x1A_2 - 0x18);
    gameState.playerControlledPartyMembers[x18] = cast(ubyte)NewEntityVar1;
    if (gameState.partyCount == 1) {
        PartyCharacters[NewEntityVar1].position_index = gameState.unknown88;
    } else {
        short x16 = (x18 == 0) ? gameState.unknown88 : PartyCharacters[EntityScriptVar1Table[gameState.unknownA2[x18 - 1]]].position_index;
        PartyCharacters[NewEntityVar1].position_index = x16;
    }
    short x = (PartyCharacters[NewEntityVar1].position_index != 0) ? cast(short)(PartyCharacters[NewEntityVar1].position_index - 1) : 0xFF;
    short x18_2 = (gameState.unknown92 != 3) ? CharacterInitialEntityData[id - 1].overworldSprite : CharacterInitialEntityData[id - 1].lostUnderworldSprite;
    CreateEntity(x18_2, CharacterInitialEntityData[id - 1].actionScript, x1A_2, PlayerPositionBuffer[x].x_coord, PlayerPositionBuffer[x].y_coord);
    EntityScreenXTable[x1A_2] = cast(short)(PlayerPositionBuffer[x].x_coord - BG1_X_POS);
    EntityScreenYTable[x1A_2] = cast(short)(PlayerPositionBuffer[x].y_coord - BG1_Y_POS);
    gameState.currentPartyMembers = CharacterInitialEntityData[gameState.unknown96[0] - 1].unknown6;
    UnknownC09CD7();
    UnknownC032EC();
    gameState.currentPartyMembers = gameState.unknownA2[0];
    UpdateParty();
    EntityPreparedXCoordinate = PlayerPositionBuffer[x].x_coord;
    EntityPreparedYCoordinate = PlayerPositionBuffer[x].y_coord;
    EntityPreparedDirection = EntityDirections[x1A_2];
    return x1A_2;
}

/// $C03903
void UnknownC03903(short id) {
    short i;
    for (i = 0; (gameState.unknown96[i] != id) && (i != 6); i++) {}
    if (i == 6) {
        return;
    }
    short j;
    for (j = i; j < 5; j++) {
        gameState.unknown96[j] = gameState.unknown96[j + 1];
        gameState.unknownA2[j] = gameState.unknownA2[j + 1];
        gameState.playerControlledPartyMembers[j] = gameState.playerControlledPartyMembers[j + 1];
    }
    if (i == 0) {
        PartyCharacters[gameState.playerControlledPartyMembers[0]].position_index = EntityScriptVar1Table[gameState.unknownA2[i]];
    }
    gameState.unknown96[j] = 0;
    gameState.partyCount--;
    EntityAbsXTable[gameState.unknownA2[i]] = EntityPreparedXCoordinate;
    EntityAbsYTable[gameState.unknownA2[i]] = EntityPreparedYCoordinate;
    EntityDirections[gameState.unknownA2[i]] = EntityPreparedDirection;
    UnknownC02140(gameState.unknownA2[i]);
    UnknownC032EC();
    UpdateParty();
}

/// $C039E5
void UnknownC039E5();

/// $C03A24
void UnknownC03A24() {
    gameState.playerControlledPartyMemberCount = 0;
    gameState.partyCount = 0;
    for (short i = 0; i < 6; i++) {
        gameState.unknown96[i] = 0;
        gameState.playerControlledPartyMembers[i] = 0;
        gameState.unknownA2[i] = 0;
    }
    Unknown7E5D7E = 1;
    for (short i = 0; i < 6; i++) {
        if (gameState.partyMembers[i] == 0) {
            break;
        }
        UnknownC0369B(i);
    }
    Unknown7E5D7E = 0;
    FootstepSoundID = gameState.unknown92;
    FootstepSoundIDOverride = 0;
}

/// $C03A94
void UnknownC03A94(short);

/// $C03C25
void UnknownC03C25() {
    Unknown7E5DDA = 1;
    UnknownC068F4(gameState.leaderX.integer, gameState.leaderY.integer);
    if (Unknown7E5DD6 != Unknown7E5DD4) {
        WaitUntilNextFrame();
        UnknownC069AF();
    }
    Unknown7E5DDA = 0;
}

/// $C03CFD
void UnknownC03CFD() {
    if (gameState.walkingStyle != WalkingStyle.Bicycle) {
        return;
    }
    SetBoundaryBehaviour(1);
    if ((BattleDebug == 0) && (Unknown7E5D9A == 0)) {
        UnknownC06A07();
    }
    UnknownC02140(0x18);
    gameState.unknown92 = 0;
    gameState.walkingStyle = 0;
    PartyCharacters[0].position_index = 0;
    gameState.unknown88 = 0;
    if (Unknown7E5D9A == 0) {
        OAMClear();
        UnknownC09466();
        UpdateScreen();
        WaitUntilNextFrame();
    }
    NewEntityVar0 = 0;
    NewEntityVar1 = 0;
    CreateEntity(OverworldSprite.Ness, ActionScript.Unknown002, 0x18, EntityAbsXTable[24], EntityAbsYTable[24]);
    EntityAnimationFrames[24] = 0;
    EntityDirections[24] = gameState.leaderDirection;
    EntityScriptVar7Table[24] |= 0x9000;
    if (Unknown7E5D9A != 0) {
        EntityTickCallbackFlags[24] |= 0xC000;
    }
    WaitUntilNextFrame();
    WaitUntilNextFrame();
    UnknownC0A780(0x18);
    Unknown7E5DBA = 0;
    Unknown7E5D74 = 2;
}

/// $C03E5A
short UnknownC03E5A(short arg1) {
    short x;
    for (x = 0; gameState.unknown96[x] != arg1 + 1; x++) {}
    if (x == 0) {
        return -1;
    }
    return ChosenFourPtrs[EntityScriptVar1Table[gameState.unknownA2[x - 1]]].position_index;
}

/// $C03E9D
short UnknownC03E9D(short arg1) {
    short x0E = UnknownC03E5A(arg1);
    if (x0E < Unknown7E4DC6.position_index) {
        x0E += 0x100;
    }
    return cast(short)(x0E - Unknown7E4DC6.position_index);
}

/// $C03EC3
short UnknownC03EC3(short arg1, short arg2, short arg3, short arg4) {
    short tmp = UnknownC03E9D(arg1);
    if (tmp == arg2) {
        arg3++;
        EntityScriptVar7Table[CurrentEntitySlot] &= 0xEFFF;
    } else if (tmp > arg2) {
        arg3 += arg3;
        EntityScriptVar7Table[CurrentEntitySlot] |= 0x1000;
    }
    return arg3;
}

/// $C03F1E
void UnknownC03F1E();

/// $C03FA9
void UnknownC03FA9(short x, short y, short direction) {
    gameState.leaderX.integer = x;
    gameState.leaderY.integer = y;
    gameState.leaderDirection = direction;
    gameState.troddenTileType = UnknownC05F33(x, y, gameState.currentPartyMembers);
    UnknownC03A94(direction);
    UnknownC03F1E();
    for (short i = 0; i < 6; i++) {
        Unknown7E3456[i + 24] = -1;
    }
    Unknown7E9F6B = -1;
    Unknown7E438C = 0;
    Unknown7E438A = 0;
    PajamaFlag = getEventFlag(NessPajamaFlag);
    UnknownC07B52();
}

/// $C0400E
void CenterScreen(short x, short y) {
    RefreshMapAtPosition(cast(short)(x - 0x80), cast(short)(y - 0x70));
}

/// $C0404F
short MapInputToDirection(short style) {
    short result = -1;
    if (Unknown7E5D9A != 0) {
        return -1;
    }
    style = AllowedInputDirections[style];
    switch (pad_state[0] & (PAD_UP | PAD_DOWN | PAD_LEFT | PAD_RIGHT)) {
        case PAD_UP:
            if ((style & DirectionMask.Up) != 0) {
                result = Direction.Up;
            }
            break;
        case (PAD_UP | PAD_RIGHT):
            if ((style & DirectionMask.UpRight) != 0) {
                result = Direction.UpRight;
            }
            break;
        case PAD_RIGHT:
            if ((style & DirectionMask.Right) != 0) {
                result = Direction.Right;
            }
            break;
        case (PAD_DOWN | PAD_RIGHT):
            if ((style & DirectionMask.DownRight) != 0) {
                result = Direction.DownRight;
            }
            break;
        case PAD_DOWN:
            if ((style & DirectionMask.Down) != 0) {
                result = Direction.Down;
            }
            break;
        case (PAD_DOWN | PAD_LEFT):
            if ((style & DirectionMask.DownLeft) != 0) {
                result = Direction.DownLeft;
            }
            break;
        case PAD_LEFT:
            if ((style & DirectionMask.Left) != 0) {
                result = Direction.Left;
            }
            break;
        case (PAD_UP | PAD_LEFT):
            if ((style & DirectionMask.UpLeft) != 0) {
                result = Direction.UpLeft;
            }
            break;
        default: break;
    }
    return result;
}

/// $C04116
short UnknownC04116(short direction) {
    short x14 = cast(short)(UnknownC3E148[direction] + gameState.leaderX.integer);
    short x04 = cast(short)(UnknownC3E158[direction] + gameState.leaderY.integer);
    short x12 = Unknown7E5D58;
    Unknown7E5D58 = 1;
    while (true) {
        short x10 = NPCCollisionCheck(x14, x04, gameState.currentPartyMembers);
        if (x10 > 0) {
            CurrentTPTEntry = EntityTPTEntries[x10];
            Unknown7E5D64 = x10;
            break;
        }
        if ((UnknownC05CD7(x14, x04, gameState.currentPartyMembers, direction) & 0x82) != 0x82) {
            break;
        }
        if (UnknownC3E148[direction] != 0) {
            x14 += ((UnknownC3E148[direction] & 0x8000) != 0) ? -8 : 8;
        }
        if (UnknownC3E158[direction] != 0) {
            x04 += ((UnknownC3E158[direction] & 0x8000) != 0) ? -8 : 8;
        }
    }
    Unknown7E5D58 = x12;
    if ((CurrentTPTEntry == -1) || (CurrentTPTEntry == 0)) {
        UnknownC4334A(direction);
    }
    return CurrentTPTEntry;
}

/// $C041E3
short UnknownC041E3() {
    short x10 = cast(short)(gameState.leaderDirection & 0xFFFE);
    short a = UnknownC04116(cast(short)(gameState.leaderDirection & 0xFFFE));
    if ((a != -1) && (a != 0)) {
        return cast(short)(gameState.leaderDirection & 0xFFFE);
    }
    gameState.leaderDirection = (((gameState.leaderDirection & 0xFFFE) + 2) & 7);
    a = UnknownC04116(gameState.leaderDirection);
    if ((a != -1) && (a != 0)) {
        return gameState.leaderDirection;
    }
    gameState.leaderDirection = ((gameState.leaderDirection + 4) & 7);
    a = UnknownC04116(gameState.leaderDirection);
    if ((a != -1) && (a != 0)) {
        return gameState.leaderDirection;
    }
    gameState.leaderDirection = ((gameState.leaderDirection - 2) & 7);
    a = UnknownC04116(gameState.leaderDirection);
    if ((a != -1) && (a != 0)) {
        return gameState.leaderDirection;
    }
    gameState.leaderDirection = x10;
    return -1;
}

/// $C04279
ushort FindNearbyCheckableTPTEntry() {
    CurrentTPTEntry = -1;
    Unknown7E5D64 = -1;
    short x10 = UnknownC041E3();
    if ((x10 != -1) && (EntityDirections[gameState.currentPartyMembers] != x10)) {
        gameState.leaderDirection = x10;
        EntityDirections[gameState.currentPartyMembers] = x10;
        UnknownC0A780(gameState.currentPartyMembers);
    }
    return CurrentTPTEntry;
}

/// $C042EF
short UnknownC042EF(short direction) {
    short x14 = cast(short)(UnknownC3E148[direction] + gameState.leaderX.integer);
    short x04 = cast(short)(UnknownC3E158[direction] + gameState.leaderY.integer);
    short x12 = Unknown7E5D58;
    Unknown7E5D58 = 1;
    while (true) {
        short x10 = NPCCollisionCheck(x14, x04, gameState.currentPartyMembers);
        if (x10 > 0) {
            CurrentTPTEntry = EntityTPTEntries[x10];
            Unknown7E5D64 = x10;
            break;
        }
        if ((UnknownC05CD7(x14, x04, gameState.currentPartyMembers, direction) & 0x82) != 0x82) {
            break;
        }
        if (UnknownC3E148[direction] != 0) {
            x14 += ((UnknownC3E148[direction] & 0x8000) != 0) ? -8 : 8;
        }
        if (UnknownC3E158[direction] != 0) {
            x04 += ((UnknownC3E158[direction] & 0x8000) != 0) ? -8 : 8;
        }
    }
    Unknown7E5D58 = x12;
    if ((CurrentTPTEntry == 0) || (CurrentTPTEntry == -1)) {
        UnknownC065C2(direction);
    }
    return CurrentTPTEntry;
}

/// $C043BC
short UnknownC043BC() {
    short x10 = cast(short)(gameState.leaderDirection & 0xFFFE);
    short a = UnknownC042EF(cast(short)(gameState.leaderDirection & 0xFFFE));
    if ((a != -1) && (a != 0)) {
        return cast(short)(gameState.leaderDirection & 0xFFFE);
    }
    gameState.leaderDirection = (((gameState.leaderDirection & 0xFFFE) + 2) & 7);
    a = UnknownC042EF(gameState.leaderDirection);
    if ((a != -1) && (a != 0)) {
        return gameState.leaderDirection;
    }
    gameState.leaderDirection = ((gameState.leaderDirection + 4) & 7);
    a = UnknownC042EF(gameState.leaderDirection);
    if ((a != -1) && (a != 0)) {
        return gameState.leaderDirection;
    }
    gameState.leaderDirection = ((gameState.leaderDirection - 2) & 7);
    a = UnknownC042EF(gameState.leaderDirection);
    if ((a != -1) && (a != 0)) {
        return gameState.leaderDirection;
    }
    gameState.leaderDirection = x10;
    return -1;
}

/// $C04452
ushort FindNearbyTalkableTPTEntry() {
    CurrentTPTEntry = -1;
    Unknown7E5D64 = -1;
    short x10 = UnknownC043BC();
    if ((x10 != -1) && (EntityDirections[gameState.currentPartyMembers] != x10)) {
        gameState.leaderDirection = x10;
        EntityDirections[gameState.currentPartyMembers] = x10;
        UnknownC0A780(gameState.currentPartyMembers);
    }
    return CurrentTPTEntry;
}

/// $C04C45
void UnknownC04C45();

/// $C04D78
void UnknownC04D78();

/// $C04F47
void UnknownC04F47() {
    CurrentTextPalette[0] = Unknown7E5D72;
    TM_MIRROR = 0x17;
    UnknownC0856B(8);
}

/// $C04F60
void UnknownC04F60() {
    if (BattleSwirlCountdown != 0) {
        return;
    }
    if (BattleSwirlFlag != 0) {
        return;
    }
    Unknown7E5D72 = CurrentTextPalette[0];
    CurrentTextPalette[0] = 0x1F;
    TM_MIRROR = 0;
    UnknownC0856B(8);
    UnknownC0DBE6(1, &UnknownC04F47);
}

/// $C04F9F
void UnknownC04F9F(short arg1) {
    short x10 = arg1;
    PartyCharacter* x0E = ChosenFourPtrs[gameState.playerControlledPartyMembers[x10]];
    if ((x0E.maxHP * 20) / 100 <= x0E.hp.current.integer) {
        if (Unknown7E5D8C[x10] == 0) {
            ShowHPAlert(cast(short)(x0E.unknown53 + 1));
        }
        Unknown7E5D8C[x10] = 1;
    } else {
        Unknown7E5D8C[x10] = 0;
    }
}

/// $C04FFE
ushort UnknownC04FFE() {
    ushort result = 0;
    ushort x02;
    ushort x04;
    ushort x16;
    if (gameState.unknownB0 == 2) {
        return 1;
    }
    if (OverworldStatusSuppression != 0) {
        return 1;
    }
    for(x02 = 0; (gameState.unknown96[x02] != 0) && (gameState.unknown96[x02] <= 4); x02++) {
        Unknown7E4DC6 = ChosenFourPtrs[gameState.playerControlledPartyMembers[x02]];
        const affliction = Unknown7E4DC6.afflictions[0];
        if ((affliction == 1) || (affliction == 2)) {
            continue;
        }
        if (affliction == 5) {
            if (Unknown7E5D66[x02] == 0) {
                Unknown7E5D66[x02] = 0x78;
            } else if (!--Unknown7E5D66[x02]) {
                x04++;
                Unknown7E4DC6.hp.current.integer -= 10;
                Unknown7E4DC6.hp.target -= 10;
                UnknownC04F9F(x02);
            }
        } else if (((affliction < 4) && ((gameState.troddenTileType & 0xC) == 0xC)) || ((affliction >= 4) && (affliction <= 7))) {
            if (Unknown7E5D66[x02] == 0) {
                if (affliction == 4) {
                    Unknown7E5D66[x02] = 0x78;
                } else {
                    Unknown7E5D66[x02] = 0xF0;
                }
            } else if (!--Unknown7E5D66[x02]) {
                x04++;
                if (affliction == 4) {
                    Unknown7E4DC6.hp.current.integer -= 10;
                    Unknown7E4DC6.hp.target -= 10;
                } else {
                    Unknown7E4DC6.hp.current.integer -= 2;
                    Unknown7E4DC6.hp.target -= 2;
                }
                UnknownC04F9F(x02);
            }
        }
        if (Unknown7E4DC6.hp.current.integer <= 0) {
            if (affliction != 1) {
                for (short i = 0; i < 6; i++) {
                    Unknown7E4DC6.afflictions[i] = 0;
                }
                Unknown7E4DC6.afflictions[0] = 1;
                Unknown7E4DC6.hp.target = 0;
                Unknown7E4DC6.hp.current.integer = 0;
                EntityScriptVar3Table[Unknown7E4DC6.unknown59] = 0x10;
                x16++;
            }
        } else {
            if (affliction != 2) {
                result += Unknown7E4DC6.hp.current.integer;
            }
        }
    }
    if (x04 != 0) {
        UnknownC04F60();
    }
    if (x16 != 0) {
        Unknown7E4DC4 = 0;
        UpdateParty();
        UnknownC07B52();
        UnknownC09451();
    }
    return result;
}

/// $C05200
void UnknownC05200() {
    if (BattleDebug != 0) {
        return;
    }
    if ((Unknown7E9F6F == 0) && (Unknown7E9F6B != -1)) {
        UnknownC07716();
    } else if (Unknown7E9F6B != -1) {
        UnknownC0777A();
    }
    if (Unknown7E4472 != 0) {
        AnimateTileset();
    }
    if (Unknown7E4474 != 0) {
        AnimateTileset();
    }
    if (Unknown7E9F2A != 0) {
        ProcessItemTransformations();
    }
    UnknownC04C45();
    const x = gameState.leaderX.integer >> 8;
    const y = gameState.leaderY.integer >> 8;
    if (((x^Unknown7E5D5C) != 0) && ((y^Unknown7E5D5E) != 0)) {
        Unknown7E5D5C = x;
        Unknown7E5D5E = y;
        if (SectorBoundaryBehaviourFlag) {
            UnknownC03C25();
        }
    }
    if ((DadPhoneTimer == 0) && (gameState.unknownB0 != 2)) {
        LoadDadPhone();
    }
    Unknown7E9F6F = 0;
    Unknown7E5D76 = gameState.leaderDirection;
    Unknown7E5D78 = cast(short)(gameState.currentPartyMembers * 2);
    if (gameState.unknown90) {
        Unknown7E0A34 = 1;
    }
}

/// $C052AA
short InitBattleCommon() {
    FadeOutWithMosaic(1, 1, 0);
    short result = BattleRoutine();
    UpdateParty();
    Unknown7E4DC4 = 1;
    BattleDebug = 0;
    return result;
}

/// $C052D4
void UnknownC052D4(short arg1) {
    short x26 = 0xFF;
    gameState.unknown88 = 0xFF;
    short x24 = gameState.leaderX.integer;
    short x22 = gameState.leaderY.integer;
    short x20 = gameState.troddenTileType;
    short x1E = gameState.walkingStyle;
    FixedPoint1616 x12 = { combined: AdjustPositionHorizontal((arg1 + 4) & 7, gameState.leaderX.combined, gameState.troddenTileType) - gameState.leaderX.combined };
    FixedPoint1616 x16 = { combined: AdjustPositionVertical((arg1 + 4) & 7, gameState.leaderY.combined, gameState.troddenTileType) - gameState.leaderY.combined };
    short x1C = 0x100;
    while(x1C != 0) {
        x1C--;
        PlayerPositionBuffer[x1C].x_coord = x24;
        PlayerPositionBuffer[x1C].y_coord = x22;
        PlayerPositionBuffer[x1C].tile_flags = x20;
        PlayerPositionBuffer[x1C].walking_style = x1E;
        PlayerPositionBuffer[x1C].direction = arg1;
        PlayerPositionBuffer[x1C].unknown10 = 0;
        x24 += x12.integer;
        x22 += x16.integer;
    }
    for (short i = 0; i < gameState.partyCount; i++) {
        PartyCharacters[gameState.playerControlledPartyMembers[i]].position_index = x26;
        PartyCharacters[gameState.playerControlledPartyMembers[i]].unknown65 = 0xFFFF;
        PartyCharacters[gameState.playerControlledPartyMembers[i]].unknown55 = 0xFFFF;
        EntityAbsXTable[gameState.unknownA2[i]] = PlayerPositionBuffer[x26].x_coord;
        EntityAbsYTable[gameState.unknownA2[i]] = PlayerPositionBuffer[x26].y_coord;
        EntityDirections[gameState.unknownA2[i]] = PlayerPositionBuffer[x26].direction;
        EntitySurfaceFlags[gameState.unknownA2[i]] = PlayerPositionBuffer[x26].tile_flags;
        x26 -= 16;
    }
}

/// $C05503
void UnknownC05503(short arg1, short arg2) {
    ushort x10 = cast(ushort)(Unknown7EE000[(Unknown7E5DAE / 8) & 0x3F][(arg1 / 8) & 0x3F] | Unknown7E5DA4);
    short x14 = (arg1 + 7) / 8;
    for (short i = 0; i < UnknownC42AA7[arg2]; i++) {
        x10 |= Unknown7EE000[Unknown7E5DAE / 8][x14 & 0x3F];
        x14++;
    }
    Unknown7E5DA4 = x10;
}

/// $C0559C
void UnknownC0559C(short, short);

/// $C05639
void UnknownC05639(short, short);

/// $C056D0
void UnknownC056D0(short, short);

/// $C05CD7
short UnknownC05CD7(short arg1, short arg2, short arg3, short arg4) {
    Unknown7E5DA4 = 0;
    Unknown7E5DAC = cast(short)(arg1 - UnknownC42A1F[UNKNOWN_30X2_TABLE_36[arg3]]);
    Unknown7E5DAE = cast(short)(arg2 - UnknownC42A41[UNKNOWN_30X2_TABLE_36[arg3]] + UnknownC42AEB[UNKNOWN_30X2_TABLE_36[arg3]]);
    switch(arg4) {
        case 1:
            UnknownC056D0(Unknown7E5DAE, UNKNOWN_30X2_TABLE_36[arg3]);
            goto case;
        case 0:
            UnknownC05503(Unknown7E5DAC, UNKNOWN_30X2_TABLE_36[arg3]);
            break;
        case 3:
            UnknownC0559C(Unknown7E5DAC, UNKNOWN_30X2_TABLE_36[arg3]);
            goto case;
        case 2:
            UnknownC056D0(Unknown7E5DAE, UNKNOWN_30X2_TABLE_36[arg3]);
            break;
        case 5:
            UnknownC05639(Unknown7E5DAE, UNKNOWN_30X2_TABLE_36[arg3]);
            goto case;
        case 4:
            UnknownC0559C(Unknown7E5DAC, UNKNOWN_30X2_TABLE_36[arg3]);
            break;
        case 7:
            UnknownC05503(Unknown7E5DAC, UNKNOWN_30X2_TABLE_36[arg3]);
            goto case;
        case 6:
            UnknownC05639(Unknown7E5DAE, UNKNOWN_30X2_TABLE_36[arg3]);
            break;
        default: break;
    }
    return Unknown7E5DA4;
}

/// $C05F33
short UnknownC05F33(short x, short y, short entityID) {
    const size = UNKNOWN_30X2_TABLE_36[entityID];
    Unknown7E5DA4 = 0;
    Unknown7E5DAC = cast(short)(x - UnknownC42A1F[size]);
    Unknown7E5DAE = cast(short)(y - UnknownC42A41[size] + UnknownC42AEB[size]);
    UnknownC05639(Unknown7E5DAE, size);
    UnknownC056D0(Unknown7E5DAE, size);
    return Unknown7E5DA4;
}

/// $C05FF6
short NPCCollisionCheck(short x, short y, short arg3) {
    short result = -1;
    if ((Unknown7E332A[arg3] != 0) && ((MiscDebugFlags & 2) == 0) && (gameState.walkingStyle != WalkingStyle.Escalator) && (Unknown7E0081 == 0)) {
        short x18;
        short x04;
        if ((EntityDirections[arg3] == Direction.Right) || (EntityDirections[arg3] == Direction.Left)) {
            x18 = Unknown7E33DE[arg3];
            x04 = Unknown7E1A4A[arg3];
        } else {
            x18 = Unknown7E3366[arg3];
            x04 = Unknown7E33A2[arg3];
        }
        y -= x04;
        for (short i = 0; i != 0x17; i++) {
            if (EntityScriptTable[i] == -1) {
                continue;
            }
            if (EntityCollidedObjects[i] == 0x8000) {
                continue;
            }
            if ((Unknown7E5D58 != 0) && (EntityTPTEntries[i] + 1 >= 0x8001)){
                continue;
            }
            if (Unknown7E332A[i] == 0) {
                continue;
            }
            short yReg;
            short x10;
            if ((EntityDirections[i] == Direction.Right) || (EntityDirections[i] == Direction.Left)) {
                yReg = Unknown7E33DE[i];
                x10 = Unknown7E1A4A[i];
            } else {
                yReg = Unknown7E3366[i];
                x10 = Unknown7E33A2[i];
            }
            if (EntityAbsYTable[i] - x10 - x04 >= y) {
                continue;
            }
            if (x10 + EntityAbsYTable[i] - x10 <= y) {
                continue;
            }
            if (EntityAbsXTable[i] - yReg - x18 * 2  >= x) {
                continue;
            }
            if (EntityAbsXTable[i] - yReg + yReg * 2 <= y) {
                continue;
            }
            result = i;
            break;
        }

    }
    EntityCollidedObjects[23] = result;
    return result;
}

/// $C064D4
void UnknownC064D4() {
    NextQueuedInteraction = 0;
    CurrentQueuedInteraction = 0;
    CurrentQueuedInteractionType = -1;
}

/// $C064E3
void UnknownC064E3(short arg1, const(ubyte)* arg2) {
    if (arg1 == CurrentQueuedInteractionType) {
        return;
    }
    QueuedInteractions[NextQueuedInteraction].type = arg1;
    QueuedInteractions[NextQueuedInteraction].text_ptr = arg2;
    NextQueuedInteraction = (NextQueuedInteraction + 1) & 3;
    Unknown7E5D9A = 1;
}

/// $C06537
short UnknownC06537() {
    return QueuedInteractions[CurrentQueuedInteraction].type;
}

/// $C0654E
const(ubyte)* UnknownC0654E() {
    return QueuedInteractions[CurrentQueuedInteraction].text_ptr;
}

/// $C06578
void UnknownC06578(short arg1, short arg2) {
    Unknown7E5E06[Unknown7E5E36].unknown0 = arg1;
    Unknown7E5E06[Unknown7E5E36].unknown2 = arg2;
    Unknown7E5E36++;
}

/// $C065A3
void UnknownC065A3() {
    while (Unknown7E5E36 != 0) {
        Unknown7E5E36--;
        CreatePreparedEntitySprite(Unknown7E5E06[Unknown7E5E36].unknown0, Unknown7E5E06[Unknown7E5E36].unknown2);
    }
}

/// $C065C2
void UnknownC065C2(short direction) {
    short x0E = cast(short)((gameState.leaderX.integer / 8) + UnknownC3E230[direction]);
    short x02 = cast(short)((gameState.leaderY.integer / 8) + UnknownC3E240[direction]);
    if (direction == Direction.Left) {
        x0E--;
    }
    short x = UnknownC07477(x0E, x02);
    if (x == -1) {
        x = UnknownC07477(cast(short)(x0E + 1), x02);
    }
    if ((x != -1) && (x != 6)) {
        Unknown7E5DDC = Unknown7E5DBE;
        //Unknown7E5DDE = doorData[Unknown7E5DBC & 0x7FFF]

        //not sure if this is the correct type...
        Unknown7E5DDE = (cast(const(DoorEntryA)*)Unknown7E5DBC).textPtr;
        CurrentTPTEntry = -2;
    }
}

/// $C06662
void ScreenTransition(short arg1, short arg2) {
    short x02 = ScreenTransitionConfigTable[arg1].duration == 0xFF ? 900 : ScreenTransitionConfigTable[arg1].duration;
    UnknownC42631(ScreenTransitionConfigTable[arg1].unknown5, ScreenTransitionConfigTable[arg1].direction * 4);
    if (arg2 == 1) {
        UnknownC0943C();
        UnknownC0DD2C(2);
        if (ScreenTransitionConfigTable[arg1].animationID != 0) {
            UnknownC4A67E(ScreenTransitionConfigTable[arg1].animationID, ScreenTransitionConfigTable[arg1].animationFlags + 2);
        }
        UnknownC4954C(ScreenTransitionConfigTable[arg1].fadeStyle, &palettes[0][0]);
        UnknownC496E7(x02, -1);
        for (short i = 0; i < x02; i++) {
            if (Unknown7E0030 != 0) {
                WaitUntilNextFrame();
            }
            UnknownC426ED();
            OAMClear();
            UnknownC4268A();
            UnknownC426C7();
            UnknownC09466();
            UpdateScreen();
            UnknownC4A7B0();
            WaitUntilNextFrame();
        }
        if (ScreenTransitionConfigTable[arg1].fadeStyle <= 50) {
            UnknownC08726();
        } else {
            memset(&palettes[0][0], 0xFF, 0x200);
            UnknownC0856B(0x18);
            WaitUntilNextFrame();
            Unknown7E4676 = 1;
        }
        UnknownC09451();
    } else {
        short x1D = (ScreenTransitionConfigTable[arg1].fadeStyle <= 50) ? 1 : 0;
        if (x1D != 0) {
            FadeIn(1, 1);
        } else {
            UnknownC496E7(ScreenTransitionConfigTable[arg1].secondaryDuration, -1);
        }
        if (ScreenTransitionConfigTable[arg1].secondaryAnimationID != 0) {
            UnknownC4A67E(ScreenTransitionConfigTable[arg1].secondaryAnimationID, ScreenTransitionConfigTable[arg1].secondaryAnimationFlags);
        }
        for (short i = 0; i < ScreenTransitionConfigTable[arg1].secondaryDuration; i++) {
            if (arg1 == 0) {
                if (Unknown7E0030 != 0) {
                    WaitUntilNextFrame();
                }
                UnknownC426ED();
            }
            OAMClear();
            UnknownC09466();
            UnknownC4A7B0();
            UpdateScreen();
            WaitUntilNextFrame();
            if (i == 1) {
                UnknownC0943C();
            }
        }
        if (x1D == 0) {
            UnknownC49740();
        }
    }
    if (CurrentGiygasPhase < GiygasPhase.StartPraying) {
        UnknownC2EAAA();
    }
    UnknownC09451();
    Unknown7E5DAA = 0;
    Unknown7E5DA8 = 0;
}

/// $C068AF
short GetScreenTransitionSoundEffect(short transition, short getStart) {
    if (getStart == 0) {
        return ScreenTransitionConfigTable[transition].endingSoundEffect;
    }
    return ScreenTransitionConfigTable[transition].startSoundEffect;
}

/// $C068F4
void UnknownC068F4(short arg1, short arg2) {
    if (Unknown7E5DD8 != 0) {
        return;
    }
    const(OverworldEventMusic)* x0A = &OverworldEventMusicPointerTable[MapDataPerSectorMusic[arg2 / 128][(arg1 >> 8) & 0xFF]][0];
    while (x0A.flag != 0) {
        if (getEventFlag(x0A.flag & 0x7FFF) == (x0A.flag > 0x8000) ? 1 : 0) {
            break;
        }
        x0A++;
    }
    Unknown7E5E38 = x0A;
    Unknown7E5DD6 = x0A.music;
    if ((Unknown7E5DDA == 0) && (x0A.music != Unknown7E5DD4)) {
        UnknownC0AC0C(2);
    }
}

/// $C069AF
void UnknownC069AF() {
    if (Unknown7E5DD8 != 0) {
        return;
    }
    if (Unknown7E5DD6 == Unknown7E4DD4) {
        return;
    }
    Unknown7E5DD4 = Unknown7E5DD6;
    ChangeMusic(Unknown7E5DD6);
    UnknownC0AC0C(Unknown7E5E38.unknown3);
}

/// $C069ED
void ChangeMusic5DD6() {
    ChangeMusic(Unknown7E5DD6);
}

/// $C06A07
void UnknownC06A07() {
    UnknownC068F4(gameState.leaderX.integer, gameState.leaderY.integer);
    ChangeMusic(Unknown7E5DD6);
}

/// $C06B21
void SpawnBuzzBuzz() {
    DisplayText(TextSpawnBuzzBuzz);
    UnknownEF0EE8();
}

/// $C06B3D
void UnknownC06B3D() {
    short i;
    for (i = 0; (4 > i) && (CurrentQueuedInteraction != NextQueuedInteraction); CurrentQueuedInteraction = (CurrentQueuedInteraction + 1) & 3, i++) {
        if (UnknownC06537() != 10) {
            continue;
        }
        Unknown7E5E58[i] = UnknownC0654E();
    }
    Unknown7E5E58[i] = null;
    for (short j = 0; Unknown7E5E58[j] !is null; j++) {
        UnknownC064E3(10, Unknown7E5E58[j]);
    }
}

/// $C06BFF
void DoorTransition(const(DoorEntryA)* arg1) {
    if (arg1.textPtr !is null) {
        UnknownC10004(arg1.textPtr);
    }
    Unknown7E5DAA = 0;
    Unknown7E5DA8 = 0;
    if (getEventFlag(arg1.eventFlag & 0x7FFF) != (arg1.eventFlag > EVENT_FLAG_UNSET) ? 1 : 0) {
        Unknown7E5DC2 = 0;
        return;
    }
    for (short i = 1; i <= 10; i++) {
        setEventFlag(i, 0);
    }
    UnknownC06B3D();
    UnknownC07C5B();
    PlaySfx(GetScreenTransitionSoundEffect(arg1.unknown10, 1));
    if (Unknown7EB4B6 != 0) {
        FadeOut(1, 1);
    } else {
        ScreenTransition(arg1.unknown10, 1);
    }
    short x02 = cast(short)(arg1.unknown8 * 8);
    short x04 = cast(short)((arg1.unknown6 & 0x3FFF) * 8);
    if (UnknownC3E1D8[arg1.unknown6 >> 14] != 2) {
        x02 += 8;
    }
    if (Debug != 0) {
        if (DebugModeNumber != 6) {
            UnknownC068F4(x02, x04);
        }
        if (Unknown7EB567 == 0) {
            UnknownEFE895(arg1.unknown10);
        }
    } else {
        UnknownC068F4(x02, x04);
    }
    LoadMapAtPosition(x02, x04);
    Unknown7E2890 = 0;
    gameState.walkingStyle = 0;
    UnknownC03FA9(x02, x04, UnknownC3E1D8[arg1.unknown6 >> 14]);
    if ((Debug != 0) && (Unknown7EB567 == 0)) {
        SaveReplaySaveSlot();
    }
    UnknownC069AF();
    UnknownC065A3();
    PlaySfx(GetScreenTransitionSoundEffect(arg1.unknown10, 0));
    if (Unknown7EB4B6 != 0) {
        FadeIn(1, 1);
    } else {
        ScreenTransition(arg1.unknown10, 0);
    }
    Unknown7E5DC4 = -1;
    Unknown7E0A34 = -1;
    SpawnBuzzBuzz();
    Unknown7E5DC2 = 0;
}

immutable ushort[] UNKNOWN_C06E02 = [
	0x0008,
	0x0000,
	0x0000,
	0x0008,
	0x0000,
	0x0008,
	0x0000,
	0x0008,
	0x0006,
	0x0002,
	0x0006,
	0x0002
];

/// $C07477
byte UnknownC07477(short arg1, short arg2) {
    const(SectorDoors)* x0A = &doorConfig[(arg1 / 32) + (arg2 & 0xFFE0)];
    if (x0A.length == 0) {
        return -1;
    }
    const(DoorConfig)* x06 = &x0A.doors[0];
    for (short i = x0A.length; i != 0; x06++, i--) {
        if (x06.unknown1 != (arg1 % 32)) {
            continue;
        }
        if (x06.unknown0 != (arg2 % 32)) {
            continue;
        }
        //is this right?
        Unknown7E5DBC = x06.entryA;
        Unknown7E5DBE = x06.type;
    }
    return -1;
}

/// $C075DD
void ProcessQueuedInteractions() {
    const(void)* ptr = QueuedInteractions[CurrentQueuedInteraction].text_ptr;
    CurrentQueuedInteractionType = QueuedInteractions[CurrentQueuedInteraction].type;
    CurrentQueuedInteraction = (CurrentQueuedInteraction + 1) & 3;
    Unknown7E5D58 &= 0xFFFE;
    UnknownC07C5B();
    switch(CurrentQueuedInteractionType) {
        case 2:
            DoorTransition(cast(DoorEntryA*)ptr);
            break;
        case 10:
            UnknownC10004(cast(const(ubyte)*)ptr);
            if (ptr is TextDadCalls) {
                DadPhoneTimer = 0x697;
                Unknown7E9E56 = 0;
            }
            break;
        case 0:
        case 8:
        case 9:
            UnknownC10004(cast(const(ubyte)*)ptr);
            break;
        default: break;
    }
    Unknown7E5D9A = (CurrentQueuedInteraction != NextQueuedInteraction) ? 1 : 0;
    CurrentQueuedInteractionType = -1;
}

/// $C07716
void UnknownC07716() {
    if ((EntityTickCallbackFlags[gameState.currentPartyMembers] & (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)) != 0) {
        return;
    }
    if ((EntitySpriteMapFlags[gameState.currentPartyMembers] & 0x8000) != 0) {
        return;
    }
    if (gameState.unknownB0 == 2) {
        return;
    }
    Unknown7E9F6B = CreateEntity(OverworldSprite.MiniGhost, ActionScript.Unknown786, -1, 0, 0);
    EntityAnimationFrames[Unknown7E9F6B] = -1;
    EntityScreenYTable[Unknown7E9F6B] = -256;
    EntityAbsYTable[Unknown7E9F6B] = -256;
    EntityAbsXTable[Unknown7E9F6B] = -256;
}

/// $C0777A
void UnknownC0777A() {
    UnknownC02140(Unknown7E9F6B);
    Unknown7E9F6B = -1;
}

/// $C0780F
short UnknownC0780F(short characterID, short walkingStyle, PartyCharacter* character) {
    short y = 0;
    if ((characterID == 0) && (Unknown7EB4B6 == 0) && (PajamaFlag != 0)) {
        return 0x1B5;
    }
    if (Unknown7E9F73 != -1) {
        Unknown7E2E7A[Unknown7E9F73] = 0;
    }
    if (gameState.partyStatus == 1) {
        if (gameState.unknown92 != 3) {
            return 0xD;
        } else {
            return 0x25;
        }
    }
    switch (character.afflictions[0]) {
        case Status0.Unconscious:
            y = 1;
            break;
        case Status0.Diamondized:
            if (gameState.unknown92 != 3) {
                return 0xC;
            }
            return 0x24;
        case Status0.Nauseous:
            if (Unknown7E9F73 != -1) {
                Unknown7E2E7A[Unknown7E9F73] |= 0x8000;
            }
            break;
        default: break;
    }
    switch (character.afflictions[1]) {
        case Status1.Mushroomized:
            if (Unknown7E9F73 != -1) {
                Unknown7E2E7A[Unknown7E9F73] |= 0x4000;
            }
            break;
        case Status1.Possessed:
            Unknown7E9F6F++;
            break;
        default: break;
    }
    if (gameState.unknown92 == 6) {
            return 7;
    } else if (gameState.unknown92 == 6) {
        if (character.unknown53 == 0) {
            return 6;
        }
    }
    if (y == 0) {
        switch (walkingStyle) {
            case 0:
            case 0xC:
            case 0xD:
                y = 0;
                break;
            case 0x4:
                y = 1;
                break;
            case 0x7:
                y = 2;
                break;
            case 0x8:
                y = 3;
                break;
            default: break;
        }
    }
    if (gameState.unknown92 == 3) {
        y += 4;
        Unknown7E2E7A[Unknown7E9F73] = 0;
    } else if ((gameState.unknown92 == 5) && (y == 0)) {
        y += 6;
    }
    if (gameState.partyStatus == 3) {
        EntityScriptVar3Table[Unknown7E9F73] = 5;
    } else if (character.afflictions[0] == Status0.Unconscious) {
        EntityScriptVar3Table[Unknown7E9F73] = 16;
    } else if ((EntitySurfaceFlags[Unknown7E9F73] & 0xC) == 0xC) {
        EntityScriptVar3Table[Unknown7E9F73] = 24;
    } else if ((EntitySurfaceFlags[Unknown7E9F73] & 8) == 8) {
        EntityScriptVar3Table[Unknown7E9F73] = 16;
    } else {
        EntityScriptVar3Table[Unknown7E9F73] = 8;
    }
    if (character.afflictions[0] == Status0.Paralyzed) {
        EntityScriptVar3Table[Unknown7E9F73] = 56;
    }
    return PartyCharacterGraphicsTable[characterID][y];
}

/// $C07A56
void UnknownC07A56(short arg1, short arg2, short arg3) {
    short x04 = arg3;
    short x02 = arg2;
    short x16 = arg2;
    short x14 = arg1;
    Unknown7E9F73 = x04;
    short x12 = UnknownC0780F(x14, x02, Unknown7E4DC6);
    if (x12 == -1) {
        EntityAnimationFrames[x04] = x12;
    } else {
        auto x0E = SpriteGroupingPointers[x12];
        // figure out sprite stuff
        //UNKNOWN_30X2_TABLE_31[x04] = x0E.spriteBank;
        UNKNOWN_30X2_TABLE_31[x04] = x02;
        Unknown7E00C0 = x02;
        x02 = Unknown7E4DC6.unknown55;
        if (Unknown7E00C0 != x02) {
            x02 = x16;
            Unknown7E4DC6.unknown55 = x16;
            EntityScriptVar7Table[x04] |= 1<<15;
        }
        if ((gameState.unknown90 != 0) || (x16 != 0xC)) {
            EntityScriptVar7Table[x04] ^= (1 << 15 | 1 << 14 | 1 << 13);
        } else {
            EntityScriptVar7Table[x04] |= (1 << 14 | 1 << 13);
        }
    }
    if (gameState.unknownB0 == 2) {
        EntityScriptVar7Table[x04] |= 1 << 12;
    }
}

/// $C07B52
void UnknownC07B52() {
    ushort x14 = PartyCharacters[0].position_index;
    for (ushort x12 = 0x18; x12 < 0x1E; x12++) {
        ushort x04 = x12;
        ushort x10 = x12;
        if (EntityScriptTable[x04] != -1) {
            EntityTickCallbackFlags[x04] |= (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED);
            Unknown7E4DC6 = &PartyCharacters[EntityScriptVar1Table[x04]];
            if ((gameState.currentPartyMembers == x12) || (Unknown7E4DC6.position_index == x14)) {
                UnknownC07A56(EntityScriptVar0Table[x12], gameState.walkingStyle, x12);
                EntityAbsXTable[x12] = gameState.leaderX.integer;
                EntityAbsYTable[x12] = gameState.leaderY.integer;
                if (gameState.partyCount != 1) {
                    EntityDirections[x12] = gameState.leaderDirection;
                }
            } else {
                UnknownC07A56(EntityScriptVar0Table[x12], PlayerPositionBuffer[Unknown7E4DC6.position_index].walking_style, x12);
                EntityAbsXTable[x10] = PlayerPositionBuffer[Unknown7E4DC6.position_index].x_coord;
                EntityAbsYTable[x10] = PlayerPositionBuffer[Unknown7E4DC6.position_index].y_coord;
                EntityDirections[x10] = PlayerPositionBuffer[Unknown7E4DC6.position_index].direction;
            }
            EntityScreenXTable[x12] = cast(short)(EntityAbsXTable[x12] - BG1_X_POS);
            EntityScreenYTable[x12] = cast(short)(EntityAbsYTable[x12] - BG1_Y_POS);
            UnknownC0A780(x12);
        }
    }
}

/// $C07C5B
void UnknownC07C5B() {
    if (Unknown7E5D58 == 0) {
        return;
    }
    for (short i = 0x18; i < 0x1E; i++) {
        EntitySpriteMapFlags[i] &= 0x7FFF;
    }
}

/// $C08000
void start() {
    // emulation mode? never heard of it
    NMITIMEN = 0;
    DMAQueueIndex = 0;

    // stack setup would happen here

    INIDISP = 0x80;
    INIDISP_MIRROR = 0x80;
    OBSEL = 0;
    OAMADDL = 0;
    OAMADDH = 0;
    BGMODE = 0;
    MOSAIC = 0;
    BG1SC = 0;
    BG2SC = 0;
    BG3SC = 0;
    BG4SC = 0;
    BG12NBA = 0;
    BG34NBA = 0;
    //yes these are meant to be repeated
    BG1HOFS = 0;
    BG1HOFS = 0;
    BG1VOFS = 0;
    BG1VOFS = 0;
    BG2HOFS = 0;
    BG2HOFS = 0;
    BG2VOFS = 0;
    BG2VOFS = 0;
    BG3HOFS = 0;
    BG3HOFS = 0;
    BG3VOFS = 0;
    BG3VOFS = 0;
    BG4HOFS = 0;
    BG4HOFS = 0;
    BG4VOFS = 0;
    BG4VOFS = 0;
    VMAIN = 0x80;
    VMADDL = 0;
    VMADDH = 0;
    M7SEL = 0;
    //yep, repeating again. kinda
    M7A = 0;
    M7A = 1;
    M7B = 0;
    M7B = 0;
    M7C = 0;
    M7C = 0;
    M7D = 0;
    M7D = 1;
    M7X = 0;
    M7X = 0;
    M7Y = 0;
    M7Y = 0;
    CGADD = 0;
    W12SEL = 0;
    W34SEL = 0;
    WOBJSEL = 0;
    WH0 = 0;
    WH1 = 0;
    WH2 = 0;
    WH3 = 0;
    WBGLOG = 0;
    WOBJLOG = 0;
    TM = 0x1F;
    TD = 0;
    TMW = 0;
    TSW = 0;
    CGWSEL = 0;
    CGADSUB = 0;
    FIXED_COLOUR_DATA = 0xE0;
    SETINI = 0;
    WRMPYA = 0xFF;
    WRMPYA = 0;
    WRMPYB = 0;
    WRDIVL = 0;
    WRDIVH = 0;
    WRDIVB = 0;
    HTIMEL = 0;
    HTIMEH = 0;
    VTIMEL = 0;
    VTIMEH = 0;
    MDMAEN = 0;
    HDMAEN = 0;
    MEMSEL = 1;

    // clearing the heap would happen here

    CurrentHeapAddress = &heap[0];
    HeapBaseAddress = &heap[0];
    Unknown7E2402 = 0xFFFF;
    RandA = 0x1234;
    RandB = 0x5678;
    NextFrameBufferID = 1;
    Unknown7E0020 = &UnknownC0851B;
    UnknownC08B19();
    GameInit();
}

/// $C0814F
void IRQ() {
    if (TIMEUP & 0x80) {
        IRQNMICommon();
    }
}

void NMI() {
    IRQNMICommon();
}

void IRQNMICommon() {
    // a read from RDNMI is required on real hardware during NMI, apparently
    //ubyte __unused = RDNMI;
    HDMAEN = 0;
    INIDISP = 0x80;
    Unknown7E002B++;
    Unknown7E0002++;
    if (NextFrameDisplayID != 0) {
        OAMADDL = 0;
        DMAChannels[0].DMAP = 0;
        DMAChannels[0].A1T = null;
        DMAChannels[0].BBAD = 4;
        DMAChannels[0].A1T = ((NextFrameDisplayID - 1) != 0) ? (&OAM2) : (&OAM1);
        DMAChannels[0].DAS = 0x220;
        MDMAEN = 1;
        Unknown7E0099 += 0x220;
    }
    if (Unknown7E0030 != 0) {
        ushort x = Unknown7E0030 / UnknownC08F98Entry.sizeof;
        //TODO: fix this?
        //DMAChannels[0].A1T = UnknownC08F98[x - 1].unknown2;
        CGADD = UnknownC08F98[x - 1].unknown4 & 0xFF;
        CGDATA = UnknownC08F98[x - 1].unknown4 >> 8;
        DMAChannels[0].DMAP = 0x00;
        DMAChannels[0].BBAD = 0x22;
        //DMAChannels[0].A1B = 0;
        Unknown7E0030 = 0;
        DMAChannels[0].DAS = UnknownC08F98[x - 1].unknown0;
        MDMAEN = 1;
        Unknown7E0099 += UnknownC08F98[x - 1].unknown0;
    }
    if ((Unknown7E0028 != 0) && (--Unknown7E002A < 0)) {
        Unknown7E002A = Unknown7E0029;
        ubyte a = 0;
        if (((INIDISP_MIRROR & 0xF) + Unknown7E0028) < 0) {
            HDMAEN_MIRROR = 0;
            a = 0x80;
        } else {
            if (((INIDISP_MIRROR & 0xF) + Unknown7E0028) < 16) {
                a = cast(ubyte)(((INIDISP_MIRROR & 0xF) + Unknown7E0028));
                goto Unknown6;
            }
            a = 15;
        }
        Unknown7E0028 = 0;
        Unknown6:
        INIDISP_MIRROR = a;
    }
    INIDISP = INIDISP_MIRROR;
    MOSAIC = MOSAIC_MIRROR;
    BG12NBA = BG12NBA_MIRROR;
    WH2 = UNUSED_WH2_MIRROR;
    for (short i = Unknown7E0001; i != DMAQueueIndex; i++) {
        DMAChannels[0].DMAP = DMATable[DMAQueue[i].mode].unknown0;
        VMAIN = DMATable[DMAQueue[i].mode].unknown2;
        DMAChannels[0].DAS = DMAQueue[i].size;
        DMAChannels[0].A1T = DMAQueue[i].source;
        //DMAChannels[0].A1B = DMAQueue[i].source bank;
        VMADDL = DMAQueue[i].destination;
        MDMAEN = 1;
    }
    Unknown7E0001 = DMAQueueIndex;
    if (NextFrameDisplayID != 0) {
        if (NextFrameDisplayID - 1 == 0) {
            BG1HOFS = BG1_X_POS_BUF[0] & 0xFF;
            BG1HOFS = BG1_X_POS_BUF[0] >> 8;
            BG1VOFS = BG1_Y_POS_BUF[0] & 0xFF;
            BG1VOFS = BG1_Y_POS_BUF[0] >> 8;
            BG2HOFS = BG2_X_POS_BUF[0] & 0xFF;
            BG2HOFS = BG2_X_POS_BUF[0] >> 8;
            BG2VOFS = BG2_Y_POS_BUF[0] & 0xFF;
            BG2VOFS = BG2_Y_POS_BUF[0] >> 8;
            BG3HOFS = BG3_X_POS_BUF[0] & 0xFF;
            BG3HOFS = BG3_X_POS_BUF[0] >> 8;
            BG3VOFS = BG3_Y_POS_BUF[0] & 0xFF;
            BG3VOFS = BG3_Y_POS_BUF[0] >> 8;
            BG4HOFS = BG4_X_POS_BUF[0] & 0xFF;
            BG4HOFS = BG4_X_POS_BUF[0] >> 8;
            BG4VOFS = BG4_Y_POS_BUF[0] & 0xFF;
            BG4VOFS = BG4_Y_POS_BUF[0] >> 8;
        } else{
            BG1HOFS = BG1_X_POS_BUF[1] & 0xFF;
            BG1HOFS = BG1_X_POS_BUF[1] >> 8;
            BG1VOFS = BG1_Y_POS_BUF[1] & 0xFF;
            BG1VOFS = BG1_Y_POS_BUF[1] >> 8;
            BG2HOFS = BG2_X_POS_BUF[1] & 0xFF;
            BG2HOFS = BG2_X_POS_BUF[1] >> 8;
            BG2VOFS = BG2_Y_POS_BUF[1] & 0xFF;
            BG2VOFS = BG2_Y_POS_BUF[1] >> 8;
            BG3HOFS = BG3_X_POS_BUF[1] & 0xFF;
            BG3HOFS = BG3_X_POS_BUF[1] >> 8;
            BG3VOFS = BG3_Y_POS_BUF[1] & 0xFF;
            BG3VOFS = BG3_Y_POS_BUF[1] >> 8;
            BG4HOFS = BG4_X_POS_BUF[1] & 0xFF;
            BG4HOFS = BG4_X_POS_BUF[1] >> 8;
            BG4VOFS = BG4_Y_POS_BUF[1] & 0xFF;
            BG4VOFS = BG4_Y_POS_BUF[1] >> 8;
            Unknown7E0061 = BG1_X_POS;
            Unknown7E0063 = BG1_Y_POS;
        }
    }
    NextFrameDisplayID = 0;
    if ((INIDISP_MIRROR & 0x80) != 0) {
        TM = TM_MIRROR;
        TD = TD_MIRROR;
        HDMAEN = HDMAEN_MIRROR;
    }
    ProcessSfxQueue();
    Unknown7E0099 = 0;
    if (Unknown7E0022 == 0) {
        Unknown7E0022++;
        UnknownC08518();
        Unknown7E0022 = 0;
    }
    HeapBaseAddress = (&heap[0] == HeapBaseAddress) ? (&heap.ptr[0x200]) : &heap[0];
    CurrentHeapAddress = (&heap[0] == HeapBaseAddress) ? (&heap.ptr[0x200]) : &heap[0];
    DMATransferFlag = 0;
    Unknown7E00AB = 0;
    Timer++;
}

/// $C083B8
void UnknownC083B8() {
    Unknown7E007B = 0;
}

/// $C083C1
void UnknownC083C1(Unknown7E007DEntry* arg1) {
    Unknown7E0085 = arg1;
    Unknown7E008B = pad_state[0];
    Unknown7E0089 = 1;
    Unknown7E007B |= 0x8000;
}

/// $C083E3
void UnknownC083E3(Unknown7E007DEntry* arg1) {
    if ((Unknown7E007B & 0x4000) != 0) {
        return;
    }
    if (arg1.unknown0 == 0) {
        UnknownC083B8();
    }
    Unknown7E0081 = arg1.unknown0;
    Unknown7E0083 = arg1.unknown1;
    Unknown7E007D = arg1;
    Unknown7E0077[0] = arg1.unknown1;
    Unknown7E0077[1] = arg1.unknown1;
    Unknown7E007B |= 0x4000;
}

/// $C0841B
short TestSRAMSize() {
    //original code tested how large SRAM was by writing to areas beyond retail SRAM and comparing to a value guaranteed to be in SRAM
    //if SRAM is retail-sized, these areas would just be mirrors of the existing SRAM
    return Unknown7E0A36;
}

/// $C0841B
void ReadJoypad() {
    if (Unknown7E007B == 0) {
        goto l1;
    }
    if ((Unknown7E007B & 0x4000) == 0) {
        goto l1;
    }
    if (--Unknown7E0081 != 0) {
        return;
    }
    Unknown7E007D++;
    if (Unknown7E007D[0].unknown0 == 0) {
        goto l0;
    }
    Unknown7E0081 = Unknown7E007D[0].unknown0;
    Unknown7E0077[0] = Unknown7E007D[0].unknown1;
    Unknown7E0077[1] = Unknown7E007D[0].unknown1;
    return;

    l0:
    Unknown7E007B &= 0xBFFF;

    l1:
    Unknown7E0077[1] = JOYPAD_2_DATA;
    Unknown7E0077[0] = JOYPAD_1_DATA;
}

/// $C08456
void UnknownC08456() {
    if ((Unknown7E007B & 0x8000) == 0) {
        return;
    }
    if ((Unknown7E0077[0] | Unknown7E0077[1]) == Unknown7E008B) {
        Unknown7E0089++;
        if (Unknown7E0089 != 0xFF) {
            return;
        }
    }
    Unknown7E0085.unknown0 = cast(ubyte)Unknown7E0089;
    Unknown7E0085.unknown1 = Unknown7E008B;
    Unknown7E0085++;
    Unknown7E008B = Unknown7E0077[0] | Unknown7E0077[1];
    Unknown7E0089 = 0;
    Unknown7E0089++;
    Unknown7E0085.unknown0 = 0;
    if (Unknown7E0085 !is null) { //not sure about this... but what is BPL on a pointer supposed to mean?
        return;
    }
    Unknown7E007B &= 0x7FFF;
}

/// $C08496
void UnknownC08496() {
    while ((HVBJOY & 1) == 1) {}
    ReadJoypad();
    UnknownC08456();
    short x = 1;

    l1:
    Unknown7E0075 = Unknown7E0077[x] & 0xFFF0;
    pad_press[x] = (pad_state[x] ^ 0xFFFF) & Unknown7E0075;
    bool eq = pad_state[x] == Unknown7E0075;
    pad_state[x] = Unknown7E0075;
    if (eq) {
        goto l2;
    }
    pad_held[x] = pad_press[x];
    Unknown7E0071[x] = 0x14;
    goto l4;

    l2:
    if (Unknown7E0071[x] == 0) {
        goto l3;
    }
    pad_held[x] = 0;
    goto l4;

    l3:
    pad_held[x] = Unknown7E0075;
    Unknown7E0071[x] = 3;

    l4:
    if (x-- > 0) {
        goto l1;
    }
    if (Debug == 0) {
        pad_state[0] |= pad_state[1];
        pad_held[0] |= pad_held[1];
        pad_press[0] |= pad_press[1];
    }
    if (pad_press[0] != 0) {
        Unknown7E0A34++;
    }
}

/// $C08501
void ProcessSfxQueue() {
    if (SoundEffectQueueIndex == SoundEffectQueueEndIndex) {
        return;
    }
    APUIO3 = SoundEffectQueue[SoundEffectQueueIndex];
    SoundEffectQueueIndex = (SoundEffectQueueIndex + 1) & 7;
}

/// $C08518
void UnknownC08518() {
    Unknown7E0020();
}

/// $C0851B
void UnknownC0851B() {
    //nothing
}

/// $C0851C
void UnknownC0851C(void function() arg1) {
    Unknown7E0020 = arg1;
}

/// $C08522
void UnknownC08522() {
    Unknown7E0020 = &UnknownC0851B;
}

/// $C0856B
void UnknownC0856B(short arg1) {
    Unknown7E0030 = cast(ubyte)arg1;
}

/// $C085B7 - Copy data to VRAM in chunks of 0x1200
void CopyToVram2(ubyte mode, ushort count, ushort address, const(ubyte)* data) {
    DMA_COPY_MODE = mode;
    while (Unknown7E0099 != 0) {}
    DMA_COPY_RAM_SRC = data;
    DMA_COPY_VRAM_DEST = address;
    if (count >= 0x1201) {
        DMA_COPY_SIZE = 0x1200;
        while (count >= 0x1201) {
            while (Unknown7E0099 != 0) {}
            CopyToVramCommon();
            DMA_COPY_RAM_SRC += 0x1200;
            DMA_COPY_VRAM_DEST += 0x900;
            count -= 0x1200;
        }
    }
    DMA_COPY_SIZE = count;
    while (Unknown7E0099 != 0) {}
    CopyToVramCommon();
    while (Unknown7E0099 != 0) {}
}

/// $C08616 - Copy data to VRAM
void CopyToVram(ubyte mode, ushort count, ushort address, const(ubyte)* data) {
    DMA_COPY_MODE = mode;
    DMA_COPY_SIZE = count;
    DMA_COPY_RAM_SRC = data;
    DMA_COPY_VRAM_DEST = address;
    CopyToVramCommon();
}
// this actually splits the address into bank/address parameters, but we don't need that
void CopyToVramAlt(ubyte mode, ushort count, ushort address, const(ubyte)* data) {
    CopyToVram(mode, count, address, data);
}

void CopyToVramCommon() {
    CopyToVramInternal();
}

/// $C0865F
void CopyToVramInternal() {
    if ((INIDISP_MIRROR & 0x80) != 0) {
        ushort tmp92  = cast(ushort)(DMA_COPY_SIZE + Unknown7E0099);
        if (tmp92 >= 0x1201) {
            while (Unknown7E0099 != 0) {}
            tmp92 = DMA_COPY_SIZE;
        }
        Unknown7E0099 = tmp92;
        Unknown7E00A5 = Unknown7E0001;
        DMAQueue[DMAQueueIndex].mode = DMA_COPY_MODE;
        DMAQueue[DMAQueueIndex].size = DMA_COPY_SIZE;
        DMAQueue[DMAQueueIndex].source = DMA_COPY_RAM_SRC;
        DMAQueue[DMAQueueIndex].destination = DMA_COPY_VRAM_DEST;
        if (DMAQueueIndex + 1 == Unknown7E00A5) {
            while (DMAQueueIndex + 1 == Unknown7E0001) {}
        }
        DMAQueueIndex++;
    } else {
        DMAChannels[1].DMAP = DMATable[DMA_COPY_MODE].unknown0;
        //original assembly relied on DMAP1+BBAD1 being adjacent for a 16-bit write, but we probably shouldn't do that
        DMAChannels[1].BBAD = DMATable[DMA_COPY_MODE].unknown1;
        VMAIN = DMATable[DMA_COPY_MODE].unknown2;
        DMAChannels[1].DAS = DMA_COPY_SIZE;
        DMAChannels[1].A1T = DMA_COPY_RAM_SRC;
        //A1B1 is not really relevant without segmented addressing
        VMADDL = DMA_COPY_VRAM_DEST;
        MDMAEN = 2;
        CurrentHeapAddress = HeapBaseAddress;
        DMATransferFlag = 0;
    }
}

/// $C086DE
void* sbrk(ushort i) {
    while (true) {
        if (i + CurrentHeapAddress - heap.length < HeapBaseAddress) {
            void* result = CurrentHeapAddress;
            CurrentHeapAddress += i;
            return result;
        }
        while (Unknown7E002B == 0) {}
        Unknown7E002B = 0;
    }
}

/// $C08726
void UnknownC08726() {
    INIDISP_MIRROR = 0x80;
    HDMAEN_MIRROR = 0;
    Unknown7E0028 = 0;
    Unknown7E002B = 0;
    while (Unknown7E002B == 0) {}
    HDMAEN = 0;
}

/// $C08744
void UnknownC08744() {
    INIDISP_MIRROR = 0x80;
    Unknown7E002B = 0;
    while (Unknown7E002B == 0) {}
}

/// $C08715
void EnableNMIJoypad() {
    Unknown7E001E |= 0x81;
    NMITIMEN = Unknown7E001E;
}

/// $C08756
void WaitUntilNextFrame() {
    if ((Unknown7E001E & 0xB0) != 0) {
        while (Unknown7E002B == 0) {}
        Unknown7E002B = 0;
    } else {
        while (HVBJOY < 0) {}
        while (HVBJOY >= 0) {}
    }
    Unknown7E002B = 0;
    UnknownC08496();
}

/// $C0878B
void UnknownC0878B(ubyte arg1) {
    do {
        NextFrameDisplayID++;
        WaitUntilNextFrame();
    } while (--arg1 != 0);
}

/// $C0879D
void SetINIDISP(ubyte arg1) {
    INIDISP_MIRROR = arg1 & 0x8F;
}

/// $C087AB
void UnknownC087AB(ubyte arg1) {
    MOSAIC_MIRROR = (((INIDISP_MIRROR ^ 0xFF) << 4) & 0xF0) | arg1;
}

/// $C087CE
void FadeInWithMosaic(short arg1, short arg2, short arg3) {
    Unknown7E0028 = 0;
    INIDISP_MIRROR = 0;
    while(true) {
        MOSAIC_MIRROR = 0;
        if (INIDISP_MIRROR + arg1 >= 0x15) {
            break;
        }
        SetINIDISP(cast(ubyte)(INIDISP_MIRROR + arg1));
        if (arg3 != 0) {
            UnknownC087AB(cast(ubyte)arg3);
        }
        UnknownC0878B(cast(ubyte)arg2);
    }
    SetINIDISP(0xF);
}

/// $C08814
void FadeOutWithMosaic(short arg1, short arg2, short arg3) {
    Unknown7E0028 = 0;
    while (true) {
        MOSAIC_MIRROR = 0;
        if ((INIDISP_MIRROR & 0x80) != 0) {
            break;
        }
        if (INIDISP_MIRROR - arg1 < 0) {
            break;
        }
        SetINIDISP(cast(ubyte)(INIDISP_MIRROR - arg1));
        if (arg3 != 0) {
            UnknownC087AB(cast(ubyte)arg3);
        }
        UnknownC0878B(cast(ubyte)arg2);
    }
    SetINIDISP(0x80);
    HDMAEN_MIRROR = 0;
    Unknown7E002B = 0;
    while (Unknown7E002B == 0) {}
    HDMAEN = 0;
}

/// $C0886C
void FadeIn(ubyte arg1, ubyte arg2) {
    Unknown7E0028 = arg1;
    Unknown7E0029 = arg2;
    Unknown7E002A = arg2;
}

/// $C0887A
void FadeOut(ubyte arg1, ubyte arg2) {
    Unknown7E0028 = cast(ubyte)((arg1^0xFF) + 1);
    Unknown7E0029 = arg2;
    Unknown7E002A = arg2;
}

/// $C0888B
void UnknownC0888B();

/// $C088B1
void OAMClear() {
    Unknown7E2504 = 0;
    Unknown7E2606 = 0;
    Unknown7E2708 = 0;
    Unknown7E280A = 0;
    if (NextFrameBufferID - 1 == 0) {
        OAMAddr = &OAM1[0];
        OAMEndAddr = OAM1.ptr + 128;
        OAMHighTableAddr = &OAM1HighTable[0];
        Unknown7E000A = 0x80;
        for (short i = 0; i < 128; i++) { //original code has this loop unrolled
            OAM1[i].yCoord = 0xE0;
        }
    } else {
        OAMAddr = &OAM2[0];
        OAMEndAddr = OAM2.ptr + 128;
        OAMHighTableAddr = &OAM2HighTable[0];
        Unknown7E000A = 0x80;
        for (short i = 0; i < 128; i++) { //original code has this loop unrolled
            OAM2[i].yCoord = 0xE0;
        }
    }
}

/// $C088A5
ubyte UnknownC088A5(ubyte arg1) {
    ubyte tmp = Unknown7E000B;
    Unknown7E000B = arg1;
    return tmp;
}

/// $C08B19
void UnknownC08B19() {
    Unknown7E0009 = 0;
    OAMClear();
    UpdateScreen();
}

/// $C08B26
void UpdateScreen() {
    UnknownC08B8E();
    if (false /+Actually tests if the DBR is 0xFF, which should never happen+/) while(true) {}
    ubyte Unknown7E000Atmp = Unknown7E000A;
    if (Unknown7E000Atmp != 0x80) {
        do {
            Unknown7E000Atmp >>= 2;
        } while ((Unknown7E000Atmp & 2) == 0);
    }
    *OAMHighTableAddr = Unknown7E000Atmp;
    BG1_X_POS_BUF[NextFrameBufferID - 1] = BG1_X_POS;
    BG1_Y_POS_BUF[NextFrameBufferID - 1] = BG1_Y_POS;
    BG2_X_POS_BUF[NextFrameBufferID - 1] = BG2_X_POS;
    BG2_Y_POS_BUF[NextFrameBufferID - 1] = BG2_Y_POS;
    BG3_X_POS_BUF[NextFrameBufferID - 1] = BG3_X_POS;
    BG3_Y_POS_BUF[NextFrameBufferID - 1] = BG3_Y_POS;
    BG4_X_POS_BUF[NextFrameBufferID - 1] = BG4_X_POS;
    BG4_Y_POS_BUF[NextFrameBufferID - 1] = BG4_Y_POS;
    NextFrameDisplayID = NextFrameBufferID;
    NextFrameBufferID ^= 3;
}

/// $C08B6B
void UnknownC08B6B(short);

/// $C08B8E
void UnknownC08B8E();

/// $C08C54
void UnknownC08C58F(const(SpriteMap)* arg1, short arg2, short arg3) {
    UnknownC08C58(arg1, arg2, arg3);
}

/// $C08C58
void UnknownC08C58(const(SpriteMap)* arg1, short arg2, short arg3) {
    UnknownC08C65[Unknown7E2400](arg1, arg2, arg3);
}

/// $C08C65
immutable void function(const(SpriteMap)*, short, short)[4] UnknownC08C65 = [
    &UnknownC08C6D,
    &UnknownC08C87,
    &UnknownC08CA1,
    &UnknownC08CBB,
];

/// $C08C6D
void UnknownC08C6D(const(SpriteMap)* arg1, short arg2, short arg3) {
    Unknown7E2404[Unknown7E2504 / 2] = arg1;
    Unknown7E2444[Unknown7E2504 / 2] = arg2;
    Unknown7E2484[Unknown7E2504 / 2] = arg3;
    //Unknown7E24C4[Unknown7E2504 / 2] = Unknown7E000B;
    Unknown7E2504 += 2;
}

/// $C08C87
void UnknownC08C87(const(SpriteMap)* arg1, short arg2, short arg3) {
    Unknown7E2506[Unknown7E2606 / 2] = arg1;
    Unknown7E2546[Unknown7E2606 / 2] = arg2;
    Unknown7E2586[Unknown7E2606 / 2] = arg3;
    //Unknown7E25C6[Unknown7E2606 / 2] = Unknown7E000B;
    Unknown7E2606 += 2;
}

/// $C08CA1
void UnknownC08CA1(const(SpriteMap)* arg1, short arg2, short arg3) {
    Unknown7E2608[Unknown7E2708 / 2] = arg1;
    Unknown7E2648[Unknown7E2708 / 2] = arg2;
    Unknown7E2688[Unknown7E2708 / 2] = arg3;
    //Unknown7E26C8[Unknown7E2708 / 2] = Unknown7E000B;
    Unknown7E2708 += 2;
}

/// $C08CBB
void UnknownC08CBB(const(SpriteMap)* arg1, short arg2, short arg3) {
    Unknown7E270A[Unknown7E280A / 2] = arg1;
    Unknown7E274A[Unknown7E280A / 2] = arg2;
    Unknown7E278A[Unknown7E280A / 2] = arg3;
    //Unknown7E27CA[Unknown7E280A / 2] = Unknown7E000B;
    Unknown7E280A += 2;
}

/// $C08CD5
void UnknownC08CD5(const(SpriteMap)* arg1, short arg2, short arg3);

/// $C08D79
void UnknownC08D79(ubyte arg1) {
    Unknown7E000F &= 0xF0;
    Unknown7E000F |= arg1;
    BGMODE = Unknown7E000F;
}

/// $C08D92
void SetOAMSize(ubyte arg1) {
    OBSEL_MIRROR = arg1;
    OBSEL = arg1;
}

/// $C08D9E
void SetBG1VRAMLocation(ubyte arg1, ushort arg2, ushort arg3) {
    Unknown7E0011 = arg1 & 3;
    Unknown7E0011 |= ((arg2 >> 8) & 0xFC);
    BG1SC = Unknown7E0011;
    BG12NBA_MIRROR &= 0xF;
    BG1_X_POS = 0;
    BG1_Y_POS = 0;
    BG12NBA_MIRROR |= (arg3 >> 12);
    BG12NBA = BG12NBA_MIRROR;
}

/// $C08DDE
void SetBG2VRAMLocation(ubyte arg1, ushort arg2, ushort arg3) {
    Unknown7E0012 = arg1 & 3;
    Unknown7E0012 |= ((arg2 >> 8) & 0xFC);
    BG2SC = Unknown7E0012;
    BG12NBA_MIRROR &= 0xF;
    BG2_X_POS = 0;
    BG2_Y_POS = 0;
    BG12NBA_MIRROR |= ((arg3 >> 8) & 0xF0);
    BG12NBA = BG12NBA_MIRROR;
}

/// $C08E1C
void SetBG3VRAMLocation(ubyte arg1, ushort arg2, ushort arg3) {
    Unknown7E0013 = arg1 & 3;
    Unknown7E0013 |= ((arg2 >> 8) & 0xFC);
    BG3SC = Unknown7E0013;
    Unknown7E0016 &= 0xF;
    BG3_X_POS = 0;
    BG3_Y_POS = 0;
    Unknown7E0016 |= (arg3 >> 12);
    BG34NBA = Unknown7E0016;
}

/// $C08E5C
void SetBG4VRAMLocation(ubyte arg1, ushort arg2, ushort arg3) {
    Unknown7E0014 = arg1 & 3;
    Unknown7E0014 |= ((arg2 >> 8) & 0xFC);
    BG4SC = Unknown7E0014;
    Unknown7E0016 &= 0xF;
    BG4_X_POS = 0;
    BG4_Y_POS = 0;
    Unknown7E0016 |= ((arg3 >> 8) & 0xF0);
    BG34NBA = Unknown7E0016;
}

/// $C08E9A
ubyte rand() {
    ushort tmp = ror(cast(ushort)((cast(ushort)(RandA << 8) >> 8) * (RandB & 0xFF)), 2);
    RandB = cast(ushort)(((RandA << 8) | (RandB & 0xFF)) + 0x6D);
    ushort tmp2 = ror(cast(ushort)((tmp & 3) + RandA), 1);
    if (((tmp & 3 + RandA) & 1) != 0) {
        tmp2 |= 0x8000;
    }
    RandA = tmp2;
    return ror(tmp, 2) & 0xFF;
}

/// $C08F8B
void UnknownC08F8B();

/// $C08F98
immutable UnknownC08F98Entry[4] UnknownC08F98 = [
    UnknownC08F98Entry(0xFE80, 0x0100, 0x0200),
    UnknownC08F98Entry(0x0000, 0x0000, 0x0100),
    UnknownC08F98Entry(0x0300, 0x0080, 0x0000),
    UnknownC08F98Entry(0x0200, 0x0200, 0x0000)
];

/// $C08FB0
immutable DMATableEntry[6] DMATable = [
    DMATableEntry(0x01, 0x18, 0x80),
    DMATableEntry(0x09, 0x18, 0x80),
    DMATableEntry(0x00, 0x18, 0x00),
    DMATableEntry(0x08, 0x18, 0x00),
    DMATableEntry(0x00, 0x19, 0x80),
    DMATableEntry(0x08, 0x19, 0x80),
];

/// $C08FC2
immutable ubyte[] UNKNOWN_C08FC2 = [ 0x81, 0x39, 0x80, 0x80, 0x39, 0x00, 0x80, 0x3A, 0x80, 0x01, 0x18, 0x81, 0x09, 0x18, 0x81, 0x00, 0x18, 0x01, 0x08, 0x18, 0x01, 0x00, 0x19, 0x81, 0x08, 0x19, 0x81, 0x81, 0x39, 0x81, 0x80, 0x39, 0x01, 0x80, 0x3A, 0x81, 0xEB, 0x98 ];

/// $C0927C
void UnknownC0927C() {
    Unknown7E0A5E = &UnknownC0DB0F;
    FirstEntity = -1;
    EntityNextEntityTable[29] = -1;
    Unknown7E125A[69] = -1;
    Unknown7E0A52 = 0;
    Unknown7E0A54 = 0;
    ushort x = 0x38;
    do {
        EntityNextEntityTable[x / 2] = cast(short)(x + 2);
        x -= 2;
    } while (x > 0);

    x = 0x88;
    do {
        Unknown7E125A[x / 2] = cast(short)(x + 2);
        x -= 2;
    } while (x > 0);

    x = 0x3A;
    do {
        EntityScriptTable[x / 2] = -1;
        x -= 2;
    } while (x > 0);

    x = 0x3A;
    do {
        EntitySpriteMapFlags[x / 2] = 0;
        EntityTickCallbacks[x / 2] = null;
        x -= 2;
    } while (x > 0);

    x = 6;
    do {
        Unknown7E1A12[x / 2] = 0;
        Unknown7E1A1A[x / 2] = 0;
        Unknown7E1A22[x / 2] = 0;
        Unknown7E1A32[x / 2] = 0;
        Unknown7E1A2A[x / 2] = 0;
        Unknown7E1A3A[x / 2] = 0;
        Unknown7E1A02[x / 2] = 0;
        Unknown7E1A0A[x / 2] = 0;
        EntityDrawPriority[x / 2] = 0;
        x -= 2;
    } while (x > 0);
    ClearEntityDrawSortingTable();
    Unknown7E0A60 = 0;
}

/// $C09279
void UnknownC09279() {
    assert(0, "Not used");
}

/// $C09321
short InitEntityWipe(short actionScript, short x, short y) {
    NewEntityPosZ = 0;
    NewEntityVar0 = 0;
    NewEntityVar1 = 0;
    NewEntityVar2 = 0;
    NewEntityVar3 = 0;
    NewEntityVar4 = 0;
    NewEntityVar5 = 0;
    NewEntityVar6 = 0;
    NewEntityVar7 = 0;
    NewEntityPriority = 0;
    EntityAllocationMinSlot = 0;
    EntityAllocationMaxSlot = 0x1E;
    return InitEntity(actionScript, x, y);
}

short InitEntity(short actionScript, short x, short y) {
    EntityAllocationMinSlot *= 2;
    EntityAllocationMaxSlot *= 2;
    bool allocationFailed;
    short newEntity = UnknownC09C02(allocationFailed);
    if (allocationFailed) {
        return 0;
    }
    bool __ignored;
    short newScript = UnknownC09D03(__ignored);
    EntityScriptIndexTable[newEntity / 2] = newScript;
    Unknown7E125A[newScript / 2] = -1;
    EntityMoveCallbacks[newEntity / 2] = &UnknownC09FAEEntry2;
    EntityScreenPositionCallbacks[newEntity / 2] = &UnknownC0A023;
    EntityDrawCallbacks[newEntity / 2] = &UnknownC0A3A4;
    EntityScriptVar0Table[newEntity / 2] = NewEntityVar0;
    EntityScriptVar1Table[newEntity / 2] = NewEntityVar1;
    EntityScriptVar2Table[newEntity / 2] = NewEntityVar2;
    EntityScriptVar3Table[newEntity / 2] = NewEntityVar3;
    EntityScriptVar4Table[newEntity / 2] = NewEntityVar4;
    EntityScriptVar5Table[newEntity / 2] = NewEntityVar5;
    EntityScriptVar6Table[newEntity / 2] = NewEntityVar6;
    EntityScriptVar7Table[newEntity / 2] = NewEntityVar7;
    EntityDrawPriority[newEntity / 2] = NewEntityPriority;
    EntityAbsXFractionTable[newEntity / 2] = -32768;
    EntityAbsYFractionTable[newEntity / 2] = -32768;
    EntityAbsZFractionTable[newEntity / 2] = -32768;
    EntityScreenXTable[newEntity / 2] = x;
    EntityAbsXTable[newEntity / 2] = x;
    EntityScreenYTable[newEntity / 2] = y;
    EntityAbsYTable[newEntity / 2] = y;
    EntityAbsZTable[newEntity / 2] = NewEntityPosZ;
    newEntity = UnknownC09C57(newEntity);
    //Unreachable code?
    /+
    UnknownC09C99();
    short newScript2 = UnknownC09D03(__ignored);
    EntityScriptIndexTable[newEntity / 2] = newScript2;
    Unknown7E125A[newScript2 / 2] = -1;
    +/
    EntityScriptTable[newEntity / 2] = actionScript;
    EntityAnimationFrames[newEntity / 2] = -1;
    EntityDeltaXFractionTable[newEntity / 2] = 0;
    EntityDeltaXTable[newEntity / 2] = 0;
    EntityDeltaYFractionTable[newEntity / 2] = 0;
    EntityDeltaYTable[newEntity / 2] = 0;
    EntityDeltaZFractionTable[newEntity / 2] = 0;
    EntityDeltaZTable[newEntity / 2] = 0;
    return UnknownC092F5Unknown4(EventScriptPointers[EntityScriptTable[actionScript]], newEntity);
}

short InitEntityUnknown1(const(void)* pc, short entityID) {
    return InitEntityUnknown1(pc, cast(short)(entityID * 2));
}
short InitEntityUnknown2(const(void)* pc, short entityIndex) {
    if (EntityScriptTable[entityIndex / 2] < 0) {
        while(true) {} //oh no
    }
    entityIndex = UnknownC09C99(entityIndex);
    bool __ignored;
    short newScript = UnknownC09D03(__ignored);
    EntityScriptIndexTable[entityIndex / 2] = newScript;
    Unknown7E125A[newScript / 2] = 0;
    return UnknownC092F5Unknown4(pc, entityIndex);
}

short UnknownC092F5Unknown4(const(void)* pc, short entityIndex) {
    ClearSpriteTickCallback(entityIndex);
    EntityProgramCounters[EntityScriptIndexTable[entityIndex / 2]] = pc;
    EntitySleepFrames[EntityScriptIndexTable[entityIndex / 2]] = 0;
    Unknown7E12E6[EntityScriptIndexTable[entityIndex / 2]] = 0;
    return entityIndex / 2;
}
//actually part of the previous function normally, but whatever
void MovementNOP() {}

/// $C0943C
void UnknownC0943C() {
    if (FirstEntity < 0) {
        return;
    }
    auto x = FirstEntity;
    do {
        EntityTickCallbackFlags[x] |= (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED);
        x = EntityNextEntityTable[x];
    } while(x >= 0);
}

/// $C09451
void UnknownC09451();

/// $C09466
void UnknownC09466();

/// $C09C02 - allocates an entity slot
short UnknownC09C02(out bool flag) {
    if (Unknown7E0A54 < 0) {
        flag = true;
        return 0; //actually just whatever was in the Y register when called
    }
    if (Unknown7E0A52 < 0) {
        flag = true;
        return -1;
    }
    short x = Unknown7E0A52;
    short y;
    do {
        if ((x >= EntityAllocationMinSlot) && (x < EntityAllocationMaxSlot)) {
            break;
        }
        y = x;
    } while((x = EntityNextEntityTable[x / 2]) >= 0);
    if (y >= 0) {
        EntityNextEntityTable[y / 2] = EntityNextEntityTable[x / 2];
        flag = false;
        return y;
    } else {
        Unknown7E0A52 = EntityNextEntityTable[x / 2];
        flag = false;
        return y;
    }
}

/// $C09C35
void UnknownC09C35(short);

/// $C09C57
short UnknownC09C57(short index) {
    EntityNextEntityTable[index / 2] = -1;
    if (FirstEntity >= 0) {
        while (EntityNextEntityTable[FirstEntity / 2] >= 0) {} //uh oh
        EntityNextEntityTable[FirstEntity / 2] = index;
        return index;
    } else {
        FirstEntity = index;
        return index;
    }
}

/// $C09C99
short UnknownC09C99(short index) {
    if (EntityScriptIndexTable[index / 2] < 0) {
        return index;
    }
    short Unknown7E0A54Copy = Unknown7E0A54;
    short a = EntityScriptIndexTable[index / 2];
    Unknown7E0A54 = a;
    while((a = Unknown7E125A[a / 2]) > 0) {}
    Unknown7E125A[a / 2] = Unknown7E0A54;
    return index;
}

/// $C09CD7
void UnknownC09CD7();

/// $C09D03 - allocates a script slot
short UnknownC09D03(out bool flag) {
    short result = Unknown7E0A54;
    if (result <= 0) {
        flag = true;
        return result;
    }
    Unknown7E0A54 = Unknown7E125A[result / 2];
    flag = false;
    return result;
}

/// $C09DA1
void ClearSpriteTickCallback(short index) {
    EntityTickCallbacks[index / 2] = &MovementNOP;
}

/// $C09FAE
void UnknownC09FAEEntry2();

/// $C0A023
void UnknownC0A023();

/// $C0A0E3
void UnknownC0A0E3(short arg1, bool overflowed) {
    if ((EntitySpriteMapFlags[arg1 / 2] < 0) || overflowed) {
        return;
    }
    ActionScript8C = EntitySpriteMapPointers[arg1 / 2];
    if (EntityAnimationFrames[arg1 / 2] >= 0) {
        EntityDrawCallbacks[arg1 / 2](EntityAnimationFrames[arg1 / 2]);
    }
}

/// $C0A0CA
void UnknownC0A0CA(short arg1) {
    while (arg1 < 0) {}
    ActionScript88 = cast(ushort)(arg1 * 2);
    UnknownC0A0E3(ActionScript88, arg1 < 0);
}

/// $C0A11C
void CheckHardware() {
    //AntiPiracyScratchSpace = 0x30;
    //AntiPiracyMirrorTest = 0x31;
    if (false/*AntiPiracyScratchSpace != AntiPiracyMirrorTest*/) {
        DisplayAntiPiracyScreen();
    }
    if ((STAT78 & 0x10) != 0) {
        DisplayFaultyGamepakScreen();
    }
}

/// $C0A3A4
// originally handwirtten assembly, id was actually an offset
void UnknownC0A3A4(short id) {
    if ((Unknown7E341A[id / 2] & 1) != 0) {
        ActionScript8C += EntityUnknown2916[id / 2] / 5;
    }
    ActionScript00 = 0x30;
    ActionScript02 = 0x30;
    if ((EntitySurfaceFlags[id /2] & 1) != 0) {
        ActionScript02 = 0x20;
    }
    if ((EntitySurfaceFlags[id / 2] & 2) != 0) {
        ActionScript00 = 0x20;
    }
    short y = 50;
    for (short i = UNKNOWN_30X2_TABLE_38[id / 2] & 0xFF; i >= 0; i--) {
        y++;
        (cast()ActionScript8C[y]).unknown3 = (ActionScript8C[y].unknown3 & 0xCF) | (ActionScript00 & 0xFF);
    }
    for (short i = UNKNOWN_30X2_TABLE_38[ActionScript88 / 2]; i >= 0; i--) {
        y++;
        (cast()ActionScript8C[y]).unknown3 = (ActionScript8C[y].unknown3 & 0xCF) | (ActionScript02 & 0xFF);
    }
    Unknown7E000B = ActionScript8E;
    Unknown7E2400 = EntityDrawPriority[ActionScript88 / 2];
    short Unknown7E2400Copy = Unknown7E2400;
    if ((Unknown7E2400 & 0x8000) != 0) {
        Unknown7E2400 = EntityDrawPriority[Unknown7E2400Copy & 0x3F];
        if ((Unknown7E2400 & 0x4000) == 0) {
            EntityDrawPriority[ActionScript88 / 2] = 0;
        }
    }
    UnknownC0AC43();
    Unknown7E000B = ActionScript8E;
    UnknownC08C58(ActionScript8C, EntityScreenXTable[ActionScript88 / 2], EntityScreenYTable[ActionScript88 / 2]);
}

/// $C0A443
//what a mess
void UnknownC0A443() {
    ActionScript00 = (Unknown7E2890 + CurrentEntitySlot >> 3) & 1;
    ActionScript02 = cast(ubyte)((EntityDirections[ActionScript88 / 2] * 2) | ActionScript00);
    if (((UNKNOWN_30X2_TABLE_40[ActionScript88 / 2] >> 8) | ((UNKNOWN_30X2_TABLE_40[ActionScript88 / 2] &0xFF) << 8) | ActionScript02) == Unknown7E3456[ActionScript88 / 2]) {
        return;
    }
    Unknown7E3456[ActionScript88 / 2] = cast(short)((UNKNOWN_30X2_TABLE_40[ActionScript88 / 2] >> 8) | ((UNKNOWN_30X2_TABLE_40[ActionScript88 / 2] &0xFF) << 8) | ActionScript02);

    UnknownC0A443Unknown10();
}

/// $C0A472
void UnknownC0A472() {
    Unknown7E2892 = (Unknown7E0002 >> 3) & 1;
    UnknownC0A443Unknown10();
}
void UnknownC0A443MovementEntry3() {
    UnknownC0A443Unknown9(ActionScript88);
}
void UnknownC0A443Entry2(short arg1) {
    UnknownC0A443Unknown9(cast(short)(arg1 * 2));
}
void UnknownC0A443Unknown9(short arg1) {
    Unknown7E2892 = EntityAnimationFrames[arg1 / 2];
    UnknownC0A443Entry4(arg1);
}
void UnknownC0A443Entry3() {
    Unknown7E2892 = 0;
    if (UnknownC0C711() != 0) {
        UnknownC0A443Unknown10();
    }
}
void UnknownC0A443MovementEntry1() {
    Unknown7E2892 = 1;
    if (UnknownC0C711() != 0) {
        UnknownC0A443Unknown10();
    }
}
void UnknownC0A443MovementEntry2() {
    Unknown7E2892 = 0;
    UnknownC0A443Unknown10();
}
void UnknownC0A443Unknown10() {
    UnknownC0A443Entry4(ActionScript88);
}
void UnknownC0A443Entry4(short arg1) {
    ActionScript08 = arg1;
    ActionScript00 = cast(ubyte)(EntityTileHeights[arg1 / 2]);
    DMA_COPY_SIZE = EntityByteWidths[arg1 / 2];
    DMA_COPY_VRAM_DEST = EntityVramAddresses[arg1 / 2];
    //x04 = EnttiyGraphicsPointerHigh[arg1 / 2]
    ubyte* x02 = cast(ubyte*)EntityGraphicsPointers[arg1 / 2];
    if (SpriteDirectionMappings4Direction[EntityDirections[arg1 / 2]] != 0) {
        for (short i = SpriteDirectionMappings4Direction[EntityDirections[arg1 / 2]]; i > 0; i--) {
            x02 += 4;
        }
    }
    if (Unknown7E2892 != 0) {
        x02 += 2;
    }
    if (*x02 != 0) {
        return;
    }
    if ((EntitySurfaceFlags[arg1 / 2] & 8) != 0) {
        return;
    }
    Unknown7E0091 = 3;
    DMA_COPY_RAM_SRC = &UnknownC40BE8;
    UnknownC0A56E();
    if (--ActionScript00 == 0) {
        return;
    }
    if ((ActionScript06 & 0x4) != 0) {
        UnknownC0A56E();
        if (--ActionScript00 == 0) {
            return;
        }
    }
    Unknown7E341A[ActionScript08 / 2] = *x02;
    //TODO: rework this
    //DMA_COPY_RAM_SRC = cast(void*)((*x02) & 0xFFF0);
    Unknown7E0091 = 0;
    //DMA_COPY_RAM_SRC + 2 = UNKNOWN_30X2_TABLE_31[arg1 / 2];
    while (true) {
        UnknownC0A56E();
        if (--ActionScript00 == 0) {
            return;
        }
        DMA_COPY_RAM_SRC += DMA_COPY_SIZE;
    }
}

/// $C0A56E
void UnknownC0A56E() {
    if (((((DMA_COPY_SIZE / 2) + DMA_COPY_VRAM_DEST - 1) ^ DMA_COPY_VRAM_DEST) & 0x100) != 0) {
        const(void)* DMA_COPY_RAM_SRCCopy = DMA_COPY_RAM_SRC;
        ushort DMA_COPY_SIZECopy = DMA_COPY_SIZE;
        ushort DMA_COPY_VRAM_DESTCopy = DMA_COPY_VRAM_DEST;
        DMA_COPY_SIZE = cast(ushort)((((DMA_COPY_VRAM_DEST + 0x100) & 0xFF00) - DMA_COPY_VRAM_DEST) * 2);
        CopyToVramCommon();
        DMA_COPY_RAM_SRC += DMA_COPY_SIZE;
        DMA_COPY_VRAM_DEST = cast(ushort)(((DMA_COPY_VRAM_DEST + 0x100) & 0xFF00) + 0x100);
        DMA_COPY_SIZE = cast(ushort)(DMA_COPY_SIZECopy - DMA_COPY_SIZE);
        CopyToVramCommon();
        DMA_COPY_VRAM_DEST = DMA_COPY_VRAM_DESTCopy;
        DMA_COPY_SIZE = DMA_COPY_SIZECopy;
        DMA_COPY_RAM_SRC = DMA_COPY_RAM_SRCCopy;
    } else {
        CopyToVramCommon();
    }
    if ((DMA_COPY_VRAM_DEST & 0x100) == 0) {
        DMA_COPY_VRAM_DEST += 0x100;
        return;
    }
    if (((((((DMA_COPY_SIZE + 0x20) & 0xFFC0) / 2) + DMA_COPY_VRAM_DEST) ^ DMA_COPY_VRAM_DEST) & 0x100) != 0) {
        DMA_COPY_VRAM_DEST = cast(ushort)((((DMA_COPY_SIZE + 0x20) & 0xFFC0) / 2) + DMA_COPY_VRAM_DEST);
    } else {
        DMA_COPY_VRAM_DEST = cast(ushort)((((DMA_COPY_SIZE + 0x20) & 0xFFC0) / 2) + DMA_COPY_VRAM_DEST - 0x100);
    }
}

/// $C0A60B
ushort[12] SpriteDirectionMappings4Direction = [0, 0, 1, 2, 2, 2, 3, 0, 4, 5, 6, 7];

/// $C0A623
ushort[8] SpriteDirectionMappings8Direction = [0, 4, 1, 5, 2, 6, 3, 7];

/// $C0A66D
void UnknownC0A66D(short arg1) {
    EntityDirections[ActionScript88 / 2] = arg1;
}

/// $C0A673
short UnknownC0A673() {
    return EntityDirections[ActionScript88 / 2];
}

/// $C0A780
void UnknownC0A780(short arg1) {
    Unknown7E2896 = cast(short)(arg1 * 2);
    UnknownC0A794();
}

/// $C0A794
void UnknownC0A794() {
    ushort x00 = EntityTileHeights[Unknown7E2896 / 2];
    DMA_COPY_SIZE = EntityByteWidths[Unknown7E2896 / 2];
    DMA_COPY_VRAM_DEST = EntityVramAddresses[Unknown7E2896 / 2];
    const(ubyte)* x02 = cast(const(ubyte)*)(EntityGraphicsPointers[Unknown7E2896 / 2] + SpriteDirectionMappings8Direction[EntityDirections[Unknown7E2896 / 2] / 2] * 4 + EntityAnimationFrames[Unknown7E2896 / 2]);
    if (((*x02 & 2) == 0) && ((EntitySurfaceFlags[Unknown7E2896 / 2] & 8) != 0)) {
        Unknown7E0091 = 3;
        DMA_COPY_RAM_SRC = &UnknownC40BE8;
        UnknownC0A56E();
        if (--x00 == 0) {
            return;
        }
        if ((EntitySurfaceFlags[Unknown7E2896 / 2] & 4) != 0) {
            UnknownC0A56E();
            x00--;
            return;
        }
    }
    Unknown7E341A[Unknown7E2896 / 2] = *x02;
    //TODO: figure this out too
    //DMA_COPY_RAM_SRC = (*x02) & 0xFFFE;
    Unknown7E0091 = 0;
    //DMA_COPY_RAM_SRC + 2= UNKNOWN_30X2_TABLE_31[Unknown7E2896 / 2];
    while (true) {
        UnknownC0A56E();
        if (--x00 == 0) {
            break;
        }
        DMA_COPY_RAM_SRC += DMA_COPY_SIZE;
    }
}

/// $C0ABA8
void WaitForSPC700() {
    APUIO2 = 0;
    APUIO0 = 0;
    do {
        APUIO0 = 0xFF;
        APUIO1 = 0x00;
    } while ((APUIO0 != 0xAA) || (APUIO1 != 0xBB));
}

/// $C0ABC6
void StopMusic() {
    APUIO0 = 0;
    while (UnknownC0AC20() != 0) {}
    CurrentMusicTrack = 0xFFFF;
}

/// $C0ABBD
void UnknownC0ABBD(short);

/// $C0ABC6
//original version had separate bank/addr parameters
void LoadSPC700Data(const(ubyte)* data) {
    SPC_DATA_PTR = data;
    //Unknown7E00C8 = bank;
    ushort y = 0;
    ubyte b;
    if ((APUIO0 != 0xAA) || (APUIO1 != 0xBB)) {
        WaitForSPC700();
    }
    Unknown7E001E &= 0x7F;
    NMITIMEN = Unknown7E001E;
    ubyte a = 0xCC;
    ushort x;
    // proceed at your own peril.
    // definitely going to have to triple check this one later
    goto l7;
    l1:
        b = SPC_DATA_PTR[y++];
        a = 0;
        goto l4;
    l2:
        b = SPC_DATA_PTR[y++];
        while (APUIO0 != a) {}
        a++;
    l4:
        APUIO0 = a;
        APUIO1 = b;
        if (--x != 0) {
            goto l2;
        }
        while(APUIO0 != a) {}
        while((a += 3) == 0) {}
    l7:
        ubyte tmpA = a;
        x = cast(ushort)(a | (b << 8));
        if (SPC_DATA_PTR[y] != 0) {
            a = 0;
            b = 5;
        } else {
            y += 2;
            a = SPC_DATA_PTR[y];
            b = SPC_DATA_PTR[y + 1];
            y += 2;
        }
        APUIO2 = a;
        APUIO3 = b;
        APUIO1 = x < 1;
        a = tmpA;
        APUIO0 = a;
        while (APUIO0 != a) {}
        if (x < 1) {
            goto l1;
        }
        while (APUIO0 != 0 || APUIO1 != 0) {}
        Unknown7E001E |= 0x80;
        NMITIMEN = Unknown7E001E;
}

/// $C0ABE0 - Play a sound effect
void PlaySfx(short sfx) {
    if (sfx != 0) {
        SoundEffectQueue[SoundEffectQueueEndIndex] = cast(ubyte)(sfx | Unknown7E1ACA);
        SoundEffectQueueEndIndex = (SoundEffectQueueEndIndex + 1) & 7;
        Unknown7E1ACA ^= 0x80;
        return;
    }
    PlaySfxUnknown();
}
void PlaySfxUnknown() {
    APUIO3 = 0x57;
}

/// $C0AC0C
void UnknownC0AC0C(short arg1) {
    APUIO1 = cast(ubyte)(arg1 | Unknown7E1ACB);
    Unknown7E1ACB ^= 0x80;
}

/// $C0AC20
ubyte UnknownC0AC20() {
    return APUIO0;
}

/// $C0AC2C
immutable ubyte[14] StereoMonoData = [
    0x01, 0x00, 0x31, 0x04, 0x00, 0x00, 0x00,
    0x01, 0x00, 0x31, 0x04, 0x01, 0x00, 0x00,
];

/// $C0AC3A
void UnknownC0AC3A(short arg1) {
    APUIO2 = cast(ubyte)arg1;
}

/// $C0AC43
void UnknownC0AC43() {
    Unknown7E000B = 0xC4;
    ActionScript04 = 0xC4;
    ActionScript00 = ((EntitySurfaceFlags[ActionScript88 / 2] & 1) != 0) ? 5 : 0;
    switch (EntitySurfaceFlags[ActionScript88 / 2] & 0xC) {
        default:
            if (EntityByteWidths[ActionScript88 / 2] == 0x40) {
                ActionScript02Overlay = EntityRippleOverlayPtrs[ActionScript88 / 2];
                if (Unknown7E305A[ActionScript88 / 2] == 0) {
                    EntityRippleOverlayPtrs[ActionScript88 / 2] = UnknownC0AD56(&Unknown7E3096[0], Unknown7E305A[ActionScript88 / 2]);
                }
                Unknown7E305A[ActionScript88 / 2]--;
                ActionScript06 = EntityScreenXTable[ActionScript88 / 2];
                UnknownC08C58(Unknown7E3096[ActionScript88 / 2] + ActionScript00, EntityScreenXTable[ActionScript88 / 2], EntityScreenYTable[ActionScript88 / 2]);
            } else {
                ActionScript02Overlay = EntityBigRippleOverlayPtrs[ActionScript88 / 2];
                if (Unknown7E310E[ActionScript88 / 2] == 0) {
                    EntityBigRippleOverlayPtrs[ActionScript88 / 2] = UnknownC0AD56(&Unknown7E314A[0], Unknown7E310E[ActionScript88 / 2]);
                }
                Unknown7E310E[ActionScript88 / 2]--;
                ActionScript06 = EntityScreenXTable[ActionScript88 / 2];
                UnknownC08C58(Unknown7E314A[ActionScript88 / 2] + ActionScript00 + ActionScript00, EntityScreenXTable[ActionScript88 / 2], cast(short)(EntityScreenYTable[ActionScript88 / 2] + 8));
            }
            goto case;
        case 0:
            if (Unknown7E2E7A[ActionScript88 / 2] != 0) {
                return;
            }
            if ((Unknown7E2E7A[ActionScript88 / 2] & 0x80) == 0) {
                break;
            }
            goto case;
        case 4:
            if (ActionScript88 >= 46) {
                return;
            }
            ActionScript02Overlay = EntitySweatingOverlayPtrs[ActionScript88 / 2];
            if (Unknown7E2FA6[ActionScript88 / 2] == 0) {
                EntitySweatingOverlayPtrs[ActionScript88 / 2] = UnknownC0AD56(&Unknown7E2FE2[0], Unknown7E2FA6[ActionScript88 / 2]);
            }
            Unknown7E2FA6[ActionScript88 / 2]--;
            ActionScript06 = EntityScreenXTable[ActionScript88 / 2];
            if (Unknown7E2FE2[ActionScript88 / 2] is null) {
                break;
            }
            UnknownC08C58(Unknown7E2FE2[ActionScript88 / 2] + ActionScript00, EntityScreenXTable[ActionScript88 / 2], EntityScreenYTable[ActionScript88 / 2]);
            break;
    }
    if ((Unknown7E2E7A[ActionScript88 / 2] & 0x4000) == 0) {
        return;
    }
    if (ActionScript88 >= 46) {
        return;
    }
    ActionScript02Overlay = EntityMushroomizedOverlayPtrs[ActionScript88 / 2];
    if (Unknown7E2EF2[ActionScript88 / 2] == 0) {
        EntityMushroomizedOverlayPtrs[ActionScript88 / 2] = UnknownC0AD56(&Unknown7E2F2E[0], Unknown7E2EF2[ActionScript88 / 2]);
    }
    Unknown7E2EF2[ActionScript88 / 2]--;
    ActionScript06 = EntityScreenXTable[ActionScript88 / 2];
    UnknownC08C58(Unknown7E2F2E[ActionScript88 / 2] + ActionScript00, EntityScreenXTable[ActionScript88 / 2], EntityScreenYTable[ActionScript88 / 2]);
}

/// $C0AD56
const(OverlayScript)* UnknownC0AD56(const(SpriteMap)** arg1, out ushort frames) {
    ushort y = 0;
    NextCommand:
    if (ActionScript02Overlay[y].command == 1) {
        arg1[ActionScript88 / 2] = ActionScript02Overlay[y++].spriteMap;
        goto NextCommand;
    }
    if (ActionScript02Overlay[y].command == 3) {
        ActionScript02Overlay = ActionScript02Overlay[y++].dest;
        goto NextCommand;
    }
    frames = ActionScript02Overlay[y++].frames;
    ActionScript08 = y;
    return &ActionScript02Overlay[y];
}

/// $C0AD9F
void UnknownC0AD9F() {
    BG3VOFS = BG3_Y_POS & 0xFF;
    BG3VOFS = (BG3_Y_POS >> 8) & 0xFF;
}

/// $C0AE16
immutable ubyte[7] DMAFlags = [ 1 << 0, 1 << 1, 1 << 2, 1 << 3, 1 << 4, 1 << 5, 1 << 6];

/// $C0AE34
void UnknownC0AE34(short arg1) {
    HDMAEN_MIRROR &= UnknownC0AE44[arg1];
}

/// $C0AE44
immutable ubyte[8] UnknownC0AE44 = [0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F];

/// $C0AFCD
void UnknownC0AFCD(short arg1) {
    TM_MIRROR = UnknownC0AFF1[arg1];
    TD_MIRROR = UnknownC0AFFC[arg1];
    CGWSEL = UnknownC0B006[arg1];
    CGADSUB = UnknownC0B010[arg1];
}

/// $C0AFF1
immutable ubyte[11] UnknownC0AFF1 = [0x17, 0x1F, 0x17, 0x17, 0x17, 0x17, 0x15, 0x15, 0x15, 0x15, 0x15];

/// $C0AFFC
immutable ubyte[10] UnknownC0AFFC = [0x00, 0x00, 0x08, 0x08, 0x08, 0x08, 0x02, 0x02, 0x02, 0x02];

/// $C0B006
immutable ubyte[10] UnknownC0B006 = [0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02];

/// $C0B010
immutable ubyte[10] UnknownC0B010 = [0x00, 0x00, 0x24, 0x64, 0xA4, 0xE4, 0x21, 0x61, 0xA1, 0xE1];

/// $C0B01A
void SetColData(ubyte red, ubyte green, ubyte blue) {
    FIXED_COLOUR_DATA = (red & 0x1F) | 0x20;
    FIXED_COLOUR_DATA = (green & 0x1F) | 0x40;
    FIXED_COLOUR_DATA = (blue & 0x1F) | 0x80;
}

/// $C0B039
void SetColourAddSubMode(ubyte cgwsel, ubyte cgadsub) {
    CGWSEL = cgwsel;
    CGADSUB = cgadsub;
}

/// $C0B047
void SetWindowMask(ushort arg1, ushort arg2) {
    W12SEL = UnknownC0B0A6[arg1 & 3] & ((arg2 != 0) ? 0xAA : 0xFF);
    W34SEL = UnknownC0B0A6[(arg1>>2) & 3] & ((arg2 != 0) ? 0xAA : 0xFF);
    WOBJSEL = UnknownC0B0A6[(arg1>>4) & 3] & ((arg2 != 0) ? 0xAA : 0xFF);
    TMW = arg1 & 0x1F;
    TSW = arg1 & 0x1F;
    WBGLOG = (arg2 != 0) ? 0 : 0x55;
    WOBJLOG = (arg2 != 0) ? 0 : 0x55;
}

/// $C0B0A6
immutable ubyte[4] UnknownC0B0A6 = [0x00, 0x0F, 0xF0, 0xFF];

/// $C0B0AA
void UnknownC0B0AA() {
    WH0 = 0xFF;
    WH2 = 0xFF;
}

/// $C0B0B8
void UnknownC0B0B8(short arg1, const(ubyte)* arg2) {
    //DMAChannels[arg1].A1B = bank of arg2;
    //DMAChannels[arg1].DASB = bank of arg2;
    DMAChannels[arg1].BBAD = 0x26;
    DMAChannels[arg1].DMAP = *arg2;
    DMAChannels[arg1].A1T = &arg2[1];
    HDMAEN_MIRROR |= DMAFlags[arg1];
}

/// $C0B0EF
void UnknownC0B0EF(ubyte arg1, ubyte arg2) {
    Unknown7E3FC6[0].count = 0x64 | 0x80;
    Unknown7E3FC6[0].ptr = &Unknown7E3FD0[0];
    Unknown7E3FC6[1].count = 0x7C | 0x80;
    Unknown7E3FC6[2].count = 0;
    //DMAChannels[arg1].A1B = 0x7E;
    //DMAChannels[arg1].DASB = 0x7E;
    DMAChannels[arg1].BBAD = 0x26;
    DMAChannels[arg1].DMAP = arg2;
    Unknown7E3FC6[1].ptr = ((arg2 & 4) != 0) ? (&Unknown7E4160[0]) : (&Unknown7E4098[0]);
    DMAChannels[arg1].A1T = &Unknown7E3FC6;
    HDMAEN_MIRROR |= DMAFlags[arg1];
}

/// $C0B149
void UnknownC0B149(ushort, ushort, short, short);

/// $C0B425
immutable byte[256] SineLookupTable = [0, 3, 6, 9, 12, 15, 18, 21, 24, 28, 31, 34, 37, 40, 43, 46, 48, 51, 54, 57, 60, 63, 65, 68, 71, 73, 76, 78, 81, 83, 85, 88, 90, 92, 94, 96, 98, 100, 102, 104, 106, 108, 109, 111, 112, 114, 115, 117, 118, 119, 120, 121, 122, 123, 124, 124, 125, 126, 126, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 126, 126, 125, 124, 124, 123, 122, 121, 120, 119, 118, 117, 115, 114, 112, 111, 109, 108, 106, 104, 102, 100, 98, 96, 94, 92, 90, 88, 85, 83, 81, 78, 76, 73, 71, 68, 65, 63, 60, 57, 54, 51, 48, 46, 43, 40, 37, 34, 31, 28, 24, 21, 18, 15, 12, 9, 6, 3, 0, -3, -6, -9, -12, -15, -18, -21, -24, -28, -31, -34, -37, -40, -43, -46, -48, -51, -54, -57, -60, -63, -65, -68, -71, -73, -76, -78, -81, -83, -85, -88, -90, -92, -94, -96, -98, -100, -102, -104, -106, -108, -109, -111, -112, -114, -115, -117, -118, -119, -120, -121, -122, -123, -124, -124, -125, -126, -126, -127, -127, -127, -127, -127, -127, -127, -127, -127, -127, -127, -126, -126, -125, -124, -124, -123, -122, -121, -120, -119, -118, -117, -115, -114, -112, -111, -109, -108, -106, -104, -102, -100, -98, -96, -94, -92, -90, -88, -85, -83, -81, -78, -76, -73, -71, -68, -65, -63, -60, -57, -54, -51, -48, -46, -43, -40, -37, -34, -31, -28, -24, -21, -18, -15, -12, -9, -6, -3];

/// $C0B525
void FileSelectInit() {
    UnknownC08726();
    UnknownC0927C();
    OAMClear();
    UpdateScreen();
    UnknownC01A86();
    AllocSpriteMem(-32768, 0);
    InitializeMiscObjectData();
    OverworldSetupVRAM();
    UnknownC432B1();
    UnknownC005E7();
    memcpy(&palettes[16][0], SpriteGroupPalettes.ptr, 0x100);
    UnknownC200D9();
    CopyToVram(3, 0x800, 0x7C00, Unknown7F0000.ptr);
    Decomp(TextWindowGraphics.ptr, Unknown7F0000.ptr);
    memcpy(&Unknown7F0000[0x2000], &Unknown7F0000[0x1000], 0x2A00);
    UnknownC44963(1);
    memcpy(&palettes[0][0], TextWindowFlavourPalettes.ptr, 0x40);
    LoadBackgroundAnimation(BackgroundLayer.FileSelect, 0);
    EntityAllocationMinSlot = 0x17;
    EntityAllocationMaxSlot = 0x18;
    InitEntity(ActionScript.Unknown787, 0, 0);
    TM_MIRROR = 0x16;
    BG2_Y_POS = 0;
    BG1_Y_POS = 0;
    BG2_X_POS = 0;
    BG1_X_POS = 0;
    OAMClear();
    UpdateScreen();
    FadeIn(1, 1);
    UnknownC1FF6B();
    FadeOutWithMosaic(1, 1, 0);
    UnknownC09C35(0x17);
    TM_MIRROR = 0x17;
    UnknownC4FD18(gameState.soundSetting - 1);
}

/// $C0B65F
void UnknownC0B65F(short arg1, short arg2) {
    gameState.leaderX.integer = arg1;
    gameState.leaderY.integer = arg2;
    gameState.leaderDirection = 2;
    gameState.partyMembers[0] = 1;
    EntityScreenXTable[24] = arg1;
    EntityScreenYTable[24] = arg2;
}

/// $C0B67F
void UnknownC0B67F() {
    UnknownC0927C();
    UnknownC01A86();
    AllocSpriteMem(short.min, 0);
    InitializeMiscObjectData();
    BattleDebug = 0;
    Unknown7E5D74 = 0;
    Unknown7E4A58 = 1;
    Unknown7E4A5A = -1;
    Unknown7E4A5E = 10;
    BattleSwirlCountdown = 0;
    Unknown7E5D9A = 0;
    SetBoundaryBehaviour(1);
    DadPhoneTimer = 0x697;
    UnknownC0851C(&UnknownC0DC4E);
    teleportStyle = TeleportStyle.None;
    teleportDestination = 0;
    Unknown7EB4A8 = -1;
    EntityAllocationMinSlot = 0x17;
    EntityAllocationMaxSlot = 0x18;
    InitEntity(ActionScript.Unknown001, 0, 0);
    UnknownC02D29();
    UnknownC03A24();
    memset(&palettes[0][0], 0, 0x200);
    UnknownC47F87();
    OverworldInitialize();
    LoadMapAtPosition(gameState.leaderX.integer, gameState.leaderY.integer);
    SpawnBuzzBuzz();
    LoadWindowGraphics();
    UnknownC44963(1);
    UnknownC039E5();
}

/// $C0B731
void InitBattleOverworld() {
    if (BattleDebug == 0) {
        return;
    }
    if ((Debug == 0) || (UnknownEFE708() != -1)) {
        if (InstantWinCheck() != 0) {
            InstantWinHandler();
            BattleDebug = 0;
        }
    } else {
        short x10 = InitBattleCommon();
        UnknownC07B52();
        if (teleportDestination == 0) {
            if (x10 != 0) {
                if (Debug == 0) {
                    return;
                }
                if (DebugCheckViewCharacterMode() != 0) {
                    return;
                }
            }
            ReloadMap();
            FadeIn(1, 1);
        } else {
            TeleportMainLoop();
        }
    }
    for (short i = 0; i != 0x17; i++) {
        EntityCollidedObjects[i] = 0xFFFF;
        UNKNOWN_30X2_TABLE_41[i] = 0;
        EntitySpriteMapFlags[i] &= 0x7FFF;
    }
    OverworldStatusSuppression = 0;
    UnknownC09451();
    Unknown7E5D58 = 0x78;
    TouchedEnemy = -1;
}

//$C0B7D8
void ebMain() {
    UnknownC43317();
    //setjmp(&jmpbuf1);
    InitIntro();
    FileSelectInit();
    UnknownC0B67F();
    FadeIn(1, 1);
    UpdateScreen();
    //setjmp(&jmpbuf2);
    UnknownC43F53();
    while (1) {
        OAMClear();
        UnknownC09466();
        UpdateScreen();
        UnknownC4A7B0();
        WaitUntilNextFrame();
        if (((CurrentQueuedInteraction - NextQueuedInteraction) != 0) && !BattleSwirlCountdown && !BattleSwirlFlag && !BattleDebug) {
            ProcessQueuedInteractions();
            Unknown7E5D74++;
        } else if ((gameState.unknownB0 != 2) && (gameState.walkingStyle != WalkingStyle.Escalator) && !BattleSwirlCountdown) {
            if (!BattleDebug) {
                InitBattleOverworld();
                Unknown7E5D74++;
            } else if (((pad_press[0] & (PAD_A | PAD_L)) != 0) || (gameState.walkingStyle == WalkingStyle.Bicycle)) {
                UnknownC0943C();
                GetOffBicycle();
                UnknownC09451();
                continue;
            }
            if (Debug) {
                if (((pad_state[0] & (PAD_B | PAD_SELECT)) != 0) && (((pad_press[0] & PAD_R)) != 0)) {
                    DebugYButtonMenu();
                    continue;
                }
                if ((pad_press[1] & PAD_A) != 0) {
                    UnknownC490EE();
                }
                if ((pad_press[1] & PAD_B) != 0) {
                    UnknownC4E366();
                }
            }
            if (BattleSwirlCountdown) {
                continue;
            }
            if (BattleSwirlFlag) {
                continue;
            }
            if (Unknown7E5D74) {
                Unknown7E5D74--;
            } else if (!Unknown7E5D9A) {
                if ((pad_press[0] & PAD_A) != 0 ) {
                    OpenMenuButton();
                } else if (((pad_press[0] & (PAD_B | PAD_SELECT)) != 0) && (gameState.walkingStyle != WalkingStyle.Bicycle)) {
                    OpenHPPPDisplay();
                } else if ((pad_press[0] & PAD_X) != 0) {
                    ShowTownMap();
                } else if ((pad_press[0] & PAD_L) != 0) {
                    OpenMenuButtonCheckTalk();
                }
            }
            if (teleportDestination) {
                TeleportMainLoop();
            }
            if (!Debug && ((pad_press[1] & PAD_B) != 0)) {
                for (short i = 0; i < TOTAL_PARTY_COUNT; i++) {
                    PartyCharacters[i].hp.target = PartyCharacters[i].maxHP;
                    PartyCharacters[i].pp.target = PartyCharacters[i].maxPP;
                }
            }
        }
        if (UnknownC04FFE() && !Spawn()) {
            //longjmp(&jmpbuf1, 0);
        }
        if (Debug && ((pad_state[0] & PAD_START) != 0) && ((pad_state[0] & PAD_SELECT) == 0)) {
            break;
        }
    }
}

/// $C0B99A
void GameInit() {
    CheckSRAMIntegrity();
    InitializeSPC700();
    EnableNMIJoypad();
    CheckHardware();
    WaitUntilNextFrame();
    WaitUntilNextFrame();
    version(DebugBuild) {
        if ((pad_state[0] & (PAD_DOWN | PAD_L)) != 0) {
            Debug = 1;
            DebugMenuLoad();
            return;
        }
    }
    Debug = 0;
    ebMain();
}

/// $C0BD96
void UnknownC0BD96();

/// $C0C30C
void UnknownC0C30C(short arg1) {
  if (getEventFlag(NPCConfig[EntityTPTEntries[arg1]].eventFlag)) {
    EntityDirections[arg1] = Direction.Up; // 0
  } else {
    EntityDirections[arg1] = Direction.Down; // 4
  }
  UnknownC0A443Entry2(arg1);
}

/// $C0C711
short UnknownC0C711() {
    //weird...
    if (((EntityScreenXTable[CurrentEntitySlot] - UnknownC42A1F[UNKNOWN_30X2_TABLE_36[CurrentEntitySlot]]) | (EntityScreenYTable[CurrentEntitySlot] - UnknownC42A41[UNKNOWN_30X2_TABLE_36[CurrentEntitySlot]]) | (CurrentEntitySlot + 8) & 0xFF00) == 0) {
        return -1;
    } else {
        return 0;
    }
}

/// $C0DA31
//this looks pretty ugly... is this right?
void UnknownC0DA31() {
    if (FirstEntity + 1 == 0) {
        return;
    }
    short x02 = 0;
    for (short i = 0; i != 0x1E; i++) {
        if (EntityScriptTable[i] + 1 == 0) {
            continue;
        }
        if (EntityDrawPriority[i] - 1 == 0) {
            if (((EntityScreenYTable[i] + 8) & 0xFE00) == 0) {
                EntityDrawSorting[x02++] = cast(short)(i + 1);
            } else {
                UnknownC0A0CA(i);
            }
        }
    }
    EntityDrawSorting[x02] = -1;
    for (short i = x02; i-- != 0;)  {
        short j;
        for (j = 0; EntityDrawSorting[j] == 0; j++) {}
        x02 = j;
        short x12 = j;
        short y = EntityAbsYTable[j - 1];
        while (EntityDrawSorting[++j] + 1 != 0) {
            if (EntityDrawSorting[j] == 0) {
                continue;
            }
            if (y >= EntityAbsYTable[EntityDrawSorting[j - 1]]) {
                continue;
            }
            y = EntityAbsYTable[EntityDrawSorting[j - 1]];
            x12 = j;
        }
        UnknownC0A0CA(cast(short)(EntityDrawSorting[x12] - 1));
        EntityDrawSorting[x12] = 0;
    }
}

/// $C0DB0F
void UnknownC0DB0F() {
    if (pad_state[1] & PAD_SELECT) {
        UnknownC0DA31();
        return;
    }

    int dp16 = -1;
    uint dp14 = FirstEntity;

    // UNKNOWN6
    // I guess this is a micro-optimization they decided to add here...? We've seen what == -1 looks like normally,
    // and this is logically equivalent to that, but usually the compiler just does CMP #$FFFF
    while (dp14 + 1) {
        if (EntityScreenYTable[dp14 / 2] < 256 || EntityScreenYTable[dp14 / 2] >= -64u) {
            // UNKNOWN3
            if (EntityDrawPriority[dp14 / 2] == 1) {
                EntityDrawSorting[dp14 / 2] = cast(short)dp16;
                dp16 = dp14 / 2;
            } else {
                // UNKNOWN4
                UnknownC0A0CA(cast(short)(dp14 / 2));
            }
        }
        // UNKNOWN5
        dp14 = EntityNextEntityTable[dp14 / 2];
    }

    // UNKNOWN12
    // Same little optimization as above
    while (dp16 + 1) {
        // UNKNOWN7
        uint dp10 = dp16;
        uint dp0E = EntityAbsYTable[dp16];
        uint dp04 = -1;
        uint dp02 = dp16;
        uint y = EntityDrawSorting[dp16];
        // UNKNOWN10
        // They really liked doing this huh...
        while (y + 1) {
            // UNKNOWN8
            if (EntityAbsYTable[y] >= dp0E) {
                dp0E = EntityAbsYTable[y];
                dp10 = y;
                dp04 = dp02;
            }
            // UNKNOWN9
            dp02 = y;
            y = EntityDrawSorting[y];
        }
        UnknownC0A0CA(cast(short)dp10);

        if (dp04 + 1) {
            EntityDrawSorting[dp04] = EntityDrawSorting[dp10];
        } else {
            // UNKNOWN11
            dp16 = EntityDrawSorting[dp10];
        }
    }
    // UNKNOWN13
}

/// $C0DBE6
short UnknownC0DBE6(short arg1, void function() arg2) {
    Unknown7E9E3CEntry* x10 = &Unknown7E9E3C[0];
    short i;
    for (i = 0; i < 4; i++) {
        if (x10.unknown0 == 0) {
            break;
        }
        x10++;
    }
    x10.unknown0 = arg1;
    x10.unknown2 = arg2;
    return i;
}

/// $C0DC4E
void UnknownC0DC4E() {
    if ((Unknown7E0002 == 0) && (DadPhoneTimer != 0)) {
        DadPhoneTimer--;
    }
    if (window_head != -1) {
        return;
    }
    if (BattleModeFlag != 0) {
        return;
    }
    if (BattleSwirlCountdown != 0) {
        return;
    }
    if (BattleSwirlFlag != 0) {
        return;
    }
    for (short i = 0; i < Unknown7E9E3C.length; i++) {
        if (Unknown7E9E3C[i].unknown0 == 0) {
            continue;
        }
        if (--Unknown7E9E3C[i].unknown0 != 0) {
            continue;
        }
        Unknown7E9E3C[i].unknown2();
    }
}

/// $C0DCC6
void LoadDadPhone();

/// $C0DD0F
void UnknownC0DD0F();

/// $C0DD2C
void UnknownC0DD2C(short);

/// $C0DD53
void SetTeleportState(ubyte arg1, TeleportStyle arg2) {
    teleportDestination = arg1;
    teleportStyle = arg2;
}

/// $C0DD79
void UnknownC0DD79();

/// $C0DE16
void UnknownC0DE16();

/// $C0DE46
void UnknownC0DE46();

/// $C0DF22
void UnknownC0DF22(ushort arg1) {
    FixedPoint1616 x0E;
    switch (Unknown7E9F43) {
        case 1:
            if (gameState.unknown92 == 3) {
                FixedPoint1616 x06;
                x06.combined = Unknown7E9F45.combined;
                x06.fraction += 0x51E;
                if (x06.fraction < 0x51E) {
                    x06.integer++;
                }
                x0E = x06;
            } else {
                FixedPoint1616 x06;
                x06.combined = Unknown7E9F45.combined;
                x06.fraction += 0x3333;
                if (x06.fraction < 0x3333) {
                    x06.integer++;
                }
                x0E = x06;
            }
            break;
        case 3:
            if (gameState.unknown92 == 3) {
                FixedPoint1616 x06;
                x06.combined = Unknown7E9F45.combined;
                x06.fraction -= 0x1999;
                if (x06.fraction >= 0x10000 - 0x1999) {
                    x06.integer--;
                }
                x0E = x06;
            } else {
                FixedPoint1616 x06;
                x06.combined = Unknown7E9F45.combined;
                x06.fraction += 0x1999;
                if (x06.fraction >= 0x10000 - 0x1999) {
                    x06.integer--;
                }
                x0E = x06;
            }
            break;
        default:
            if (gameState.unknown92 == 3) {
                FixedPoint1616 x06;
                x06.combined = Unknown7E9F45.combined;
                x06.fraction += 0x29FB;
                if (x06.fraction < 0x29FB) {
                    x06.integer++;
                }
                x0E = x06;
            } else {
                FixedPoint1616 x06;
                x06.combined = Unknown7E9F45.combined;
                x06.fraction += 0x1851;
                if (x06.fraction < 0x1851) {
                    x06.integer++;
                }
                x0E = x06;
            }
            break;
    }
    Unknown7E9F45.combined = x0E.combined;
    if ((arg1 & 1) != 0) {
        Unknown7E9F49.combined = ((x0E.combined >> 8) * 0xB505) >> 8;
        Unknown7E9F4D.combined = ((x0E.combined >> 8) * 0xB505) >> 8;
    } else {
        Unknown7E9F49.combined = x0E.combined;
        Unknown7E9F4D.combined = x0E.combined;
    }
    switch (arg1) { //this is hard to read. were the cases rearranged to dedupe code?
        case 0:
            Unknown7E9F4D.combined = -Unknown7E9F4D.combined;
            goto case;
        case 4:
            Unknown7E9F49.combined = 0;
            break;
        case 6:
            Unknown7E9F49.combined = -Unknown7E9F49.combined;
            goto case;
        case 2:
            Unknown7E9F4D.combined = 0;
            break;
        case 1:
            Unknown7E9F4D.combined = -Unknown7E9F4D.combined;
            break;
        case 7:
            Unknown7E9F4D.combined = -Unknown7E9F4D.combined;
            goto case;
        case 5:
            Unknown7E9F49.combined = -Unknown7E9F49.combined;
            break;
        default: break;
    }
}

/// $C0DE7C
void UnknownC0DE7C() {
    Unknown7E4DC6 = &PartyCharacters[0];
    for (short i = 0x18; i < 0x1E; i++) {
        EntityScriptVar3Table[i] = 8;
        EntityScriptVar7Table[i] &= 0xF7FF;
        EntityCollidedObjects[i] &= 0x7FFF;
        Unknown7E4DC6.unknown55 = 0xFFFF;
        Unknown7E4DC6++;
    }
    ChangeMusic5DD6();
}

/// $C0DED9
short UnknownC0DED9(short arg1, short arg2, short arg3, short arg4, short) {
    if (Unknown7E9F43 != 0) {
        return 1;
    }
    return UnknownC05F33(arg1, arg2, gameState.currentPartyMembers) | UnknownC05F33(arg3, arg4, gameState.currentPartyMembers);
}

/// $C0E196
void UnknownC0E196() {
    PlayerPositionBuffer[gameState.unknown88].x_coord = gameState.leaderX.integer;
    PlayerPositionBuffer[gameState.unknown88].y_coord = gameState.leaderY.integer;
    PlayerPositionBuffer[gameState.unknown88].tile_flags =UnknownC05F33(gameState.leaderX.integer, gameState.leaderY.integer, gameState.currentPartyMembers);
    PlayerPositionBuffer[gameState.unknown88].walking_style = 0;
    PlayerPositionBuffer[gameState.unknown88].direction = gameState.leaderDirection;
    gameState.unknown88++;
    //uh... yeah, sure
    gameState.unknown88 = gameState.unknown88;
}

/// $C0E214
short UnknownC0E214(short arg1, short arg2) {
    if (gameState.unknown96[0] == arg1 + 1) {
        return cast(short)(arg2 + 1);
    }
    if (Unknown7E9F45.integer == 0) {
        return arg2;
    }
    return UnknownC03EC3(arg1, 6, arg2, 2);
}

/// $C0E254
void UnknownC0E254() {
    ushort x10 = cast(ushort)(12 - Unknown7E9F45.integer);
    //weird way to say x10 <= 0
    if ((x10 == 0) || ((x10 & 0x8000) != 0)) {
        x10 = 1;
    }
    for (short i = 0x18; i < 0x1D; i++) {
        EntityScriptVar3Table[i] = x10;
    }
}

/// $C0E28F
void UnknownC0E28F() {
    gameState.unknown90 = 1;
    ushort x02 = MapInputToDirection(0);
    if (gameState.leaderDirection == (x02 ^ 4)) {
        x02 = gameState.leaderDirection;
    }
    if (x02 == -1) {
        x02 = gameState.leaderDirection;
    }
    gameState.leaderDirection = x02;
    if (BattleSwirlCountdown != 0) {
        Unknown7E9F43 = 2;
        BattleDebug = 1;
    }
    UnknownC0DF22(x02);
    Unknown7E9F51.combined = Unknown7E9F49.combined + gameState.leaderX.combined;
    Unknown7E9F55.combined = Unknown7E9F4D.combined + gameState.leaderY.combined;
    if (NPCCollisionCheck(Unknown7E9F51.integer, Unknown7E9F55.integer, gameState.currentPartyMembers) != -1) {
        Unknown7E9F43 = 2;
    }
    if ((UnknownC0DED9(gameState.leaderX.integer, gameState.leaderY.integer, Unknown7E9F51.integer, Unknown7E9F55.integer, x02) & 0xC0) != 0) {
        Unknown7E9F43 = 2;
    }
    if (Unknown7E9F43 != 2) {
        gameState.leaderX = Unknown7E9F51;
        gameState.leaderY = Unknown7E9F55;
    }
    CenterScreen(gameState.leaderX.integer, gameState.leaderY.integer);
    UnknownC0E196();
    UnknownC0E254();
    if (Unknown7E9F45.integer > 9) {
        Unknown7E9F43 = 1;
    }
}

/// $C0E3C1
void UnknownC0E3C1() {
    Unknown7E4DC6 = &PartyCharacters[EntityScriptVar1Table[CurrentEntitySlot]];
    UnknownC07A56(EntityScriptVar0Table[CurrentEntitySlot], PlayerPositionBuffer[PartyCharacters[EntityScriptVar1Table[CurrentEntitySlot]].position_index].walking_style, CurrentEntitySlot);
    EntityAbsXTable[CurrentEntitySlot] = PlayerPositionBuffer[PartyCharacters[EntityScriptVar1Table[CurrentEntitySlot]].position_index].x_coord;
    EntityAbsYTable[CurrentEntitySlot] = PlayerPositionBuffer[PartyCharacters[EntityScriptVar1Table[CurrentEntitySlot]].position_index].y_coord;
    EntityDirections[CurrentEntitySlot] = PlayerPositionBuffer[PartyCharacters[EntityScriptVar1Table[CurrentEntitySlot]].position_index].direction;
    EntitySurfaceFlags[CurrentEntitySlot] = PlayerPositionBuffer[PartyCharacters[EntityScriptVar1Table[CurrentEntitySlot]].position_index].tile_flags;
    Unknown7E4DC6.position_index = cast(ubyte)UnknownC0E214(EntityScriptVar0Table[CurrentEntitySlot], PartyCharacters[EntityScriptVar1Table[CurrentEntitySlot]].position_index);
}

/// $C0E44D
void UnknownC0E44D() {
    if (teleportStyle == TeleportStyle.PSIBetter) {
        return;
    }
    if ((pad_state[0] & PAD_UP) != 0) {
        Unknown7E9F69--;
    }
    if ((pad_state[0] & PAD_DOWN) != 0) {
        Unknown7E9F69++;
    }
    if ((pad_state[0] & PAD_LEFT) != 0) {
        Unknown7E9F67--;
    }
    if ((pad_state[0] & PAD_RIGHT) != 0) {
        Unknown7E9F67++;
    }
}

/// $C0E48A
void UnknownC0E48A() {
    Unknown7E9F4D.integer = 0;
    Unknown7E9F49.integer = 0;
    switch (gameState.leaderDirection) {
        case Direction.Up:
            Unknown7E9F4D.integer = -5;
            break;
        case Direction.UpRight:
            Unknown7E9F4D.integer = -5;
            Unknown7E9F49.integer = 5;
            break;
        case Direction.Right:
            Unknown7E9F49.integer = 5;
            break;
        case Direction.DownRight:
            Unknown7E9F4D.integer = 5;
            Unknown7E9F49.integer = 5;
            break;
        case Direction.Down:
            Unknown7E9F4D.integer = 5;
            break;
        case Direction.DownLeft:
            Unknown7E9F4D.integer = 5;
            Unknown7E9F49.integer = -5;
            break;
        case Direction.Left:
            Unknown7E9F49.integer = -5;
            break;
        case Direction.UpLeft:
            Unknown7E9F4D.integer = -5;
            Unknown7E9F49.integer = -5;
            break;
        default: break;
    }
}

/// $C0E516
void UnknownC0E516() {
    gameState.unknown90 = 1;
    UnknownC0E44D();
    FixedPoint1616 x12 = UnknownC41FFF(Unknown7E9F61, Unknown7E9F63);
    Unknown7E9F51.integer = x12.integer >> 8 + Unknown7E9F67;
    Unknown7E9F55.integer = x12.integer >> 8 + Unknown7E9F69;
    if (teleportStyle != TeleportStyle.PSIBetter) {
        if ((UnknownC0DED9(gameState.leaderX.integer, gameState.leaderY.integer, Unknown7E9F51.integer, Unknown7E9F55.integer, gameState.leaderDirection) & 0xC0) != 0) {
            Unknown7E9F43 = 2;
        }
        if (BattleSwirlCountdown != 0) {
            Unknown7E9F43 = 2;
            BattleDebug = 1;
        }
        if (NPCCollisionCheck(Unknown7E9F51.integer, Unknown7E9F55.integer, gameState.currentPartyMembers) != -1) {
            Unknown7E9F43 = 2;
        }
    }
    if (Unknown7E9F43 != 2) {
        gameState.leaderX.integer = Unknown7E9F51.integer;
        gameState.leaderY.integer = Unknown7E9F55.integer;
    }
    gameState.leaderDirection = ((Unknown7E9F61 >> 13) + 2) & 7;
    Unknown7E9F45.combined += 0x1851;
    if (teleportStyle == TeleportStyle.PSIBeta) {
        Unknown7E9F61 += 0xA00;
        Unknown7E9F63 += 0xC;
    } else {
        Unknown7E9F65 += 0x20;
        Unknown7E9F61 += Unknown7E9F65;
        Unknown7E9F63 += 0x10;
    }
    CenterScreen(gameState.leaderX.integer, gameState.leaderY.integer);
    UnknownC0E196();
    UnknownC0E254();
    if (teleportStyle == TeleportStyle.PSIBeta) {
        if (Unknown7E9F63 > 0x1000) {
            Unknown7E9F43 = 1;
            UnknownC0E48A();
        }
    } else {
        if (Unknown7E9F65 > 0x1800) {
            Unknown7E9F43 = 1;
            UnknownC0E48A();
        }
    }
}

/// $C0E674
void UnknownC0E674() {
    UnknownC0DF22(gameState.leaderDirection);
    gameState.leaderX.combined += Unknown7E9F49.combined;
    gameState.leaderY.combined += Unknown7E9F4D.combined;
    Unknown7E9F5B += Unknown7E9F59;
    Unknown7E9F5F += Unknown7E9F5D;
    CenterScreen(Unknown7E9F5B, Unknown7E9F5F);
    UnknownC0E196();
}

/// $C0E776
void UnknownC0E776() {
    UnknownC0DF22(gameState.leaderDirection);
    gameState.leaderX.combined += Unknown7E9F49.combined;
    gameState.leaderX.combined += Unknown7E9F4D.combined;
    CenterScreen(cast(short)(gameState.leaderX.integer - ((Unknown7E9F45.combined * 2) & 0xFFFF)), gameState.leaderY.integer);
    UnknownC0E196();
    UnknownC0E254();
}

/// $C0E815
void UnknownC0E815() {
    if (teleportStyle == TeleportStyle.Instant) {
        return;
    }
    for (short i = 0x18; i < 0x1E; i++) {
        EntityCollidedObjects[i] = 0x8000;
    }
    Unknown7E9F4D.integer = 0;
    Unknown7E9F49.integer = 0;
    SetPartyTickCallbacks(0x17, &UnknownC0E674, &UnknownC0E3C1);
    Unknown7E9F59 = Unknown7E9F49.integer;
    Unknown7E9F5B = gameState.leaderX.integer;
    Unknown7E9F5D = Unknown7E9F4D.integer;
    Unknown7E9F5F = gameState.leaderY.integer;
    FadeOut(1, 4);
    UnknownC0DD0F();
}

/// $C0E897
void UnknownC0E897() {
    if (teleportStyle == TeleportStyle.Instant) {
        CenterScreen(gameState.leaderX.integer, gameState.leaderY.integer);
        FadeIn(1, 1);
        UnknownC0DD0F();
        return;
    }
    for (short i = 0; i < 6; i++) {
        PartyCharacters[i].unknown55 = 0xFFFF;
        UnknownC07A56(gameState.unknown96[i] - 1, 0, cast(short)(i + 0x18));
    }
    Unknown7E9F45.fraction = 0;
    Unknown7E9F45.integer = 8;
    gameState.leaderDirection = 6;
    Unknown7E9F43 = 3;
    SetPartyTickCallbacks(0x17, &UnknownC0E776, &UnknownC0E3C1);
    UnknownC0DE16();
    ChangeMusic(Music.TeleportIn);
    for (short i = 0; i < 0x1E; i++) {
        WaitUntilNextFrame();
    }
    FadeIn(1, 4);
    while (Unknown7E9F45.integer != 0) {
        OAMClear();
        UnknownC09466();
        UpdateScreen();
        WaitUntilNextFrame();
    }
    CenterScreen(gameState.leaderX.integer, gameState.leaderY.integer);
}

/// $C0E979
void UnknownC0E979() {
    //nothing
}

/// $C0E97C
void UnknownC0E97C() {
    EntitySurfaceFlags[CurrentEntitySlot] = UnknownC05F33(EntityAbsXTable[CurrentEntitySlot], EntityAbsYTable[CurrentEntitySlot], CurrentEntitySlot);
    UnknownC07A56(EntityScriptVar0Table[CurrentEntitySlot], -1, CurrentEntitySlot);
}

/// $C0E9BA
void UnknownC0E9BA() {
    Unknown7EB4B6 = 1;
    ChangeMusic(Music.TeleportFail);
    for (short i = PARTY_LEADER_ENTITY_INDEX; i < MAX_ENTITIES; i++) {
        EntityScriptVar7Table[i] |= 0x8000;
    }
    SetPartyTickCallbacks(0x17, &UnknownC0E979, &UnknownC0E97C);
    gameState.partyStatus = 1;
    for (short i = 0; i < 0xB4; i++) {
        OAMClear();
        UnknownC09466();
        UpdateScreen();
        WaitUntilNextFrame();
    }
    gameState.partyStatus = 0;
    Unknown7EB4B6 = 0;
}

/// $C0EA3E
void TeleportFreezeObjects() {
    for (short i = 0; i < 0x17; i++) {
        EntityTickCallbackFlags[i] |= OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED;
    }
}

/// $C0EA68
void TeleportFreezeObjects2() {
    for (short i = 0; i < 0x17; i++) {
        if ((EntityTickCallbackFlags[i] & (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)) != (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)) {
            EntityTickCallbackFlags[i] |= OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED;
        }
    }
}

/// $C0EA99
void TeleportMainLoop() {
    StopMusic();
    WaitUntilNextFrame();
    TeleportFreezeObjects();
    Unknown7E5DBA = 1;
    Unknown7E9F45.fraction = 0;
    Unknown7E9F45.integer = 0;
    Unknown7E9F43 = 0;
    UnknownC07C5B();
    UnknownC0DE46();
    switch(teleportStyle) {
        case TeleportStyle.PSIAlpha:
        case TeleportStyle.Unknown:
            SetPartyTickCallbacks(0x17, &UnknownC0E28F, &UnknownC0E3C1);
            break;

        case TeleportStyle.PSIBeta:
            SetPartyTickCallbacks(0x17, &UnknownC0E516, &UnknownC0E3C1);
            break;
        case TeleportStyle.Instant:
            Unknown7E9F43 = 1;
            break;
        case TeleportStyle.PSIBetter:
            SetPartyTickCallbacks(0x17, &UnknownC0E516, &UnknownC0E3C1);
            break;
        default: break;
    }
    if (teleportStyle != TeleportStyle.Instant) {
        ChangeMusic(Music.TeleportOut);
    } else do {
        OAMClear();
        UnknownC09466();
        TeleportFreezeObjects2();
        UpdateScreen();
        WaitUntilNextFrame();
    } while (Unknown7E9F43 != 0);

    switch (Unknown7E9F43) {
        case 1:
            UnknownC0E815();
            UnknownC0DD79();
            UnknownC0E897();
            if (teleportStyle == TeleportStyle.Unknown) {
                //UnknownC46881(TextLearnedPSITeleportAlpha);
            }
            break;
        case 2:
            UnknownC0E9BA();
            UnknownC0DD2C(0xA);
            break;
        default: break;
    }
    SetPartyTickCallbacks(0x17, &UnknownC05200, &UnknownC04D78);
    UnknownC0DE7C();
    UnknownC09451();
    Unknown7E5DBA = 0;
    Unknown7E9F45.fraction = 0;
    Unknown7E9F45.integer = 0;
    Unknown7E5D58 = 0;
    teleportDestination = 0;
}

/// $C0EBE0
void UnknownC0EBE0() {
    Decomp(&TitleScreenGraphics[0], &Unknown7F0000[0]);
    CopyToVram(0, 0x8000, 0, &Unknown7F0000[0]);
    Decomp(&TitleScreenArrangement[0], &Unknown7F0000[0]);
    CopyToVram(0, 0x1000, 0x5800, &Unknown7F0000[0]);
    Decomp(&UnknownE1C6E5[0], &Unknown7F0000[0]);
    CopyToVram(0, 0x4000, 0x6000, &Unknown7F0000[0]);
}

/// $C0EE68
void LogoScreenLoad(short arg1) {
    UnknownC08D79(1);
    SetBG3VRAMLocation(BGTileMapSize.normal, 0x4000, 0);
    TM_MIRROR = 4;
    switch (arg1) {
        case 0:
            Decomp(&NintendoGraphics[0], &Unknown7F0000[0]);
            Decomp(&NintendoArrangement[0], &IntroBG2Buffer[0]);
            Decomp(&NintendoPalette[0], &palettes[0][0]);
            break;
        case 1:
            Decomp(&APEGraphics[0], &Unknown7F0000[0]);
            Decomp(&APEArrangement[0], &IntroBG2Buffer[0]);
            Decomp(&APEPalette[0], &palettes[0][0]);
            break;
        case 2:
            Decomp(&HALKENGraphics[0], &Unknown7F0000[0]);
            Decomp(&HALKENArrangement[0], &IntroBG2Buffer[0]);
            Decomp(&HALKENPalette[0], &palettes[0][0]);
            break;
        default: break;
    }
    CopyToVram(0, 0x8000, 0, &Unknown7F0000[0]);
    CopyToVram(0, 0x800, 0x4000, &IntroBG2Buffer[0]);
    Unknown7E0030 = 0x18;
}

/// $C0EFE1
short UnknownC0EFE1(short arg1) {
    for (short i = arg1; i != 0; i--) {
        if (pad_press[0] != 0) {
            return 1;
        }
        WaitUntilNextFrame();
    }
    return 0;
}

/// $C0F009
short LogoScreen() {
    LogoScreenLoad(0);
    FadeInWithMosaic(1, 2, 0);
    if (Debug != 0) {
        UnknownC0EFE1(0xB4);
    } else {
        for (short i = 0; i < 0xB4; i++) {
            WaitUntilNextFrame();
        }
    }
    FadeOutWithMosaic(1, 2, 0);
    LogoScreenLoad(1);
    FadeInWithMosaic(1, 2, 0);
    if (UnknownC0EFE1(0x78) != 0) {
        FadeOutWithMosaic(2, 1, 0);
        return 1;
    }
    FadeOutWithMosaic(1, 2, 0);
    LogoScreenLoad(2);
    FadeInWithMosaic(1, 2, 0);
    if (UnknownC0EFE1(0x78) != 0) {
        FadeOutWithMosaic(2, 1, 0);
        return 1;
    }
    FadeOutWithMosaic(1, 2, 0);
    return 0;
}

/// $C0F0D2
void GasStationLoad() {
    BG2_Y_POS = 0;
    BG2_X_POS = 0;
    BG1_Y_POS = 0;
    BG1_X_POS = 0;
    Decomp(&GasStationGraphics[0], &Unknown7F0000[0]);
    CopyToVram(0, 0xC000, 0, &Unknown7F0000[0]);
    Decomp(&GasStationArrangement[0], &Unknown7F0000[0]);
    CopyToVram(0, 0x800, 0x7800, &Unknown7F0000[0]);
    Decomp(&GasStationPalette[0], &palettes[0][0]);
    UnknownC4A377();
    UnknownC496F9();
    memset(&Unknown7F0000[0x40], 0, 0x20);
    memset(&palettes[0][0], 0, 0x40);
    memset(&palettes[3][0], 0, 0x1A0);
    UnknownC496E7(0x1E0, -1);
    TM_MIRROR = 1;
    TD_MIRROR = 2;
    CGWSEL = 2;
    CGADSUB = 3;
    Unknown7E0030 = 0x18;
}

/// $C0F1D2
void UnknownC0F1D2(short arg1) {
    //the original code also seems to set the bank byte separately, for some reason.
    UnknownC4954C(100, &palettes[0][0]);
    UnknownC496E7(arg1, -1);
}

/// $C0F21E
short UnknownC0F21E() {
    short result = 0;
    for (short i = 0; i < 236; i++) {
        if (pad_press[0] != 0) {
            return 1;
        }
        UnknownC2DB3F();
        WaitUntilNextFrame();
    }
    for (short i = 0; i < 480; i++) {
        if (pad_press[0] != 0) {
            return 1;
        }
        memcpy(&Unknown7E4476[0], &palettes[2][0], 0x20);
        UnknownC426ED();
        Unknown7E0030 = 0;
        UnknownC2DB14();
        memcpy(&palettes[2][0], &Unknown7E4476[0], 0x20);
        UnknownC2DB3F();
        Unknown7E0030 = 0x18;
        WaitUntilNextFrame();
    }
    UnknownC49740();
    CGADSUB = 0;
    CGWSEL = 0;
    TM_MIRROR = 1;
    TD_MIRROR = 0;
    if (UnknownC0EFE1(120) != 0) {
        return 1;
    }
    ChangeMusic(Music.GasStation2);
    short x12 = InitEntityWipe(ActionScript.Unknown860, 0, 0);
    while (EntityScriptTable[x12] != -1) {
        UnknownC09466();
        WaitUntilNextFrame();
        if (pad_press[0] != 0) {
            UnknownC09C35(x12);
            return 1;
        }
    }
    UnknownC0F1D2(330);
    return result;
}

/// $C0F33C
short GasStation() {
    UnknownC0927C();
    GasStationLoad();
    FadeIn(1, 11);
    short x11 = UnknownC0F21E();
    if (x11 != 0) {
        return 1;
    }
    for (short i = 0; i < 0x14A; i++) {
        if (pad_press[0] != 0) {
            return 1;
        }
        UnknownC426ED();
        WaitUntilNextFrame();
    }
    TM_MIRROR = 0;
    memset(&palettes[0][0], 0, 0x200);
    Unknown7E0030 = 0x18;
    if (x11 == 0) { //isn't this always true...?
        UnknownC0EFE1(0x1E);
    }
    return x11;
}

immutable SNESHeader header = {
    makerCode: "01",
    gameCode: "MB  ",
    title: "EARTH BOUND          ",
    mapMode: 0x31,
    romType: 0x02,
    romSize: 0x0C,
    sramSize: 0x03,
    destinationCode: 0x01,
    licenseeCode: 0x33,
    version_: 0,
    checksumComplement: 0xBFB7,
    checksum: 0x4048,
    nativeNMI: &NMI,
    nativeIRQ: &IRQ,
    emulationRESET: &start,
};
