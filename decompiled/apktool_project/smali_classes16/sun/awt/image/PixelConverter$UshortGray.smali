.class public Lsun/awt/image/PixelConverter$UshortGray;
.super Lsun/awt/image/PixelConverter$ByteGray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UshortGray"
.end annotation


# static fields
.field static final SHORT_MULT:D = 257.0

.field static final USHORT_BLU_MULT:D = 29.298000000000002

.field static final USHORT_GRN_MULT:D = 150.85899999999998

.field static final USHORT_RED_MULT:D = 76.843

.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$UshortGray;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$UshortGray;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$UshortGray;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/awt/image/PixelConverter$ByteGray;-><init>(Lsun/awt/image/PixelConverter$1;)V

    return-void
.end method


# virtual methods
.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 0

    shr-int/lit8 p0, p1, 0x8

    const p1, 0xff00

    or-int/2addr p1, p0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p0

    shl-int/lit8 p1, p1, 0x8

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

    const-wide v2, 0x405335f3b645a1cbL    # 76.843

    mul-double/2addr v0, v2

    int-to-double v2, p2

    const-wide v4, 0x4062db7ced916872L    # 150.85899999999998

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    int-to-double p0, p1

    const-wide v2, 0x403d4c49ba5e3540L    # 29.298000000000002

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method
