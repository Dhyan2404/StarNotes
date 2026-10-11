.class public Lsun/awt/image/PixelConverter$RgbaPre;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RgbaPre"
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$RgbaPre;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$RgbaPre;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$RgbaPre;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/awt/image/PixelConverter;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lsun/awt/image/PixelConverter;->alphaMask:I

    return-void
.end method


# virtual methods
.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 2

    and-int/lit16 p0, p1, 0xff

    const/16 p2, 0xff

    if-eq p0, p2, :cond_0

    if-eqz p0, :cond_0

    ushr-int/lit8 v0, p1, 0x18

    shr-int/lit8 v1, p1, 0x10

    and-int/2addr v1, p2

    shr-int/lit8 p1, p1, 0x8

    and-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    sub-int/2addr p2, v0

    div-int/2addr p2, p0

    shl-int/lit8 v0, v1, 0x8

    sub-int/2addr v0, v1

    div-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x8

    sub-int/2addr v1, p1

    div-int/2addr v1, p0

    shl-int/lit8 p1, p2, 0x18

    shl-int/lit8 p2, v0, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0

    :cond_0
    ushr-int/lit8 p0, p1, 0x8

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 2

    shr-int/lit8 p0, p1, 0x18

    const/4 p2, -0x1

    if-ne p0, p2, :cond_0

    shl-int/lit8 p0, p1, 0x8

    ushr-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    ushr-int/lit8 p0, p1, 0x18

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v1, p0, 0x7

    add-int/2addr v1, p0

    mul-int/2addr p2, v1

    shr-int/lit8 p2, p2, 0x8

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    mul-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x8

    shl-int/lit8 p2, p2, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method
