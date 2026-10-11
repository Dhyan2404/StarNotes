.class public Lsun/awt/image/PixelConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/image/PixelConverter$Xrgb;,
        Lsun/awt/image/PixelConverter$Xbgr;,
        Lsun/awt/image/PixelConverter$UshortGray;,
        Lsun/awt/image/PixelConverter$Ushort565Rgb;,
        Lsun/awt/image/PixelConverter$Ushort555Rgbx;,
        Lsun/awt/image/PixelConverter$Ushort555Rgb;,
        Lsun/awt/image/PixelConverter$Ushort4444Argb;,
        Lsun/awt/image/PixelConverter$Rgbx;,
        Lsun/awt/image/PixelConverter$RgbaPre;,
        Lsun/awt/image/PixelConverter$Rgba;,
        Lsun/awt/image/PixelConverter$ByteGray;,
        Lsun/awt/image/PixelConverter$Bgrx;,
        Lsun/awt/image/PixelConverter$ArgbPre;,
        Lsun/awt/image/PixelConverter$ArgbBm;,
        Lsun/awt/image/PixelConverter$Argb;
    }
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# instance fields
.field protected alphaMask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/awt/image/PixelConverter;->alphaMask:I

    return-void
.end method


# virtual methods
.method public final getAlphaMask()I
    .locals 0

    iget p0, p0, Lsun/awt/image/PixelConverter;->alphaMask:I

    return p0
.end method

.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 0

    return p1
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 4

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->getTransferType()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    check-cast p0, [I

    aget p0, p0, v2

    return p0

    :cond_1
    check-cast p0, [S

    array-length p1, p0

    if-le p1, v3, :cond_2

    aget-short p1, p0, v3

    shl-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    aget-short p0, p0, v2

    const p2, 0xffff

    and-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0

    :cond_3
    check-cast p0, [B

    array-length p1, p0

    if-eq p1, v3, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    aget-byte p1, p0, v0

    shl-int/lit8 p1, p1, 0x18

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    aget-byte p2, p0, v1

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    aget-byte p2, p0, v3

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    goto :goto_3

    :cond_6
    move p1, v2

    :goto_3
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method
