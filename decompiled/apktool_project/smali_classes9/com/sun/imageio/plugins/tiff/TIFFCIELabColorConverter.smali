.class public Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;
.super Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;
.source "SourceFile"


# static fields
.field private static final THRESHOLD:F

.field private static final Xn:F = 95.047f

.field private static final Yn:F = 100.0f

.field private static final Zn:F = 108.883f


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->THRESHOLD:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;-><init>()V

    return-void
.end method

.method private clamp(F)F
    .locals 1

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    const/high16 p0, 0x42c80000    # 100.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/high16 p0, 0x437f0000    # 255.0f

    return p0

    :cond_1
    const p0, 0x40233333    # 2.55f

    mul-float/2addr p1, p0

    return p1
.end method

.method private clamp2(F)F
    .locals 1

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    return p0

    :cond_0
    const/high16 p0, 0x437f0000    # 255.0f

    cmpl-float v0, p1, p0

    if-lez v0, :cond_1

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public fromRGB(FFF[F)V
    .locals 8

    const v0, 0x3ed32d0a

    mul-float/2addr v0, p1

    const v1, 0x3eb714ba    # 0.35758f

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    const v1, 0x3e38c0cf

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    const v1, 0x3e59c66d

    mul-float/2addr v1, p1

    const v2, 0x3f3714ba

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const v2, 0x3d93cd57

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    const v2, 0x3c9e6256    # 0.019334f

    mul-float/2addr p1, v2

    const v2, 0x3df41b76

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    const p2, 0x3f734214

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr v1, p2

    const p2, 0x42be1810

    div-float/2addr v0, p2

    const p2, 0x42d9c419

    div-float/2addr p1, p2

    const p2, 0x3c1118c2    # 0.008856f

    cmpg-float p3, v1, p2

    const v2, 0x3e0d3dcb

    const v3, 0x40f92f1b    # 7.787f

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    if-gez p3, :cond_0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    float-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    :goto_0
    cmpg-float p3, v0, p2

    if-gez p3, :cond_1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    goto :goto_1

    :cond_1
    float-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    :goto_1
    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    mul-float/2addr p1, v3

    add-float/2addr p1, v2

    goto :goto_2

    :cond_2
    float-to-double p1, p1

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    :goto_2
    const/high16 p2, 0x42e80000    # 116.0f

    mul-float/2addr p2, v1

    const/high16 p3, 0x41800000    # 16.0f

    sub-float/2addr p2, p3

    const/high16 p3, 0x43fa0000    # 500.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 p3, 0x43480000    # 200.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, p3

    const p1, 0x40233333    # 2.55f

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float p3, v0, p1

    const/high16 v2, 0x43800000    # 256.0f

    if-gez p3, :cond_3

    add-float/2addr v0, v2

    :cond_3
    cmpg-float p1, v1, p1

    if-gez p1, :cond_4

    add-float/2addr v1, v2

    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->clamp2(F)F

    move-result p2

    aput p2, p4, p1

    const/4 p1, 0x1

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->clamp2(F)F

    move-result p2

    aput p2, p4, p1

    const/4 p1, 0x2

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->clamp2(F)F

    move-result p0

    aput p0, p4, p1

    return-void
.end method

.method public toRGB(FFF[F)V
    .locals 8

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x43000000    # 128.0f

    cmpl-float v2, p2, v1

    const/high16 v3, 0x43800000    # 256.0f

    if-lez v2, :cond_0

    sub-float/2addr p2, v3

    :cond_0
    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    sub-float/2addr p3, v3

    :cond_1
    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v1, p1, v1

    const v2, 0x3e0d3dcb

    const v3, 0x40f92f1b    # 7.787f

    if-gez v1, :cond_2

    const v1, 0x4461d333    # 903.3f

    div-float/2addr p1, v1

    mul-float v1, p1, v3

    add-float/2addr v1, v2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x42e80000    # 116.0f

    div-float/2addr p1, v1

    mul-float v1, p1, p1

    mul-float/2addr p1, v1

    float-to-double v4, p1

    const-wide v6, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    :goto_0
    mul-float/2addr p1, v0

    const/high16 v0, 0x43fa0000    # 500.0f

    div-float/2addr p2, v0

    add-float/2addr p2, v1

    sget v0, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->THRESHOLD:F

    cmpg-float v4, p2, v0

    const v5, 0x42be1810

    if-gtz v4, :cond_3

    sub-float/2addr p2, v2

    mul-float/2addr p2, v5

    div-float/2addr p2, v3

    goto :goto_1

    :cond_3
    mul-float/2addr v5, p2

    mul-float/2addr v5, p2

    mul-float/2addr p2, v5

    :goto_1
    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr p3, v4

    sub-float/2addr v1, p3

    cmpg-float p3, v1, v0

    const v0, 0x42d9c419

    if-gtz p3, :cond_4

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    goto :goto_2

    :cond_4
    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    mul-float/2addr v1, v0

    :goto_2
    const p3, 0x404f6402

    mul-float/2addr p3, p2

    const v0, 0x3fc4c155

    mul-float/2addr v0, p1

    sub-float/2addr p3, v0

    const v0, 0x3eff3ffb

    mul-float/2addr v0, v1

    sub-float/2addr p3, v0

    const v0, -0x4087ded7

    mul-float/2addr v0, p2

    const v2, 0x3ff02081

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    const v2, 0x3d2a36a0    # 0.041556f

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    const v2, 0x3d63ef28    # 0.055648f

    mul-float/2addr p2, v2

    const v2, 0x3e50f0a6    # 0.204043f

    mul-float/2addr p1, v2

    sub-float/2addr p2, p1

    const p1, 0x3f8755f8

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    const/4 p1, 0x0

    invoke-direct {p0, p3}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->clamp(F)F

    move-result p3

    aput p3, p4, p1

    const/4 p1, 0x1

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->clamp(F)F

    move-result p3

    aput p3, p4, p1

    const/4 p1, 0x2

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;->clamp(F)F

    move-result p0

    aput p0, p4, p1

    return-void
.end method
