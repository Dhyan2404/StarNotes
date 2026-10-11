.class public Lsun/awt/image/PixelConverter$Rgba;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgba"
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$Rgba;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$Rgba;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$Rgba;->instance:Lsun/awt/image/PixelConverter;

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
    .locals 0

    shl-int/lit8 p0, p1, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 0

    shl-int/lit8 p0, p1, 0x8

    ushr-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method
