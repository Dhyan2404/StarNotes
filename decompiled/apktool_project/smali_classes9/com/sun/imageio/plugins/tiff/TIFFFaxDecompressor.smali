.class Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# static fields
.field private static additionalMakeup:[S

.field private static black:[S

.field static flipTable:[B

.field private static initBlack:[S

.field private static table1:[I

.field private static table2:[I

.field private static twoBitBlack:[S

.field private static twoDCodes:[B

.field private static white:[S


# instance fields
.field private bitPointer:I

.field private bitsPerScanline:I

.field private buffer:[B

.field private bytePointer:I

.field private changingElemSize:I

.field private currChangingElems:[I

.field private data:[B

.field private fillBits:I

.field private fillOrder:I

.field private h:I

.field private lastChangingElement:I

.field private lineBitNum:I

.field private oneD:I

.field private prevChangingElems:[I

.field private t4Options:I

.field private t6Options:I

.field private uncompressedMode:I

.field private w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->table1:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->table2:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->white:[S

    const/16 v0, 0x10

    new-array v1, v0, [S

    fill-array-data v1, :array_4

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->additionalMakeup:[S

    new-array v0, v0, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->initBlack:[S

    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->twoBitBlack:[S

    const/16 v0, 0x200

    new-array v0, v0, [S

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->black:[S

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->twoDCodes:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
        0xfe
        0xff
    .end array-data

    :array_2
    .array-data 1
        0x0t
        -0x80t
        0x40t
        -0x40t
        0x20t
        -0x60t
        0x60t
        -0x20t
        0x10t
        -0x70t
        0x50t
        -0x30t
        0x30t
        -0x50t
        0x70t
        -0x10t
        0x8t
        -0x78t
        0x48t
        -0x38t
        0x28t
        -0x58t
        0x68t
        -0x18t
        0x18t
        -0x68t
        0x58t
        -0x28t
        0x38t
        -0x48t
        0x78t
        -0x8t
        0x4t
        -0x7ct
        0x44t
        -0x3ct
        0x24t
        -0x5ct
        0x64t
        -0x1ct
        0x14t
        -0x6ct
        0x54t
        -0x2ct
        0x34t
        -0x4ct
        0x74t
        -0xct
        0xct
        -0x74t
        0x4ct
        -0x34t
        0x2ct
        -0x54t
        0x6ct
        -0x14t
        0x1ct
        -0x64t
        0x5ct
        -0x24t
        0x3ct
        -0x44t
        0x7ct
        -0x4t
        0x2t
        -0x7et
        0x42t
        -0x3et
        0x22t
        -0x5et
        0x62t
        -0x1et
        0x12t
        -0x6et
        0x52t
        -0x2et
        0x32t
        -0x4et
        0x72t
        -0xet
        0xat
        -0x76t
        0x4at
        -0x36t
        0x2at
        -0x56t
        0x6at
        -0x16t
        0x1at
        -0x66t
        0x5at
        -0x26t
        0x3at
        -0x46t
        0x7at
        -0x6t
        0x6t
        -0x7at
        0x46t
        -0x3at
        0x26t
        -0x5at
        0x66t
        -0x1at
        0x16t
        -0x6at
        0x56t
        -0x2at
        0x36t
        -0x4at
        0x76t
        -0xat
        0xet
        -0x72t
        0x4et
        -0x32t
        0x2et
        -0x52t
        0x6et
        -0x12t
        0x1et
        -0x62t
        0x5et
        -0x22t
        0x3et
        -0x42t
        0x7et
        -0x2t
        0x1t
        -0x7ft
        0x41t
        -0x3ft
        0x21t
        -0x5ft
        0x61t
        -0x1ft
        0x11t
        -0x6ft
        0x51t
        -0x2ft
        0x31t
        -0x4ft
        0x71t
        -0xft
        0x9t
        -0x77t
        0x49t
        -0x37t
        0x29t
        -0x57t
        0x69t
        -0x17t
        0x19t
        -0x67t
        0x59t
        -0x27t
        0x39t
        -0x47t
        0x79t
        -0x7t
        0x5t
        -0x7bt
        0x45t
        -0x3bt
        0x25t
        -0x5bt
        0x65t
        -0x1bt
        0x15t
        -0x6bt
        0x55t
        -0x2bt
        0x35t
        -0x4bt
        0x75t
        -0xbt
        0xdt
        -0x73t
        0x4dt
        -0x33t
        0x2dt
        -0x53t
        0x6dt
        -0x13t
        0x1dt
        -0x63t
        0x5dt
        -0x23t
        0x3dt
        -0x43t
        0x7dt
        -0x3t
        0x3t
        -0x7dt
        0x43t
        -0x3dt
        0x23t
        -0x5dt
        0x63t
        -0x1dt
        0x13t
        -0x6dt
        0x53t
        -0x2dt
        0x33t
        -0x4dt
        0x73t
        -0xdt
        0xbt
        -0x75t
        0x4bt
        -0x35t
        0x2bt
        -0x55t
        0x6bt
        -0x15t
        0x1bt
        -0x65t
        0x5bt
        -0x25t
        0x3bt
        -0x45t
        0x7bt
        -0x5t
        0x7t
        -0x79t
        0x47t
        -0x39t
        0x27t
        -0x59t
        0x67t
        -0x19t
        0x17t
        -0x69t
        0x57t
        -0x29t
        0x37t
        -0x49t
        0x77t
        -0x9t
        0xft
        -0x71t
        0x4ft
        -0x31t
        0x2ft
        -0x51t
        0x6ft
        -0x11t
        0x1ft
        -0x61t
        0x5ft
        -0x21t
        0x3ft
        -0x41t
        0x7ft
        -0x1t
    .end array-data

    :array_3
    .array-data 2
        0x191es
        0x1900s
        0x1900s
        0x1900s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3b0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x3d0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5b0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x5d0s
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x5f0s
        0x5f0s
        0x5f0s
        0x5f0s
        0x610s
        0x610s
        0x610s
        0x610s
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x1acs
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x28es
        0x430s
        0x430s
        0x430s
        0x430s
        0x450s
        0x450s
        0x450s
        0x450s
        0x470s
        0x470s
        0x470s
        0x470s
        0x490s
        0x490s
        0x490s
        0x490s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4b0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x4d0s
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x26es
        0x3f0s
        0x3f0s
        0x3f0s
        0x3f0s
        0x410s
        0x410s
        0x410s
        0x410s
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x2cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x18cs
        0x6b0s
        0x6b0s
        0x6b0s
        0x6b0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x6d0s
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x34es
        0x4f0s
        0x4f0s
        0x4f0s
        0x4f0s
        0x510s
        0x510s
        0x510s
        0x510s
        0x530s
        0x530s
        0x530s
        0x530s
        0x550s
        0x550s
        0x550s
        0x550s
        0x570s
        0x570s
        0x570s
        0x570s
        0x590s
        0x590s
        0x590s
        0x590s
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x38es
        0x7b0s
        0x7b0s
        0x7b0s
        0x7b0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7d0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x7f0s
        0x10s
        0x10s
        0x10s
        0x10s
        0x2811s
        0x2811s
        0x2811s
        0x2811s
        0x3011s
        0x3011s
        0x3011s
        0x3011s
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x14as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x16as
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x36es
        0x770s
        0x770s
        0x770s
        0x770s
        0x790s
        0x790s
        0x790s
        0x790s
        -0x47eds
        -0x47eds
        -0x3feds
        -0x3feds
        -0x37eds
        -0x37eds
        -0x27eds
        -0x27eds
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x24es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x30es
        0x630s
        0x630s
        0x630s
        0x630s
        0x650s
        0x650s
        0x650s
        0x650s
        0x670s
        0x670s
        0x670s
        0x670s
        0x690s
        0x690s
        0x690s
        0x690s
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x32es
        0x6f0s
        0x6f0s
        0x6f0s
        0x6f0s
        0x710s
        0x710s
        0x710s
        0x710s
        0x730s
        0x730s
        0x730s
        0x730s
        0x750s
        0x750s
        0x750s
        0x750s
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        0x180ds
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        -0x2ff3s
        0x3811s
        0x3811s
        0x3811s
        0x3811s
        0x4011s
        0x4011s
        0x4011s
        0x4011s
        0x5813s
        0x5813s
        0x6013s
        0x6013s
        0x5011s
        0x5011s
        0x5011s
        0x5011s
        0x4811s
        0x4811s
        0x4811s
        0x4811s
        0x6813s
        0x6813s
        0x7013s
        0x7013s
        0x7813s
        0x7813s
        -0x7feds
        -0x7feds
        -0x77eds
        -0x77eds
        -0x6feds
        -0x6feds
        -0x67eds
        -0x67eds
        -0x5feds
        -0x5feds
        -0x57eds
        -0x57eds
        -0x4feds
        -0x4feds
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x200fs
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x48s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x68s
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x100bs
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x10as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x12as
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0x88s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0xa8s
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ccs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x1ecs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0x80bs
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xc8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
        0xe8s
    .end array-data

    :array_4
    .array-data 2
        0x7007s
        0x7007s
        0x7c08s
        -0x7ff7s
        -0x7bf7s
        -0x77f7s
        -0x73f7s
        -0x6ff7s
        0x7407s
        0x7407s
        0x7807s
        0x7807s
        -0x6bf7s
        -0x67f7s
        -0x63f7s
        -0x5ff7s
    .end array-data

    :array_5
    .array-data 2
        0xc9as
        0x190cs
        0xc8s
        0xa8s
        0x26s
        0x26s
        0x86s
        0x86s
        0x64s
        0x64s
        0x64s
        0x64s
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data

    :array_6
    .array-data 2
        0x124s
        0x104s
        0xe2s
        0xe2s
    .end array-data

    :array_7
    .array-data 2
        0x3es
        0x3es
        0x1es
        0x1es
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0xc99s
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x24cs
        0x690s
        0x690s
        0x5013s
        0x5813s
        0x6013s
        0x6813s
        0x6f0s
        0x6f0s
        0x710s
        0x710s
        -0x5feds
        -0x57eds
        -0x4feds
        -0x47eds
        0x770s
        0x770s
        0x790s
        0x790s
        -0x3feds
        -0x37eds
        0x30es
        0x30es
        0x30es
        0x30es
        0x32es
        0x32es
        0x32es
        0x32es
        -0x2feds
        -0x27eds
        0x2811s
        0x2811s
        0x3011s
        0x3011s
        0x3811s
        0x3811s
        0x4013s
        0x4813s
        0x6b0s
        0x6b0s
        0x6d0s
        0x6d0s
        0x7013s
        0x7813s
        -0x7feds
        -0x77eds
        -0x6feds
        -0x67eds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x80ds
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x1a8s
        0x2ees
        0x2ees
        0x2ees
        0x2ees
        0x650s
        0x650s
        0x670s
        0x670s
        0x590s
        0x590s
        0x5b0s
        0x5b0s
        0x5d0s
        0x5d0s
        0x5f0s
        0x5f0s
        0x730s
        0x730s
        0x750s
        0x750s
        0x7b0s
        0x7b0s
        0x2011s
        0x2011s
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x20cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x22cs
        0x610s
        0x610s
        0x630s
        0x630s
        0x7d0s
        0x7d0s
        0x7f0s
        0x7f0s
        0x3d0s
        0x3d0s
        0x3f0s
        0x3f0s
        0x410s
        0x410s
        0x430s
        0x430s
        0x510s
        0x510s
        0x530s
        0x530s
        0x2ces
        0x2ces
        0x2ces
        0x2ces
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x1c8s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x146s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x166s
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1eas
        0x1011s
        0x1011s
        0x1811s
        0x1811s
        0x350s
        0x350s
        0x370s
        0x370s
        0x390s
        0x390s
        0x3b0s
        0x3b0s
        0x26es
        0x26es
        0x26es
        0x26es
        0x28es
        0x28es
        0x28es
        0x28es
        0x450s
        0x450s
        0x470s
        0x470s
        0x490s
        0x490s
        0x4b0s
        0x4b0s
        0x4d0s
        0x4d0s
        0x4f0s
        0x4f0s
        0x2aes
        0x2aes
        0x2aes
        0x2aes
        0x550s
        0x550s
        0x570s
        0x570s
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
        0x186s
    .end array-data

    :array_8
    .array-data 1
        0x50t
        0x58t
        0x17t
        0x47t
        0x1et
        0x1et
        0x3et
        0x3et
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->uncompressedMode:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->fillBits:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lastChangingElement:I

    return-void
.end method

.method private decodeBlackCodeWord()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->initBlack:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    const/16 v5, 0xf

    and-int/2addr v4, v5

    const/4 v6, 0x5

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0x7ff

    const/16 v7, 0x64

    const/4 v8, 0x1

    if-ne v3, v7, :cond_3

    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->black:[S

    aget-short v3, v4, v3

    and-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v5

    ushr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0x7ff

    const/16 v9, 0xc

    if-ne v7, v9, :cond_1

    invoke-direct {p0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v1, v3

    sub-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    :cond_1
    if-eq v7, v5, :cond_2

    add-int/2addr v1, v3

    rsub-int/lit8 v2, v7, 0x9

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v4, :cond_0

    goto :goto_1

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Error 2"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 v0, 0xc8

    if-ne v3, v0, :cond_4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    sget-object v3, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v2, v3, v2

    ushr-int/lit8 v3, v2, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr v1, v3

    ushr-int/2addr v2, v8

    and-int/2addr v2, v5

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_1

    :cond_4
    add-int/2addr v1, v3

    sub-int/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_5
    return v1
.end method

.method private decodeWhiteCodeWord()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->white:[S

    aget-short v4, v4, v3

    and-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v4, 0x1

    const/16 v7, 0xf

    and-int/2addr v6, v7

    const/16 v8, 0xc

    if-ne v6, v8, :cond_1

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v4

    shl-int/lit8 v3, v3, 0x2

    and-int/2addr v3, v8

    or-int/2addr v3, v4

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v3, v4, v3

    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xfff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v4, 0x4

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    if-eq v6, v7, :cond_2

    ushr-int/lit8 v3, v4, 0x5

    and-int/lit16 v3, v3, 0x7ff

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v6, 0xa

    invoke-direct {p0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v5, :cond_0

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Error 1"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Error 0"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v2
.end method

.method private findNextLine()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v2, v0, -0xc

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    mul-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v3, v4

    :cond_0
    if-gt v3, v2, :cond_3

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v4

    add-int/lit8 v3, v3, 0xc

    :goto_0
    if-eq v4, v1, :cond_1

    if-ge v3, v0, :cond_1

    and-int/lit16 v4, v4, 0x7ff

    shl-int/2addr v4, v1

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v5

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_0

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->oneD:I

    if-ne v4, v1, :cond_2

    if-ge v3, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result p0

    return p0

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->prevChangingElems:[I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lastChangingElement:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz p2, :cond_1

    and-int/lit8 p2, v2, -0x2

    goto :goto_1

    :cond_1
    or-int/lit8 p2, v2, 0x1

    :goto_1
    if-ge p2, v1, :cond_3

    aget v2, v0, p2

    if-le v2, p1, :cond_2

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lastChangingElement:I

    aput v2, p3, v3

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr p2, v4

    if-ge p2, v1, :cond_4

    aget p0, v0, p2

    aput p0, p3, v4

    :cond_4
    return-void
.end method

.method private nextLesserThan8Bits(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->fillOrder:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    aget-byte v4, v0, v3

    if-ne v3, v1, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, v0, v1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v4, v6

    if-ne v3, v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    :goto_0
    move v4, v6

    :goto_1
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    rsub-int/lit8 v6, v1, 0x8

    sub-int v7, p1, v6

    sub-int v8, v6, p1

    if-ltz v8, :cond_3

    sget-object v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->table1:[I

    aget v0, v0, v6

    and-int/2addr v0, v4

    ushr-int/2addr v0, v8

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    const/16 p1, 0x8

    if-ne v1, p1, :cond_4

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->table1:[I

    aget p1, p1, v6

    and-int/2addr p1, v4

    neg-int v1, v8

    shl-int/2addr p1, v1

    sget-object v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->table2:[I

    aget v1, v1, v7

    and-int/2addr v0, v1

    rsub-int/lit8 v1, v7, 0x8

    ushr-int/2addr v0, v1

    or-int/2addr v0, p1

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    iput v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    :cond_4
    :goto_2
    return v0

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Invalid FillOrder"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private nextNBits(I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->fillOrder:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_2

    aget-byte v4, v0, v3

    if-ne v3, v1, :cond_0

    move v0, v5

    move v1, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v3, 0x1

    if-ne v6, v1, :cond_1

    aget-byte v0, v0, v6

    move v1, v5

    goto :goto_2

    :cond_1
    aget-byte v1, v0, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v0, v0, v6

    :goto_0
    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->flipTable:[B

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v4, v6

    if-ne v3, v1, :cond_3

    move v0, v5

    move v1, v0

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v3, 0x1

    if-ne v7, v1, :cond_4

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    move v1, v5

    goto :goto_1

    :cond_4
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v4, v1

    add-int/lit8 v7, v3, 0x2

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v4, v0

    move v4, v6

    goto :goto_0

    :goto_2
    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    sub-int/2addr p1, v6

    if-le p1, v7, :cond_5

    add-int/lit8 v8, p1, -0x8

    move v9, v7

    goto :goto_3

    :cond_5
    move v9, p1

    move v8, v5

    :goto_3
    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    sget-object v10, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->table1:[I

    aget v6, v10, v6

    and-int/2addr v4, v6

    shl-int p1, v4, p1

    sget-object v4, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->table2:[I

    aget v6, v4, v9

    and-int/2addr v0, v6

    rsub-int/lit8 v6, v9, 0x8

    ushr-int/2addr v0, v6

    if-eqz v8, :cond_6

    shl-int/2addr v0, v8

    aget v4, v4, v8

    and-int/2addr v1, v4

    rsub-int/lit8 v4, v8, 0x8

    ushr-int/2addr v1, v4

    or-int/2addr v0, v1

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    iput v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_4

    :cond_6
    if-ne v9, v7, :cond_7

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    goto :goto_4

    :cond_7
    iput v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    :goto_4
    or-int p0, p1, v0

    return p0

    :cond_8
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Invalid FillOrder"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setToBlack(II)V
    .locals 5

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    add-int/2addr p1, v0

    add-int/2addr p2, p1

    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-lez v1, :cond_1

    rsub-int/lit8 v1, v1, 0x7

    shl-int v1, v2, v1

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->buffer:[B

    aget-byte v3, v3, v0

    :goto_0
    if-lez v1, :cond_0

    if-ge p1, p2, :cond_0

    or-int/2addr v3, v1

    int-to-byte v3, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->buffer:[B

    aput-byte v3, v1, v0

    :cond_1
    shr-int/lit8 v0, p1, 0x3

    :goto_1
    add-int/lit8 v1, p2, -0x7

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    const/4 v4, -0x1

    aput-byte v4, v1, v0

    add-int/lit8 p1, p1, 0x8

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p1, p2, :cond_3

    shr-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->buffer:[B

    aget-byte v3, v1, v0

    and-int/lit8 v4, p1, 0x7

    rsub-int/lit8 v4, v4, 0x7

    shl-int v4, v2, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updatePointer(I)V
    .locals 3

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    rem-int/lit8 p1, p1, 0x8

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    :goto_0
    return-void
.end method

.method private warning(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    instance-of v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginDecoding()V
    .locals 6

    invoke-super {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->beginDecoding()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    instance-of v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x10a

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->fillOrder:I

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->compression:I

    const/16 v1, 0x124

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->t4Options:I

    and-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->oneD:I

    and-int/lit8 v5, v1, 0x2

    shr-int/lit8 v3, v5, 0x1

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->uncompressedMode:I

    and-int/lit8 v1, v1, 0x4

    shr-int/2addr v1, v2

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->fillBits:I

    const/16 v1, 0x125

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v4

    :goto_3
    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->t6Options:I

    goto :goto_4

    :cond_4
    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->fillOrder:I

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->compression:I

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->t4Options:I

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->oneD:I

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->uncompressedMode:I

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->fillBits:I

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->t6Options:I

    :goto_4
    return-void
.end method

.method public decodeNextScanline(I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    move v4, v2

    const/4 v5, 0x1

    :goto_0
    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-ge v4, v6, :cond_e

    move v6, v4

    :goto_1
    const-string v7, " expected pixels."

    const-string v8, " of "

    const-string v9, ": read "

    const/16 v10, 0xc

    const/4 v11, 0x2

    const/16 v12, 0xa

    const/16 v13, 0xf

    const/4 v14, 0x4

    if-eqz v5, :cond_4

    iget v15, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-ge v6, v15, :cond_4

    invoke-direct {v0, v12}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v12

    sget-object v15, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->white:[S

    aget-short v15, v15, v12

    and-int/lit8 v16, v15, 0x1

    ushr-int/lit8 v17, v15, 0x1

    and-int/lit8 v2, v17, 0xf

    if-ne v2, v10, :cond_1

    invoke-direct {v0, v11}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    shl-int/lit8 v7, v12, 0x2

    and-int/2addr v7, v10

    or-int/2addr v2, v7

    sget-object v7, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v2, v7, v2

    ushr-int/lit8 v7, v2, 0x1

    and-int/lit8 v7, v7, 0x7

    ushr-int/2addr v2, v14

    and-int/lit16 v2, v2, 0xfff

    add-int/2addr v6, v2

    sub-int/2addr v14, v7

    invoke-direct {v0, v14}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    :cond_0
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "Error 0"

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne v2, v13, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Premature EOL in white run of line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    return-void

    :cond_3
    ushr-int/lit8 v7, v15, 0x5

    and-int/lit16 v7, v7, 0x7ff

    add-int/2addr v6, v7

    rsub-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v16, :cond_0

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    aput v6, v2, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-ne v6, v2, :cond_6

    sub-int v1, v6, v4

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    rem-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_5

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v2

    const/16 v3, 0x35

    if-eq v2, v3, :cond_5

    const-string v2, "Missing zero white run length terminating code!"

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    :cond_5
    move v4, v6

    goto/16 :goto_6

    :cond_6
    move v4, v6

    :goto_3
    if-nez v5, :cond_c

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-ge v4, v2, :cond_c

    invoke-direct {v0, v14}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    sget-object v15, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->initBlack:[S

    aget-short v2, v15, v2

    ushr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v13

    const/4 v12, 0x5

    ushr-int/2addr v2, v12

    and-int/lit16 v2, v2, 0x7ff

    const/16 v3, 0x64

    if-ne v2, v3, :cond_9

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v2

    sget-object v3, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->black:[S

    aget-short v2, v3, v2

    and-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v13

    ushr-int/2addr v2, v12

    and-int/lit16 v2, v2, 0x7ff

    if-ne v15, v10, :cond_7

    invoke-direct {v0, v12}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    invoke-direct {v0, v14}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    sget-object v3, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v2, v3, v2

    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7

    ushr-int/2addr v2, v14

    and-int/lit16 v2, v2, 0xfff

    invoke-direct {v0, v4, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v4, v2

    rsub-int/lit8 v2, v3, 0x4

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    goto/16 :goto_5

    :cond_7
    if-ne v15, v13, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Premature EOL in black run of line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-direct {v0, v4, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v4, v2

    rsub-int/lit8 v2, v15, 0x9

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    if-nez v3, :cond_b

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v2, v3

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_a

    invoke-direct {v0, v11}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    sget-object v3, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v2, v3, v2

    ushr-int/lit8 v3, v2, 0x5

    and-int/lit16 v3, v3, 0x7ff

    const/4 v12, 0x1

    ushr-int/2addr v2, v12

    and-int/2addr v2, v13

    invoke-direct {v0, v4, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v4, v3

    rsub-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v2, v3

    goto :goto_4

    :cond_a
    const/4 v12, 0x1

    invoke-direct {v0, v4, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v4, v2

    rsub-int/lit8 v2, v15, 0x4

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v2, v3

    :goto_4
    move v5, v12

    :cond_b
    :goto_5
    const/16 v12, 0xa

    goto/16 :goto_3

    :cond_c
    const/4 v12, 0x1

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-ne v4, v2, :cond_d

    sub-int v1, v4, v6

    if-nez v5, :cond_e

    if-eqz v1, :cond_e

    rem-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_e

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v2

    const/16 v3, 0x37

    if-eq v2, v3, :cond_e

    const-string v2, "Missing zero black run length terminating code!"

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_e
    :goto_6
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    aput v4, v1, v2

    return-void
.end method

.method public decodeRLE()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->h:I

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeNextScanline(I)V

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    :cond_0
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public decodeRaw([BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->buffer:[B

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    iget p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->h:I

    mul-int/lit8 p4, p4, 0x8

    iput p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitsPerScanline:I

    mul-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->data:[B

    const/4 p2, 0x0

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitPointer:I

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 p2, p1, 0x1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->prevChangingElems:[I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->data:[B

    invoke-interface {p1, p2}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->compression:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeRLE()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeT4()V

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->t6Options:I

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->uncompressedMode:I

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeT6()V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljavax/imageio/IIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown compression type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->compression:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeT4()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, " expected pixels."

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->h:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->data:[B

    array-length v5, v5

    if-lt v5, v3, :cond_c

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const-string v5, "T.4 compressed data should begin with EOL."

    invoke-direct {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    const/4 v5, 0x0

    move v7, v5

    const/4 v8, -0x1

    :goto_0
    if-eq v7, v6, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->findNextLine()I

    move-result v7
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "No reference line present."

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    invoke-virtual {v0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeNextScanline(I)V

    add-int/2addr v8, v6

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    :goto_1
    if-ge v8, v2, :cond_b

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->findNextLine()I

    move-result v7
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_a

    iget-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->prevChangingElems:[I

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iput-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->prevChangingElems:[I

    iput-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iput v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lastChangingElement:I

    move v9, v5

    move v12, v9

    move v11, v6

    const/4 v10, -0x1

    :goto_2
    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-ge v9, v13, :cond_9

    invoke-direct {v0, v10, v11, v4}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    aget v10, v4, v5

    aget v13, v4, v6

    const/4 v14, 0x7

    invoke-direct {v0, v14}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v15

    sget-object v16, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v15, v16, v15

    and-int/lit16 v15, v15, 0xff

    and-int/lit8 v16, v15, 0x78

    ushr-int/lit8 v3, v16, 0x3

    and-int/2addr v14, v15

    if-nez v3, :cond_3

    if-nez v11, :cond_2

    sub-int v3, v13, v9

    invoke-direct {v0, v9, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_2
    rsub-int/lit8 v3, v14, 0x7

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    move v9, v13

    move v10, v9

    goto :goto_2

    :cond_3
    if-ne v3, v6, :cond_5

    rsub-int/lit8 v3, v14, 0x7

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    if-eqz v11, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v3

    add-int/2addr v9, v3

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v10, v12, 0x1

    aput v9, v3, v12

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v3

    invoke-direct {v0, v9, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v9, v3

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v12, v10, 0x1

    aput v9, v3, v10

    goto :goto_3

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v3

    invoke-direct {v0, v9, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v9, v3

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v10, v12, 0x1

    aput v9, v3, v12

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v3

    add-int/2addr v9, v3

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v12, v10, 0x1

    aput v9, v3, v10

    :goto_3
    move v10, v9

    move v9, v10

    goto :goto_2

    :cond_5
    const/16 v13, 0x8

    if-gt v3, v13, :cond_7

    add-int/lit8 v3, v3, -0x5

    add-int/2addr v10, v3

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v13, v12, 0x1

    aput v10, v3, v12

    if-nez v11, :cond_6

    sub-int v3, v10, v9

    invoke-direct {v0, v9, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_6
    xor-int/lit8 v11, v11, 0x1

    rsub-int/lit8 v3, v14, 0x7

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    move v9, v10

    move v12, v13

    goto/16 :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown coding mode encountered at line "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v10, v8

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": read "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " of "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    move v3, v5

    :goto_4
    if-eq v7, v6, :cond_8

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->findNextLine()I

    move-result v7
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync loss at line "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lines."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    return-void

    :cond_8
    add-int/lit8 v3, v3, -0x1

    add-int/2addr v8, v3

    const/16 v3, 0xd

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    :cond_9
    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    add-int/lit8 v7, v12, 0x1

    aput v9, v3, v12

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    goto :goto_5

    :cond_a
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v3, v8

    invoke-virtual {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeNextScanline(I)V

    :goto_5
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v3, v7

    iput v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    add-int/2addr v8, v6

    goto/16 :goto_1

    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input exhausted before EOL found at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": read 0 of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Insufficient data to read initial EOL."

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized decodeT6()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->h:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    const/4 v7, 0x0

    aput v6, v3, v7

    add-int/lit8 v8, v4, 0x1

    iput v8, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    aput v6, v3, v4

    move v3, v7

    :goto_0
    if-ge v3, v0, :cond_19

    iget-object v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->prevChangingElems:[I

    iget-object v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iput-object v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->prevChangingElems:[I

    iput-object v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->currChangingElems:[I

    iput v7, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lastChangingElement:I

    const/4 v6, -0x1

    move v10, v5

    move v8, v7

    move v9, v8

    :goto_1
    iget v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-ge v8, v11, :cond_17

    invoke-direct {v1, v6, v10, v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    aget v11, v2, v7

    aget v12, v2, v5

    const/4 v13, 0x7

    invoke-direct {v1, v13}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v14

    sget-object v15, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v14, v15, v14

    and-int/lit16 v14, v14, 0xff

    and-int/lit8 v15, v14, 0x78

    const/4 v7, 0x3

    ushr-int/2addr v15, v7

    and-int/2addr v14, v13

    if-nez v15, :cond_3

    if-nez v10, :cond_1

    iget v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-le v12, v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decoded row "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v11, v3

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " too long; ignoring extra samples."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    move v12, v6

    :cond_0
    sub-int v6, v12, v8

    invoke-direct {v1, v8, v6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_1
    move v8, v12

    rsub-int/lit8 v6, v14, 0x7

    invoke-direct {v1, v6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    :goto_2
    move v6, v8

    :cond_2
    :goto_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    if-ne v15, v5, :cond_7

    rsub-int/lit8 v6, v14, 0x7

    invoke-direct {v1, v6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    if-eqz v10, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v6

    add-int/2addr v8, v6

    add-int/lit8 v6, v9, 0x1

    aput v8, v4, v9

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v7

    iget v9, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    sub-int v11, v9, v8

    if-le v7, v11, :cond_4

    sub-int v7, v9, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decoded row "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " too long; ignoring extra samples."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    :cond_4
    invoke-direct {v1, v8, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v8, v7

    add-int/lit8 v7, v6, 0x1

    aput v8, v4, v6

    goto :goto_4

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v6

    iget v7, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    sub-int v11, v7, v8

    if-le v6, v11, :cond_6

    sub-int v6, v7, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decoded row "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v11, v3

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " too long; ignoring extra samples."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    :cond_6
    invoke-direct {v1, v8, v6}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/2addr v8, v6

    add-int/lit8 v6, v9, 0x1

    aput v8, v4, v9

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v7, v6, 0x1

    aput v8, v4, v6

    :goto_4
    move v9, v7

    goto/16 :goto_2

    :cond_7
    const/16 v12, 0x8

    if-gt v15, v12, :cond_b

    add-int/lit8 v15, v15, -0x5

    add-int/2addr v11, v15

    add-int/lit8 v6, v9, 0x1

    aput v11, v4, v9

    if-nez v10, :cond_9

    iget v7, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->w:I

    if-le v11, v7, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decoded row "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " too long; ignoring extra samples."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    move v11, v7

    :cond_8
    sub-int v7, v11, v8

    invoke-direct {v1, v8, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    :cond_9
    move v8, v11

    if-nez v10, :cond_a

    move v10, v5

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    rsub-int/lit8 v7, v14, 0x7

    invoke-direct {v1, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->updatePointer(I)V

    move v9, v6

    goto/16 :goto_2

    :cond_b
    const/16 v11, 0xb

    if-ne v15, v11, :cond_16

    invoke-direct {v1, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v7

    if-eq v7, v13, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported entrance code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for extension mode at line "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v7, v3

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    :cond_c
    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_6
    if-nez v7, :cond_2

    :goto_7
    invoke-direct {v1, v5}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v12

    if-eq v12, v5, :cond_d

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_d
    const/4 v12, 0x5

    if-le v11, v12, :cond_13

    add-int/lit8 v11, v11, -0x6

    if-nez v10, :cond_e

    if-lez v11, :cond_e

    add-int/lit8 v7, v9, 0x1

    aput v8, v4, v9

    move v9, v7

    :cond_e
    add-int/2addr v8, v11

    if-lez v11, :cond_f

    move v10, v5

    :cond_f
    invoke-direct {v1, v5}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v7

    if-nez v7, :cond_11

    if-nez v10, :cond_10

    add-int/lit8 v7, v9, 0x1

    aput v8, v4, v9

    move v9, v7

    :cond_10
    move v10, v5

    goto :goto_8

    :cond_11
    if-eqz v10, :cond_12

    add-int/lit8 v7, v9, 0x1

    aput v8, v4, v9

    move v9, v7

    :cond_12
    const/4 v10, 0x0

    :goto_8
    move v7, v5

    :cond_13
    if-ne v11, v12, :cond_15

    if-nez v10, :cond_14

    add-int/lit8 v10, v9, 0x1

    aput v8, v4, v9

    move v9, v10

    :cond_14
    add-int/2addr v8, v11

    move v10, v5

    goto :goto_6

    :cond_15
    add-int/2addr v8, v11

    add-int/lit8 v10, v9, 0x1

    aput v8, v4, v9

    invoke-direct {v1, v8, v5}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->setToBlack(II)V

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    const/4 v10, 0x0

    goto :goto_6

    :cond_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown coding mode encountered at line "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    add-int/2addr v11, v3

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->warning(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    if-gt v9, v11, :cond_18

    add-int/lit8 v6, v9, 0x1

    aput v8, v4, v9

    move v9, v6

    :cond_18
    iput v9, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->changingElemSize:I

    iget v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I

    iget v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;->lineBitNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
