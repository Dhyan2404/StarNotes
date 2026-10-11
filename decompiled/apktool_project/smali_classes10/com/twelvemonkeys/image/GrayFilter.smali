.class public Lcom/twelvemonkeys/image/GrayFilter;
.super Ljava/awt/image/RGBImageFilter;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/awt/image/RGBImageFilter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/twelvemonkeys/image/GrayFilter;->canFilterIndexColorModel:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/twelvemonkeys/image/GrayFilter;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/twelvemonkeys/image/GrayFilter;->b:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/awt/image/RGBImageFilter;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/twelvemonkeys/image/GrayFilter;->canFilterIndexColorModel:Z

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/twelvemonkeys/image/GrayFilter;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/twelvemonkeys/image/GrayFilter;->b:F

    cmpl-float v1, p1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move p1, v2

    :cond_0
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    cmpg-float v1, p2, v2

    if-gez v1, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    cmpl-float v1, p2, v0

    if-lez v1, :cond_4

    move p2, v0

    :cond_4
    :goto_1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 9
    iput v0, p0, Lcom/twelvemonkeys/image/GrayFilter;->a:I

    sub-float/2addr p2, p1

    .line 10
    iput p2, p0, Lcom/twelvemonkeys/image/GrayFilter;->b:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/image/GrayFilter;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 1

    shr-int/lit8 p1, p3, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 v0, p3, 0xff

    mul-int/lit16 p1, p1, 0xde

    mul-int/lit16 p2, p2, 0x2c3

    add-int/2addr p1, p2

    mul-int/lit8 v0, v0, 0x47

    add-int/2addr p1, v0

    div-int/lit16 p1, p1, 0x3e8

    iget p2, p0, Lcom/twelvemonkeys/image/GrayFilter;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/twelvemonkeys/image/GrayFilter;->a:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr p1, p0

    :cond_0
    const/high16 p0, -0x1000000

    and-int/2addr p0, p3

    shl-int/lit8 p2, p1, 0x10

    or-int/2addr p0, p2

    shl-int/lit8 p2, p1, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method
