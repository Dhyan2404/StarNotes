.class public Lcom/twelvemonkeys/image/BrightnessContrastFilter;
.super Ljava/awt/image/RGBImageFilter;
.source "SourceFile"


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x3e99999a    # 0.3f

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/twelvemonkeys/image/BrightnessContrastFilter;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/awt/image/RGBImageFilter;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/twelvemonkeys/image/BrightnessContrastFilter;->canFilterIndexColorModel:Z

    .line 4
    invoke-static {p1, p2}, Lcom/twelvemonkeys/image/BrightnessContrastFilter;->b(FF)[I

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/image/BrightnessContrastFilter;->a:[I

    return-void
.end method

.method public static a(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static b(FF)[I
    .locals 14

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    float-to-double v2, p1

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x405fc00000000000L    # 127.0

    mul-double/2addr v2, v4

    goto :goto_0

    :cond_0
    float-to-double v2, p1

    :goto_0
    float-to-double v4, p0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_1

    const-wide v8, 0x405fe00000000000L    # 127.5

    mul-double/2addr v8, v4

    add-int/lit8 v10, p0, -0x7f

    int-to-double v10, v10

    add-double v12, v2, v6

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v8}, Lcom/twelvemonkeys/image/BrightnessContrastFilter;->a(I)I

    move-result v8

    aput v8, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_2

    const/16 p0, 0x7e

    aget p0, v1, p0

    const/16 p1, 0x7f

    aput p0, v1, p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 1

    shr-int/lit8 p1, p3, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 v0, p3, 0xff

    iget-object p0, p0, Lcom/twelvemonkeys/image/BrightnessContrastFilter;->a:[I

    aget p1, p0, p1

    aget p2, p0, p2

    aget p0, p0, v0

    const/high16 v0, -0x1000000

    and-int/2addr p3, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p3

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method
