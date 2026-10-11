.class public final Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;
    }
.end annotation


# instance fields
.field public final a:[F


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "illuminant"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter$Illuminant;->getWhitePoint()[F

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->a:[F

    return-void
.end method

.method public static e(DD)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide v0, 0x3fef127f00000000L    # 0.9710078239440918

    sub-long/2addr p0, v0

    long-to-double p0, p0

    mul-double/2addr p2, p0

    double-to-long p0, p2

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final a(FFF[F)[F
    .locals 7

    const/high16 v0, 0x41800000    # 16.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x42e80000    # 116.0f

    div-float/2addr p1, v0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr p2, v1

    add-float/2addr p2, p1

    mul-float v1, p2, p2

    mul-float/2addr v1, p2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr p3, v2

    sub-float p3, p1, p3

    mul-float v2, p3, p3

    mul-float/2addr v2, p3

    const v3, 0x3c1118c2    # 0.008856f

    cmpl-float v4, v0, v3

    const v5, 0x40f92f1b    # 7.787f

    const v6, 0x3e0d3dcb

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v6

    div-float v0, p1, v5

    :goto_0
    cmpl-float p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr p2, v6

    div-float v1, p2, v5

    :goto_1
    cmpl-float p1, v2, v3

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    sub-float/2addr p3, v6

    div-float v2, p3, v5

    :goto_2
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->a:[F

    const/4 p1, 0x0

    aget p2, p0, p1

    mul-float/2addr v1, p2

    aput v1, p4, p1

    const/4 p1, 0x1

    aget p2, p0, p1

    mul-float/2addr v0, p2

    aput v0, p4, p1

    const/4 p1, 0x2

    aget p0, p0, p1

    mul-float/2addr v2, p0

    aput v2, p4, p1

    return-object p4
.end method

.method public final b(FFF[F)[F
    .locals 9

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    div-float/2addr p3, v0

    const v0, 0x404f65fe

    mul-float/2addr v0, p1

    const v1, -0x403b3d08    # -1.5372f

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    const v1, -0x4100b780    # -0.4986f

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    const v1, -0x4087f62b    # -0.9689f

    mul-float/2addr v1, p1

    const v2, 0x3ff01a37    # 1.8758f

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const v2, 0x3d29fbe7    # 0.0415f

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    const v2, 0x3d6425af    # 0.0557f

    mul-float/2addr p1, v2

    const v2, -0x41af1aa0    # -0.204f

    mul-float/2addr p2, v2

    add-float/2addr p1, p2

    const p2, 0x3f874bc7    # 1.057f

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    const p2, 0x3b4d2e1c    # 0.0031308f

    cmpl-float p3, v0, p2

    const v2, 0x3d6147ae    # 0.055f

    const-wide v3, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const v5, 0x3f870a3d    # 1.055f

    const v6, 0x414eb852    # 12.92f

    if-lez p3, :cond_0

    float-to-double v7, v0

    invoke-static {v7, v8, v3, v4}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->e(DD)D

    move-result-wide v7

    double-to-float p3, v7

    mul-float/2addr p3, v5

    sub-float/2addr p3, v2

    goto :goto_0

    :cond_0
    mul-float p3, v0, v6

    :goto_0
    cmpl-float v0, v1, p2

    if-lez v0, :cond_1

    float-to-double v0, v1

    invoke-static {v0, v1, v3, v4}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->e(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v5

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_1
    mul-float v0, v1, v6

    :goto_1
    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    float-to-double p1, p1

    invoke-static {p1, p2, v3, v4}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->e(DD)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v5

    sub-float/2addr p1, v2

    goto :goto_2

    :cond_2
    mul-float/2addr p1, v6

    :goto_2
    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p3, p2

    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->d(F)F

    move-result p3

    const/4 v1, 0x0

    aput p3, p4, v1

    mul-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->d(F)F

    move-result p3

    const/4 v0, 0x1

    aput p3, p4, v0

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->d(F)F

    move-result p0

    const/4 p1, 0x2

    aput p0, p4, p1

    return-object p4
.end method

.method public final c([F[F)[F
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->b(FFF[F)[F

    move-result-object p0

    return-object p0
.end method

.method public final d(F)F
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

.method public toRGB(FFF[F)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->a(FFF[F)[F

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/twelvemonkeys/imageio/color/CIELabColorConverter;->c([F[F)[F

    return-void
.end method
