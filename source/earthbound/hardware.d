/// snes hardware layer
module earthbound.hardware;

struct OAMEntry {
	ubyte xCoord; //0
	ubyte yCoord; //1
	ubyte startingTile; //2
	ubyte flags; //3
}

__gshared ubyte APUIO0;
__gshared ubyte APUIO1;
__gshared ubyte APUIO2;
__gshared ubyte APUIO3;

__gshared ubyte HDMAEN;

__gshared ubyte TIMEUP;
__gshared ubyte HVBJOY;
__gshared ubyte JOYPAD_1_DATA;
__gshared ubyte JOYPAD_2_DATA;

__gshared ubyte BG1SC;
__gshared ubyte BG2SC;
__gshared ubyte BG3SC;
__gshared ubyte BG4SC;
__gshared ubyte BG12NBA;
__gshared ubyte BG34NBA;

__gshared ubyte BGMODE;

__gshared ubyte CGADSUB;
__gshared ubyte CGWSEL;

__gshared ubyte OBSEL;


enum DMATransferUnit {
	Byte = 0,
	Word = 1,
	ByteTwice = 2,
	WordTwiceInterlaced = 3,
	Int = 4,
	WordTwice = 5,
	WordCopy = 6,
	WordTwiceInterlacedCopy = 7,
}

struct DMAChannel {
	//x0
	ubyte DMAP;
	//x1
	ubyte BBAD;
	//x2
	union {
		struct {
			ubyte A1TL;
			ubyte A1TH;
			ubyte A1B;
		}
		const(void)* A1T;
	}
	//x5
	union {
		struct {
			ubyte DASL;
			ubyte DASH;
			ubyte DASB; //HDMA only
		}
		ushort DAS; //not for HDMA
		const(void)* HDMADAS;
	}
	//x8, HDMA only
	union {
		struct {
			ubyte A2AL;
			ubyte A2AH;
		}
		ushort A2A;
	}
	//xA, HDMA only
	ubyte NTLR;
	//unused
	ubyte[5] __unused;
}

__gshared DMAChannel[8] DMAChannels;

__gshared ubyte VMAIN;

__gshared ushort VMADDL;
__gshared ubyte MDMAEN;

__gshared ubyte NMITIMEN;
__gshared ubyte INIDISP;
__gshared ubyte OAMADDL;
__gshared ubyte OAMADDH;
__gshared ubyte MOSAIC;
__gshared ubyte BG1HOFS;
__gshared ubyte BG1VOFS;
__gshared ubyte BG2HOFS;
__gshared ubyte BG2VOFS;
__gshared ubyte BG3HOFS;
__gshared ubyte BG3VOFS;
__gshared ubyte BG4HOFS;
__gshared ubyte BG4VOFS;
__gshared ubyte VMADDH;
__gshared ubyte M7SEL;
__gshared ubyte M7A;
__gshared ubyte M7B;
__gshared ubyte M7C;
__gshared ubyte M7D;
__gshared ubyte M7X;
__gshared ubyte M7Y;
__gshared ubyte CGADD;
__gshared ubyte CGDATA;
__gshared ubyte W12SEL;
__gshared ubyte W34SEL;
__gshared ubyte WOBJSEL;
__gshared ubyte WH0;
__gshared ubyte WH1;
__gshared ubyte WH2;
__gshared ubyte WH3;
__gshared ubyte WBGLOG;
__gshared ubyte WOBJLOG;
__gshared ubyte TM;
__gshared ubyte TD;
__gshared ubyte TMW;
__gshared ubyte TSW;
__gshared ubyte FIXED_COLOUR_DATA;
__gshared ubyte SETINI;
__gshared ubyte WRMPYA;
__gshared ubyte WRMPYB;
__gshared ubyte WRDIVL;
__gshared ubyte WRDIVH;
__gshared ubyte WRDIVB;
__gshared ubyte HTIMEL;
__gshared ubyte HTIMEH;
__gshared ubyte VTIMEL;
__gshared ubyte VTIMEH;
__gshared ubyte MEMSEL;
__gshared ubyte STAT78;
__gshared ubyte COLDATA;

struct SNESHeader {
	char[2] makerCode;
	char[4] gameCode;
	ushort[5] padding;
	char[21] title;
	ubyte mapMode;
	ubyte romType;
	ubyte romSize;
	ubyte sramSize;
	ubyte destinationCode;
	ubyte licenseeCode = 0x33;
	ubyte version_;
	ushort checksumComplement;
	ushort checksum;
	void function() unusedNativeVector0;
	void function() unusedNativeVector1;
	void function() nativeCOP;
	void function() nativeBRK;
	void function() nativeABORT;
	void function() nativeNMI;
	void function() unusedNativeVector6;
	void function() nativeIRQ;
	void function() unusedEmulationVector0;
	void function() unusedEmulationVector1;
	void function() emulationCOP;
	void function() unusedEmulationVector3;
	void function() emulationABORT;
	void function() emulationNMI;
	void function() emulationRESET;
	void function() emulationIRQBRK;
}
