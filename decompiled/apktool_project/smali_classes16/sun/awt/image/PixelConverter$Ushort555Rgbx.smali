.class public Lsun/awt/image/PixelConverter$Ushort555Rgbx;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ushort555Rgbx"
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$Ushort555Rgbx;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$Ushort555Rgbx;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$Ushort555Rgbx;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/awt/image/PixelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 1

    shr-int/lit8 p0, p1, 0xb

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p2, p0, 0x3

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, p2

    shr-int/lit8 p2, p1, 0x6

    and-int/lit8 p2, p2, 0x1f

    shl-int/lit8 v0, p2, 0x3

    shr-int/lit8 p2, p2, 0x2

    or-int/2addr p2, v0

    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 v0, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 0

    shr-int/lit8 p0, p1, 0x8

    const p2, 0xf800

    and-int/2addr p0, p2

    shr-int/lit8 p2, p1, 0x5

    and-int/lit16 p2, p2, 0x7c0

    or-int/2addr p0, p2

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x3e

    or-int/2addr p0, p1

    return p0
.end method
