.class public Lsun/awt/image/PixelConverter$Bgrx;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bgrx"
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$Bgrx;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$Bgrx;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$Bgrx;->instance:Lsun/awt/image/PixelConverter;

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

    const p0, 0xff00

    and-int p2, p1, p0

    shl-int/lit8 p2, p2, 0x8

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr p0, v0

    or-int/2addr p0, p2

    ushr-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 1

    shl-int/lit8 p0, p1, 0x18

    const p2, 0xff00

    and-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 p1, p1, 0x8

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method
