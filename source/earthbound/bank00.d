module earthbound.bank00;

import earthbound.commondefs;
import earthbound.globals;
import earthbound.hardware;
import earthbound.bank01;
import earthbound.bank02;
import earthbound.bank03;
import earthbound.bank04;
import earthbound.bank20;
import earthbound.bank2F;
import core.stdc.string;

// $C00000
short* ClearEntityDrawSortingTable() {
    EntityDrawSorting[] = 0;
    return EntityDrawSorting.ptr;
}

// $C00013
void OverworldSetupVRAM() {
    UnknownC08D79(9);
    SetBG1VRAMLocation(BGTileMapSize.horizontal, 0x3800, 0);
    SetBG2VRAMLocation(BGTileMapSize.horizontal, 0x5800, 0x2000);
    SetBG3VRAMLocation(BGTileMapSize.normal, 0x7C00, 0x6000);
    SetOAMSize(0x62);
}

void OverworldInitialize();

void LoadTilesetAnim();

void AnimateTileset();

void LoadPaletteAnim();

void AnimatePalette();

// $C0035B
ushort UnknownC0035B(ushort a, ushort x, ushort y) {
	return Unknown7F8000[a * 32 + x * 2 + y * 8];
}

void GetColorAverage(uint* ptr);

// $C00434
uint Func_C00434(uint arg1, uint arg2);

// $C00480
void ColorMystery();

// $C005E7
void UnknownC005E7();

void LoadCollisionData(int tileset);

// $C0067E
void Function14(size_t index1, size_t index2);

// $C006F2
void UnknownC006F2();

// $C013F6
void LoadMapAtPosition(short x, short y);

// $C018F3
void ReloadMap();

// $C01A69
void InitializeMiscObjectData() {
    for (short i = 0; i < 0x1E; i++) {
        UNKNOWN_30X2_TABLE_35[i] = 0;
        EntityCollidedObjects[i] = 0xFFFF;
        EntityTPTEntries[i] = 0xFFFF;
    }
}

// $C01A86
void UnknownC01A86();

// $C01C11
void AllocSpriteMem(short arg1, ubyte arg2) {
    for (short i = 0; i < 0x58; i++) {
        if (((Unknown7E4A00[i] & 0xFF) == (arg1 | 0x80)) || (arg1 == short.min)) {
            Unknown7E4A00[i] = arg2;
        }
    }
}

// $C01E49
short CreateEntity(short sprite, short actionScript, short index, short x, short y);

// $C02140
void UnknownC02140(short);

// $C02D29
void UnknownC02D29();

// $C034D6
void UpdateParty();

// $C039E5
void UnknownC039E5();

// $C03A24
void UnknownC03A24();

// $C03C25
void UnknownC03C25() {
    Unknown7E5DDA = 1;
    UnknownC068F4(gameState.leaderXCoordinate, gameState.leaderYCoordinate);
    if (Unknown7E5DD6 != Unknown7E5DD4) {
        WaitUntilNextFrame();
        UnknownC069AF();
    }
    Unknown7E5DDA = 0;
}

// $C0404F
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

// $C04C45
void UnknownC04C45();

// $C04D78
void UnknownC04D78();

// $C04F47
void UnknownC04F47() {
    CurrentTextPalette[0] = Unknown7E5D72;
    TM_MIRROR = 0x17;
    UnknownC0856B(8);
}

// $C04F60
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

// $C04F9F
void UnknownC04F9F(short arg1) {
    short x10 = arg1;
    PartyCharacter* x0E = ChosenFourPtrs[gameState.playerControlledPartyMembers[x10]];
    if ((x0E.max_hp * 20) / 100 <= x0E.hp.current.integer) {
        if (Unknown7E5D8C[x10] == 0) {
            ShowHPAlert(cast(short)(x0E.unknown53 + 1));
        }
        Unknown7E5D8C[x10] = 1;
    } else {
        Unknown7E5D8C[x10] = 0;
    }
}

// $C04FFE
ushort UnknownC04FFE() {
    ushort result = 0; //x14
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
        const affliction = Unknown7E4DC6.afflictions[0]; //x10
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

// $C05200
void UnknownC05200() {
    if (BattleDebug != 0) {
        return;
    }
    if ((Unknown7E9F6F == 0) && (Unknown7E9F6B != 0xFFFF)) {
        UnknownC07716();
    } else if (Unknown7E9F6B != 0xFFFF) {
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
    const x = gameState.leaderXCoordinate >> 8;
    const y = gameState.leaderYCoordinate >> 8;
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

// $C05639
void UnknownC05639(short, short);
// $C056D0
void UnknownC056D0(short, short);
// $C05F33
short unknownC05F33(short x, short y, short entityID) {
    const size = UNKNOWN_30X2_TABLE_36[entityID];
    Unknown7E5DA4 = 0;
    Unknown7E5DAC = cast(short)(x - UnknownC42A1F[size]);
    Unknown7E5DAE = cast(short)(y - UnknownC42A41[size] + UnknownC42AEB[size]);
    UnknownC05639(Unknown7E5DAE, size);
    UnknownC056D0(Unknown7E5DAE, size);
    return Unknown7E5DA4;
}

// $C068F4
void UnknownC068F4(short, short);

// $C069AF
void UnknownC069AF() {
    if (Unknown7E5DD8 != 0) {
        return;
    }
    if (Unknown7E5DD6 == Unknown7E4DD4) {
        return;
    }
    Unknown7E5DD4 = Unknown7E5DD6;
    ChangeMusic(Unknown7E5DD6);
    UnknownC0AC0C(Unknown7E5E38[3]);
}

// $C06B21
void SpawnBuzzBuzz() {
    //DisplayText(TextSpawnBuzzBuzz);
    UnknownEF0EE8();
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

// $C075DD
void ProcessQueuedInteractions();

// $C07716
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

// $C0777A
void UnknownC0777A() {
    UnknownC02140(Unknown7E9F6B);
    Unknown7E9F6B = -1;
}
// $C0780F
short UnknownC0780F(short, short, PartyCharacter*);

// $C07A56
void UnknownC07A56(short arg1, short arg2, short arg3) {
    short x04 = arg3;
    short x02 = arg2;
    short x16 = arg2;
    short x14 = arg1;
    Unknown7E9F73 = x04;
    short x12 = UnknownC0780F(x14, x02, Unknown7E4DC6);
    if (x12 == 0xFFFF) {
        EntityAnimationFrames[x04] = x12;
    } else {
        auto x0E = SpriteGroupingPointers[x12];
        // figure out sprite stuff
        UNKNOWN_30X2_TABLE_31[x04] = x0E.unknown8;
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

// $C07B52
void UnknownC07B52() {
    ushort x14 = PartyCharacters[0].position_index;
    for (ushort x12 = 0x18; x12 < 0x1E; x12++) {
        ushort x04 = x12;
        ushort x10 = x12;
        if (EntityScriptTable[x04] != 0xFFFF) {
            EntityTickCallbackFlags[x04] |= (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED);
            Unknown7E4DC6 = &PartyCharacters[EntityScriptVar1Table[x04]];
            if ((gameState.currentPartyMembers == x12) || (Unknown7E4DC6.position_index == x14)) {
                UnknownC07A56(EntityScriptVar0Table[x12], gameState.walkingStyle, x12);
                EntityAbsXTable[x12] = gameState.leaderXCoordinate;
                EntityAbsYTable[x12] = gameState.leaderYCoordinate;
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
            UnknownC0A780();
        }
    }
}

// $C07C5B
void UnknownC07C5B() {
    if (Unknown7E5D58 == 0) {
        return;
    }
    for (short i = 0x18; i < 0x1E; i++) {
        EntitySpriteMapFlags[i] &= 0x7FFF;
    }
}

// $C0841B
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

// $C08456
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
    *Unknown7E0085 = cast(ubyte)Unknown7E0089;
    Unknown7E0085++;
    *cast(ushort*)Unknown7E0085 = Unknown7E008B;
    Unknown7E0085++;
    Unknown7E0085++;
    Unknown7E008B = Unknown7E0077[0] | Unknown7E0077[1];
    Unknown7E0089 = 0;
    Unknown7E0089++;
    *Unknown7E0085 = 0;
    if (Unknown7E0085 !is null) { //not sure about this... but what is BPL on a pointer supposed to mean?
        return;
    }
    Unknown7E007B &= 0x7FFF;
}

// $C08496
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

// $C0851C
void UnknownC0851C(void function());

// $C0856B
void UnknownC0856B(short);

// $C08616 - Copy data to VRAM
void CopyToVram(short mode, short count, ushort address, ubyte* data);

// $C08726
void UnknownC08726() {
    INIDISP_MIRROR = 0x80;
    HDMAEN_MIRROR = 0;
    Unknown7E0028 = 0;
    Unknown7E002B = 0;
    while (Unknown7E002B == 0) {}
    HDMAEN = 0;
}

// $C08744
void UnknownC08744() {
    INIDISP_MIRROR = 0x80;
    Unknown7E002B = 0;
    while (Unknown7E002B == 0) {}
}

// $C08756
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

// $C087CE
void FadeInWithMosaic(short, short, short);

// $C08814
void FadeOutWithMosaic(short, short, short);

// $C0886C
void FadeIn(short, short);

// $C0887A
void FadeOut(short, short);

// $C088B1
void OAMClear();

// $C08B19
void UnknownC08B19() {
    Unknown7E0009 = 0;
    OAMClear();
    UpdateScreen();
}

// $C08B26
void UpdateScreen() {
    UnknownC08B8E();
    if (false /+Actually tests if the DBR is 0xFF, which should never happen+/) while(true) {}
    ubyte Unknown7E000Atmp = Unknown7E000A;
    if (Unknown7E000Atmp != 0x80) {
        do {
            Unknown7E000Atmp >>= 2;
        } while ((Unknown7E000Atmp & 2) == 0);
    }
    OAMHighTableAddr = Unknown7E000Atmp;
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

// $C08B8E
void UnknownC08B8E();

// $C08D79
void UnknownC08D79(ubyte arg1) {
    Unknown7E000F &= 0xF0;
    Unknown7E000F |= arg1;
    BGMODE = Unknown7E000F;
}

// $C08D92
void SetOAMSize(ubyte arg1) {
    OBSEL_MIRROR = arg1;
    OBSEL = arg1;
}

// $C08D9E
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

// $C08DDE
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

// $C08E1C
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

// $C08E5C
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

// $C08E9A
short rand();

immutable ubyte[] UNKNOWN_C08F98 = [ 0x80, 0xFE, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x80, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00 ];

immutable ubyte[] UNKNOWN_C08FC2 = [ 0x81, 0x39, 0x80, 0x80, 0x39, 0x00, 0x80, 0x3A, 0x80, 0x01, 0x18, 0x81, 0x09, 0x18, 0x81, 0x00, 0x18, 0x01, 0x08, 0x18, 0x01, 0x00, 0x19, 0x81, 0x08, 0x19, 0x81, 0x81, 0x39, 0x81, 0x80, 0x39, 0x01, 0x80, 0x3A, 0x81, 0xEB, 0x98 ];

// $C0927C
void UnknownC0927C();

// $C09321
void InitEntity(short, short, short);

// $C0943C
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

// $C09451
void UnknownC09451();

// $C09466
void UnknownC09466();

// $C09C35
void UnknownC09C35(short);

// $C0A0E3
void UnknownC0A0E3(short arg1, bool overflowed) {
    if ((EntitySpriteMapFlags[arg1 / 2] < 0) || overflowed) {
        return;
    }
    ActionScript8C = EntitySpriteMapPointers[arg1 / 2];
    if (EntityAnimationFrames[arg1 / 2] >= 0) {
        EntityDrawCallbacks[arg1 / 2]();
    }
}

// $C0A0CA
void UnknownC0A0CA(short arg1) {
    while (arg1 < 0) {}
    ActionScript88 = cast(ushort)(arg1 * 2);
    UnknownC0A0E3(ActionScript88, arg1 < 0);
}

// $C0A780
void UnknownC0A780();

// $C0ABC6
void StopMusic() {
    APUIO0 = 0;
    while (UnknownC0AC20() != 0) {}
    CurrentMusicTrack = 0xFFFF;
}

// $C0ABE0 - Play a sound effect
void PlaySfx(short sound_effect);

// $C0AC0C
void UnknownC0AC0C(short arg1) {
    APUIO1 = cast(ubyte)(arg1 | Unknown7E1ACB);
    Unknown7E1ACB ^= 0x80;
}

// $C0AC20
ubyte UnknownC0AC20() {
    return APUIO0;
}

// $C0B525
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

// $C0B67F
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
    TeleportDestination = 0;
    Unknown7EB4A8 = -1;
    EntityAllocationMinSlot = 0x17;
    EntityAllocationMaxSlot = 0x18;
    InitEntity(ActionScript.Unknown001, 0, 0);
    UnknownC02D29();
    UnknownC03A24();
    memset(&palettes[0][0], 0, 0x200);
    UnknownC47F87();
    OverworldInitialize();
    LoadMapAtPosition(gameState.leaderXCoordinate, gameState.leaderYCoordinate);
    SpawnBuzzBuzz();
    LoadWindowGraphics();
    UnknownC44963(1);
    UnknownC039E5();
}

// $C0B731
void InitBattleOverworld();

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
        if (((Unknown7E5E02 - Unknown7E5E04) != 0) && !BattleSwirlCountdown && !BattleSwirlFlag && !BattleDebug) {
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
            if (TeleportDestination) {
                TeleportMainloop();
            }
            if (!Debug && ((pad_press[1] & PAD_B) != 0)) {
                for (int i = 0; i < TOTAL_PARTY_COUNT; i++) {
                    PartyCharacters[i].hp.target = PartyCharacters[i].max_hp;
                    PartyCharacters[i].pp.target = PartyCharacters[i].max_pp;
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

// $C0DA31
void UnknownC0DA31();

// $C0DB0F
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

// $C0DBE6
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

// $C0DC4E
void UnknownC0DC4E();

// $C0DCC6
void LoadDadPhone();

// $C0DD2C
void UnknownC0DD2C(short);

// $C0DD79
void UnknownC0DD79();

// $C0DE46
void UnknownC0DE46();

// $C0DE7C
void UnknownC0DE7C();

// $C0E28F
void UnknownC0E28F();

// $C0E3C1
void UnknownC0E3C1();

// $C0E516
void UnknownC0E516();

// $C0E815
void UnknownC0E815();

// $C0E897
void UnknownC0E897();

// $C0E9BA
void UnknownC0E9BA();

// $C0EA3E
void TeleportFreezeObjects() {
    for (int i = 0; i < 0x17; i++) {
        EntityTickCallbackFlags[i] |= OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED;
    }
}

// $C0EA68
void TeleportFreezeObjects2() {
    for (int i = 0; i < 0x17; i++) {
        if ((EntityTickCallbackFlags[i] & (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)) != (OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED)) {
            EntityTickCallbackFlags[i] |= OBJECT_TICK_DISABLED | OBJECT_MOVE_DISABLED;
        }
    }
}

// $C0EA99
void TeleportMainloop() {
    StopMusic();
    WaitUntilNextFrame();
    TeleportFreezeObjects();
    Unknown7E5DBA = 1;
    Unknown7E9F45 = 0;
    Unknown7E9F47 = 0;
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
    Unknown7E9F45 = 0;
    Unknown7E9F47 = 0;
    Unknown7E5D58 = 0;
    TeleportDestination = 0;
}
