.class public final Lcom/sunia/HTREnginev2/k0m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D

.field public static final b:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/sunia/HTREnginev2/k0m;->a:D

    const/16 v0, 0x1f

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sunia/HTREnginev2/k0m;->b:[D

    return-void

    :array_0
    .array-data 8
        0x0
        0x3fc3a37a020b8c22L    # 0.15342640972002736
        0x3fb4c071bcda0a5bL    # 0.08106146679532726
        0x3fac1098b28dcf33L    # 0.05481412105191765
        0x3fa52a9b923ea649L    # 0.0413406959554093
        0x3fa0fab9626b44ffL    # 0.03316287351993629
        0x3f9c579a268d80b3L    # 0.02767792568499834
        0x3f9850ea113caf0eL    # 0.023746163656297496
        0x3f954a2662fd78a9L    # 0.020790672103765093
        0x3f92eea2e990f134L    # 0.018488450532673187
        0x3f910b4e513fcbedL    # 0.016644691189821193
        0x3f8eff15b81c9cc5L    # 0.015134973221917378
        0x3f8c6b167bebdf36L    # 0.013876128823070748
        0x3f8a3c5f8a1e7d1dL    # 0.012810465242920227
        0x3f885d4d612e4a86L    # 0.01189670994589177
        0x3f86bdfcc7fbdb0aL    # 0.011104559758206917
        0x3f8552805e7b3076L    # 0.010411265261972096
        0x3f8411b75e41049cL    # 0.009799416126158804
        0x3f82f4871b12ab64L    # 0.009255462182712733
        0x3f81f553026fbce1L    # 0.008768700134139386
        0x3f810f9d4c0743a7L    # 0.00833056343336287
        0x3f803fc2d49c8fb9L    # 0.00793411456431402
        0x3f7f0593088014f8L    # 0.007573675487951841
        0x3f7dac773cc5b3cdL    # 0.007244554301320383
        0x3f7c7018733aa9c6L    # 0.00694284010720953
        0x3f7b4d04a067629fL    # 0.006665247032707682
        0x3f7a40514700f36cL    # 0.006408994188004207
        0x3f7947826547fe6cL    # 0.006171712263039458
        0x3f786076c002d4a7L    # 0.0059513701127588475
        0x3f7789583ffc5e8cL    # 0.0057462165130101155
        0x3f76c08f6f194a10L    # 0.005554733551962801
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)D
    .locals 10

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    add-double v4, p0, p2

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v4

    cmpg-double v2, v2, v6

    if-gez v2, :cond_0

    div-double p2, v0, v4

    mul-double/2addr v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    mul-double/2addr p0, p2

    mul-double/2addr p2, p2

    const/4 v2, 0x1

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    move v5, v2

    :goto_0
    cmpl-double v3, v0, v3

    if-eqz v3, :cond_1

    mul-double/2addr p0, p2

    mul-int/lit8 v3, v5, 0x2

    add-int/2addr v3, v2

    int-to-double v3, v3

    div-double v3, p0, v3

    add-double/2addr v3, v0

    add-int/2addr v5, v2

    move-wide v8, v0

    move-wide v0, v3

    move-wide v3, v8

    goto :goto_0

    :cond_0
    div-double v0, p0, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    add-double/2addr v0, p2

    sub-double/2addr v0, p0

    :cond_1
    return-wide v0
.end method

.method public static b(D)D
    .locals 6

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    sget-object p0, Lcom/sunia/HTREnginev2/k0m;->b:[D

    double-to-int p1, v0

    aget-wide p0, p0, p1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    add-double/2addr v0, p0

    sget-wide p0, Lcom/sunia/HTREnginev2/k0m;->a:D

    sub-double p0, v0, p0

    goto :goto_0

    :cond_1
    mul-double v0, p0, p0

    const-wide v2, 0x3f4b951e2b18ff23L    # 8.417508417508417E-4

    div-double/2addr v2, v0

    const-wide v4, 0x3f43813813813814L    # 5.952380952380953E-4

    sub-double/2addr v4, v2

    div-double/2addr v4, v0

    const-wide v2, 0x3f4a01a01a01a01aL    # 7.936507936507937E-4

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    const-wide v4, 0x3f66c16c16c16c17L    # 0.002777777777777778

    sub-double/2addr v4, v2

    div-double/2addr v4, v0

    const-wide v0, 0x3fb5555555555555L    # 0.08333333333333333

    sub-double/2addr v0, v4

    div-double p0, v0, p0

    :goto_0
    return-wide p0
.end method

.method public static c(IIDD)D
    .locals 8

    const-wide v0, 0x3fb999999999999aL    # 0.1

    if-nez p0, :cond_1

    cmpg-double p0, p2, v0

    if-gez p0, :cond_0

    int-to-double p0, p1

    mul-double/2addr p4, p0

    invoke-static {p0, p1, p4, p5}, Lcom/sunia/HTREnginev2/k0m;->a(DD)D

    move-result-wide p4

    neg-double p4, p4

    mul-double/2addr p0, p2

    sub-double/2addr p4, p0

    goto :goto_1

    :cond_0
    int-to-double p0, p1

    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    :goto_0
    mul-double p4, p0, p2

    goto :goto_1

    :cond_1
    if-ne p0, p1, :cond_3

    cmpg-double p0, p4, v0

    if-gez p0, :cond_2

    int-to-double p0, p1

    mul-double/2addr p2, p0

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/k0m;->a(DD)D

    move-result-wide p2

    neg-double p2, p2

    mul-double/2addr p0, p4

    sub-double p4, p2, p0

    goto :goto_1

    :cond_2
    int-to-double p0, p1

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    goto :goto_0

    :cond_3
    int-to-double v0, p1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/k0m;->b(D)D

    move-result-wide v2

    int-to-double v4, p0

    invoke-static {v4, v5}, Lcom/sunia/HTREnginev2/k0m;->b(D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    sub-int/2addr p1, p0

    int-to-double p0, p1

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/k0m;->b(D)D

    move-result-wide v6

    sub-double/2addr v2, v6

    mul-double/2addr p2, v0

    invoke-static {v4, v5, p2, p3}, Lcom/sunia/HTREnginev2/k0m;->a(DD)D

    move-result-wide p2

    sub-double/2addr v2, p2

    mul-double/2addr p4, v0

    invoke-static {p0, p1, p4, p5}, Lcom/sunia/HTREnginev2/k0m;->a(DD)D

    move-result-wide p2

    sub-double/2addr v2, p2

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, p2

    mul-double/2addr v4, p0

    div-double/2addr v4, v0

    const-wide/high16 p0, -0x4020000000000000L    # -0.5

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    add-double p4, p2, v2

    :goto_1
    return-wide p4
.end method
