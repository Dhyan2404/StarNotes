.class public Lsun/awt/image/PixelConverter$ByteGray;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteGray"
.end annotation


# static fields
.field static final BLU_MULT:D = 0.114

.field static final GRN_MULT:D = 0.587

.field static final RED_MULT:D = 0.299

.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$ByteGray;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$ByteGray;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$ByteGray;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/awt/image/PixelConverter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/awt/image/PixelConverter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/awt/image/PixelConverter$ByteGray;-><init>()V

    return-void
.end method


# virtual methods
.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 0

    const p0, 0xff00

    or-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 6

    shr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 p1, p1, 0xff

    int-to-double v0, p0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    int-to-double v2, p2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    int-to-double p0, p1

    const-wide v2, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method
