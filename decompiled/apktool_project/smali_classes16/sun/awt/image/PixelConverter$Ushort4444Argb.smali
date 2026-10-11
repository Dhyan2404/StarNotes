.class public Lsun/awt/image/PixelConverter$Ushort4444Argb;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ushort4444Argb"
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$Ushort4444Argb;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$Ushort4444Argb;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$Ushort4444Argb;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/awt/image/PixelConverter;-><init>()V

    const v0, 0xf000

    iput v0, p0, Lsun/awt/image/PixelConverter;->alphaMask:I

    return-void
.end method


# virtual methods
.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 3

    shl-int/lit8 p0, p1, 0x10

    shl-int/lit8 p2, p1, 0xc

    or-int/2addr p0, p2

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p2, v0

    const/high16 v1, 0xff0000

    and-int/2addr p2, v1

    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v0, v1

    const v2, 0xff00

    and-int/2addr v0, v2

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p2

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 1

    shr-int/lit8 p0, p1, 0x10

    const p2, 0xf000

    and-int/2addr p0, p2

    shr-int/lit8 p2, p1, 0xc

    and-int/lit16 p2, p2, 0xf00

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p0, p2

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method
