.class final Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;
.super Ljava/awt/color/ColorSpace;
.source "SourceFile"


# static fields
.field static final INSTANCE:Ljava/awt/color/ColorSpace;


# instance fields
.field final sRGB:Ljava/awt/color/ColorSpace;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->INSTANCE:Ljava/awt/color/ColorSpace;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/awt/color/ColorSpace;-><init>(II)V

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->sRGB:Ljava/awt/color/ColorSpace;

    return-void
.end method

.method public static getInstance()Ljava/awt/color/ColorSpace;
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->INSTANCE:Ljava/awt/color/ColorSpace;

    return-object v0
.end method


# virtual methods
.method public fromCIEXYZ([F)[F
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->sRGB:Ljava/awt/color/ColorSpace;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->fromRGB([F)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object p0

    return-object p0
.end method

.method public fromRGB([F)[F
    .locals 6

    const/4 p0, 0x0

    aget v0, p1, p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    sub-float v3, v1, v3

    const/4 v4, 0x2

    aget p1, p1, v4

    sub-float/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v5, 0x4

    new-array v5, v5, [F

    sub-float/2addr v0, p1

    aput v0, v5, p0

    sub-float/2addr v3, p1

    aput v3, v5, v2

    sub-float/2addr v1, p1

    aput v1, v5, v4

    const/4 p0, 0x3

    aput p1, v5, p0

    return-object v5
.end method

.method public toCIEXYZ([F)[F
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->sRGB:Ljava/awt/color/ColorSpace;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/color/CMYKColorSpace;->toRGB([F)[F

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object p0

    return-object p0
.end method

.method public toRGB([F)[F
    .locals 5

    const/4 p0, 0x3

    new-array v0, p0, [F

    const/4 v1, 0x0

    aget v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    aget p0, p1, p0

    sub-float v4, v3, p0

    mul-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    sub-float v2, v3, v2

    sub-float v4, v3, p0

    mul-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x2

    aget p1, p1, v1

    sub-float p1, v3, p1

    sub-float/2addr v3, p0

    mul-float/2addr p1, v3

    aput p1, v0, v1

    return-object v0
.end method
