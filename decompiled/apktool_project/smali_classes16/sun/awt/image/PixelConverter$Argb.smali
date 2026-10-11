.class public Lsun/awt/image/PixelConverter$Argb;
.super Lsun/awt/image/PixelConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/PixelConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Argb"
.end annotation


# static fields
.field public static final instance:Lsun/awt/image/PixelConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/awt/image/PixelConverter$Argb;

    invoke-direct {v0}, Lsun/awt/image/PixelConverter$Argb;-><init>()V

    sput-object v0, Lsun/awt/image/PixelConverter$Argb;->instance:Lsun/awt/image/PixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/awt/image/PixelConverter;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lsun/awt/image/PixelConverter;->alphaMask:I

    return-void
.end method


# virtual methods
.method public pixelToRgb(ILjava/awt/image/ColorModel;)I
    .locals 0

    return p1
.end method

.method public rgbToPixel(ILjava/awt/image/ColorModel;)I
    .locals 0

    return p1
.end method
