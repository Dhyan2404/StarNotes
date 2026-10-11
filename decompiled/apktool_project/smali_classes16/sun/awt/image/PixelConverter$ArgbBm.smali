.class public Lsun/awt/image/PixelConverter$ArgbBm;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgbBm"
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$ArgbBm;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$ArgbBm;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$ArgbBm;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/awt/image/PixelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 0

    shl-int/lit8 p0, p1, 0x7

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 0

    shr-int/lit8 p0, p1, 0x1f

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method
