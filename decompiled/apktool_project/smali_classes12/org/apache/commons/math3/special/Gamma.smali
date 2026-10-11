.class public Lorg/apache/commons/math3/special/Gamma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:D = 2.6923694661863613E-4

.field public static final B:D = -0.42278433509846713

.field public static final C:D = 0.5772156649015329

.field public static final D:D = -0.6558780715202539

.field public static final E:D = -0.04200263503409524

.field public static final F:D = 0.16653861138229148

.field public static final G:D = -0.04219773455554433

.field public static final GAMMA:D = 0.5772156649015329

.field public static final H:D = -0.009621971527876973

.field public static final I:D = 0.0072189432466631

.field public static final J:D = -0.0011651675918590652

.field public static final K:D = -2.1524167411495098E-4

.field public static final L:D = 1.280502823881162E-4

.field public static final LANCZOS_G:D = 4.7421875

.field public static final M:D = -2.013485478078824E-5

.field public static final N:D = -1.2504934821426706E-6

.field public static final O:D = 1.133027231981696E-6

.field public static final P:D = -2.056338416977607E-7

.field public static final a:D = 1.0E-14

.field public static final b:[D

.field public static final c:D

.field public static final d:D = 2.5066282746310007

.field public static final e:D = 49.0

.field public static final f:D = 1.0E-5

.field public static final g:D = 6.116095104481416E-9

.field public static final h:D = 6.247308301164655E-9

.field public static final i:D = 0.203610414066807

.field public static final j:D = 0.026620534842894922

.field public static final k:D = 4.939449793824468E-4

.field public static final l:D = -8.514194324403149E-6

.field public static final m:D = -6.4304548177935305E-6

.field public static final n:D = 9.926418406727737E-7

.field public static final o:D = -6.077618957228252E-8

.field public static final p:D = 1.9575583661463974E-10

.field public static final q:D = 6.116095104481416E-9

.field public static final r:D = 6.8716741130671986E-9

.field public static final s:D = 6.820161668496171E-10

.field public static final t:D = 4.686843322948848E-11

.field public static final u:D = 1.5728330277104463E-12

.field public static final v:D = -1.2494415722763663E-13

.field public static final w:D = 4.343529937408594E-15

.field public static final x:D = 0.3056961078365221

.field public static final y:D = 0.054642130860422966

.field public static final z:D = 0.004956830093825887


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/special/Gamma;->b:[D

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/special/Gamma;->c:D

    return-void

    :array_0
    .array-data 8
        0x3fefffffffffffe6L    # 0.9999999999999971
        0x404c93ff87c1acceL    # 57.15623566586292
        -0x3fb2337608fa76d0L    # -59.59796035547549
        0x402c45aea23d22a1L    # 14.136097974741746
        -0x4020847be9da401cL    # -0.4919138160976202
        0x3f01d2af4786183aL    # 3.399464998481189E-5
        0x3f08644bb7c5e3bdL    # 4.652362892704858E-5
        -0x40e63633621a8b49L    # -9.837447530487956E-5
        0x3f24b8939ed4e66dL    # 1.580887032249125E-4
        -0x40d470b232d541caL    # -2.1026444172410488E-4
        0x3f2c801018e9e826L    # 2.1743961811521265E-4
        -0x40da7666366ad9c0L    # -1.643181065367639E-4
        0x3f1621360b773d55L    # 8.441822398385275E-5
        -0x410489734a2e1dfaL    # -2.6190838401581408E-5
        0x3ecef40a04fc9810L    # 3.6899182659531625E-6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digamma(D)D
    .locals 7

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_1

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v3

    if-gtz v0, :cond_1

    const-wide v3, -0x401d8773039049e7L    # -0.5772156649015329

    :goto_0
    div-double/2addr v1, p0

    :goto_1
    sub-double/2addr v3, v1

    return-wide v3

    :cond_1
    const-wide v3, 0x4048800000000000L    # 49.0

    cmpl-double v0, p0, v3

    if-ltz v0, :cond_2

    mul-double v3, p0, p0

    div-double/2addr v1, v3

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    div-double/2addr v5, p0

    sub-double/2addr v3, v5

    const-wide p0, 0x406f800000000000L    # 252.0

    div-double p0, v1, p0

    const-wide v5, 0x3f81111111111111L    # 0.008333333333333333

    sub-double/2addr v5, p0

    mul-double/2addr v5, v1

    const-wide p0, 0x3fb5555555555555L    # 0.08333333333333333

    add-double/2addr v5, p0

    mul-double/2addr v1, v5

    goto :goto_1

    :cond_2
    add-double v3, p0, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/special/Gamma;->digamma(D)D

    move-result-wide v3

    goto :goto_0

    :cond_3
    :goto_2
    return-wide p0
.end method

.method public static gamma(D)D
    .locals 11

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v0

    cmpl-double v0, p0, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    cmpg-double v0, p0, v1

    if-gtz v0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_2

    move-wide v2, v0

    :goto_0
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpl-double v4, p0, v4

    if-lez v4, :cond_1

    sub-double/2addr p0, v0

    mul-double/2addr v2, p0

    goto :goto_0

    :cond_1
    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->invGamma1pm1(D)D

    move-result-wide p0

    add-double/2addr p0, v0

    div-double/2addr v2, p0

    goto :goto_2

    :cond_2
    move-wide v2, p0

    :goto_1
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    add-double/2addr p0, v0

    mul-double/2addr v2, p0

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->invGamma1pm1(D)D

    move-result-wide p0

    add-double/2addr p0, v0

    mul-double/2addr v2, p0

    div-double v2, v0, v2

    goto :goto_2

    :cond_4
    const-wide v5, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    const-wide v9, 0x40040d931ff62706L    # 2.5066282746310007

    div-double/2addr v9, v3

    add-double/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v9, v7

    neg-double v5, v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    mul-double/2addr v9, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v3

    mul-double/2addr v3, v9

    cmpl-double v0, p0, v1

    if-lez v0, :cond_5

    move-wide v2, v3

    goto :goto_2

    :cond_5
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    mul-double/2addr p0, v3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    div-double v2, v0, p0

    :goto_2
    return-wide v2
.end method

.method public static invGamma1pm1(D)D
    .locals 39

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    cmpg-double v2, p0, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_5

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    move-wide/from16 v2, p0

    goto :goto_0

    :cond_0
    sub-double v2, p0, v0

    sub-double/2addr v2, v0

    :goto_0
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    const-wide v5, -0x401b030bfd9505d2L    # -0.6558780715202539

    const-wide v7, -0x405a7ea1705d8fb8L    # -0.04200263503409524

    const-wide v9, 0x3fc5512320b43fbeL    # 0.16653861138229148

    const-wide v11, -0x405a650efc3cbf6eL    # -0.04219773455554433

    const-wide v13, -0x407c4b50d7b7c1dfL    # -0.009621971527876973

    const-wide v15, 0x3f7d919c527f60b2L    # 0.0072189432466631

    const-wide v17, -0x40ace8eed31c5d58L    # -0.0011651675918590652

    const-wide v19, -0x40d3c9b0190ea9c3L    # -2.1524167411495098E-4

    const-wide v21, 0x3f20c8a78cd9f9d2L    # 1.280502823881162E-4

    const-wide v23, -0x410ae31750b81542L    # -2.013485478078824E-5

    const-wide v25, -0x414b052be03cb045L    # -1.2504934821426706E-6

    const-wide v27, 0x3eb302509dbc0de3L    # 1.133027231981696E-6

    const-wide v29, -0x417466799993dda3L    # -2.056338416977607E-7

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    const-wide v33, 0x3e3a44b7ba22d629L    # 6.116095104481416E-9

    if-gez v4, :cond_2

    const-wide v35, 0x3e3ad4fcf5652545L    # 6.247308301164655E-9

    mul-double v35, v35, v2

    add-double v35, v35, v33

    const-wide v33, -0x418faf7df74a0d96L    # -6.077618957228252E-8

    const-wide v37, 0x3deae78bd35ee299L    # 1.9575583661463974E-10

    mul-double v37, v37, v2

    add-double v37, v37, v33

    const-wide v33, 0x3eb0a75d3efc42a1L    # 9.926418406727737E-7

    mul-double v37, v37, v2

    add-double v37, v37, v33

    const-wide v33, -0x4125075a09fb0c8aL    # -6.4304548177935305E-6

    mul-double v37, v37, v2

    add-double v37, v37, v33

    const-wide v33, -0x411e24fa0ada8417L    # -8.514194324403149E-6

    mul-double v37, v37, v2

    add-double v37, v37, v33

    const-wide v33, 0x3f402f82c4280285L    # 4.939449793824468E-4

    mul-double v37, v37, v2

    add-double v37, v37, v33

    const-wide v33, 0x3f9b4269da358438L    # 0.026620534842894922

    mul-double v37, v37, v2

    add-double v37, v37, v33

    const-wide v33, 0x3fca0fe7f2c55ec3L    # 0.203610414066807

    mul-double v37, v37, v2

    add-double v37, v37, v33

    mul-double v37, v37, v2

    add-double v37, v37, v31

    div-double v35, v35, v37

    mul-double v35, v35, v2

    add-double v35, v35, v29

    mul-double v35, v35, v2

    add-double v35, v35, v27

    mul-double v35, v35, v2

    add-double v35, v35, v25

    mul-double v35, v35, v2

    add-double v35, v35, v23

    mul-double v35, v35, v2

    add-double v35, v35, v21

    mul-double v35, v35, v2

    add-double v35, v35, v19

    mul-double v35, v35, v2

    add-double v35, v35, v17

    mul-double v35, v35, v2

    add-double v35, v35, v15

    mul-double v35, v35, v2

    add-double v35, v35, v13

    mul-double v35, v35, v2

    add-double v35, v35, v11

    mul-double v35, v35, v2

    add-double v35, v35, v9

    mul-double v35, v35, v2

    add-double v35, v35, v7

    mul-double v35, v35, v2

    add-double v35, v35, v5

    const-wide v4, -0x4024f119f8df6c32L    # -0.42278433509846713

    mul-double v35, v35, v2

    add-double v35, v35, v4

    cmpl-double v4, p0, v0

    if-lez v4, :cond_1

    mul-double v2, v2, v35

    div-double v2, v2, p0

    goto/16 :goto_1

    :cond_1
    add-double v35, v35, v0

    add-double v35, v35, v0

    mul-double v2, p0, v35

    goto/16 :goto_1

    :cond_2
    const-wide v35, -0x42be6a698dd6c299L    # -1.2494415722763663E-13

    const-wide v37, 0x3cf38fbfc319a348L    # 4.343529937408594E-15

    mul-double v37, v37, v2

    add-double v37, v37, v35

    const-wide v35, 0x3d7bab6905535cf6L    # 1.5728330277104463E-12

    mul-double v37, v37, v2

    add-double v37, v37, v35

    const-wide v35, 0x3dc9c4254475c671L    # 4.686843322948848E-11

    mul-double v37, v37, v2

    add-double v37, v37, v35

    const-wide v35, 0x3e076f13e0a00ee8L    # 6.820161668496171E-10

    mul-double v37, v37, v2

    add-double v37, v37, v35

    const-wide v35, 0x3e3d837c4f99af89L    # 6.8716741130671986E-9

    mul-double v37, v37, v2

    add-double v37, v37, v35

    mul-double v37, v37, v2

    add-double v37, v37, v33

    const-wide v33, 0x3f744d9cf2512520L    # 0.004956830093825887

    const-wide v35, 0x3f31a50be16f20f5L    # 2.6923694661863613E-4

    mul-double v35, v35, v2

    add-double v35, v35, v33

    const-wide v33, 0x3fabfa0daa0efc58L    # 0.054642130860422966

    mul-double v35, v35, v2

    add-double v35, v35, v33

    const-wide v33, 0x3fd39086686b07d0L    # 0.3056961078365221

    mul-double v35, v35, v2

    add-double v35, v35, v33

    mul-double v35, v35, v2

    add-double v35, v35, v31

    div-double v37, v37, v35

    mul-double v37, v37, v2

    add-double v37, v37, v29

    mul-double v37, v37, v2

    add-double v37, v37, v27

    mul-double v37, v37, v2

    add-double v37, v37, v25

    mul-double v37, v37, v2

    add-double v37, v37, v23

    mul-double v37, v37, v2

    add-double v37, v37, v21

    mul-double v37, v37, v2

    add-double v37, v37, v19

    mul-double v37, v37, v2

    add-double v37, v37, v17

    mul-double v37, v37, v2

    add-double v37, v37, v15

    mul-double v37, v37, v2

    add-double v37, v37, v13

    mul-double v37, v37, v2

    add-double v37, v37, v11

    mul-double v37, v37, v2

    add-double v37, v37, v9

    mul-double v37, v37, v2

    add-double v37, v37, v7

    mul-double v37, v37, v2

    add-double v37, v37, v5

    const-wide v4, 0x3fe2788cfc6fb619L    # 0.5772156649015329

    mul-double v37, v37, v2

    add-double v37, v37, v4

    cmpl-double v4, p0, v0

    if-lez v4, :cond_3

    div-double v2, v2, p0

    sub-double v37, v37, v0

    sub-double v37, v37, v0

    mul-double v2, v2, v37

    goto :goto_1

    :cond_3
    mul-double v2, p0, v37

    :goto_1
    return-wide v2

    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method public static lanczos(D)D
    .locals 7

    sget-object v0, Lorg/apache/commons/math3/special/Gamma;->b:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-lez v0, :cond_0

    sget-object v3, Lorg/apache/commons/math3/special/Gamma;->b:[D

    aget-wide v3, v3, v0

    int-to-double v5, v0

    add-double/2addr v5, p0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/commons/math3/special/Gamma;->b:[D

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    add-double/2addr v1, p0

    return-wide v1
.end method

.method public static logGamma(D)D
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0

    :cond_1
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_2

    sub-double/2addr p0, v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_4

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move v4, v1

    :goto_0
    if-gt v4, v0, :cond_3

    int-to-double v5, v4

    sub-double v5, p0, v5

    mul-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v1

    int-to-double v0, v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma1p(D)D

    move-result-wide p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    add-double/2addr p0, v0

    return-wide p0

    :cond_4
    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v2

    const-wide v4, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v4, p0

    add-double/2addr v4, v0

    add-double/2addr v0, p0

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    sub-double/2addr v0, v4

    sget-wide v4, Lorg/apache/commons/math3/special/Gamma;->c:D

    add-double/2addr v0, v4

    div-double/2addr v2, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    goto :goto_2

    :cond_5
    :goto_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    return-wide v0
.end method

.method public static logGamma1p(D)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    cmpg-double v2, p0, v0

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->invGamma1pm1(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0

    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v2, p0, p1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v2, p0, p1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method public static regularizedGammaP(DD)D
    .locals 7

    const-wide v4, 0x3d06849b86a12b9bL    # 1.0E-14

    const v6, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    .line 1
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static regularizedGammaP(DDDI)D
    .locals 13

    move-wide v0, p2

    move/from16 v2, p6

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    const-wide/16 v3, 0x0

    cmpg-double v5, p0, v3

    if-lez v5, :cond_6

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double v5, v0, v3

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double v7, p0, v5

    cmpl-double v7, v0, v7

    if-ltz v7, :cond_2

    .line 3
    invoke-static/range {p0 .. p6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide v0

    sub-double v3, v5, v0

    goto :goto_2

    :cond_2
    div-double v7, v5, p0

    move-wide v9, v7

    :goto_0
    div-double v11, v7, v9

    .line 4
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    cmpl-double v11, v11, p4

    if-lez v11, :cond_3

    int-to-double v11, v2

    cmpg-double v11, v3, v11

    if-gez v11, :cond_3

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v11, v9, v11

    if-gez v11, :cond_3

    add-double/2addr v3, v5

    add-double v11, p0, v3

    div-double v11, v0, v11

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    goto :goto_0

    :cond_3
    int-to-double v7, v2

    cmpl-double v3, v3, v7

    if-gez v3, :cond_5

    .line 5
    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_4

    move-wide v3, v5

    goto :goto_2

    :cond_4
    neg-double v2, v0

    .line 6
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    add-double/2addr v2, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double v3, v0, v9

    goto :goto_2

    .line 7
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_6
    :goto_1
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    return-wide v3
.end method

.method public static regularizedGammaQ(DD)D
    .locals 7

    const-wide v4, 0x3d06849b86a12b9bL    # 1.0E-14

    const v6, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    .line 1
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static regularizedGammaQ(DDDI)D
    .locals 9

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-lez v2, :cond_3

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double v0, p2, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-double v3, p0, v1

    cmpg-double v0, p2, v3

    if-gez v0, :cond_2

    .line 3
    invoke-static/range {p0 .. p6}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DDDI)D

    move-result-wide p0

    sub-double/2addr v1, p0

    goto :goto_1

    .line 4
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/special/Gamma$a;

    invoke-direct {v3, p0, p1}, Lorg/apache/commons/math3/special/Gamma$a;-><init>(D)V

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    .line 5
    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p4

    div-double/2addr v1, p4

    neg-double p4, p2

    .line 6
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    add-double/2addr p4, p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p0

    sub-double/2addr p4, p0

    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr v1, p0

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    return-wide v1
.end method

.method public static trigamma(D)D
    .locals 9

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_1

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v3

    if-gtz v0, :cond_1

    mul-double/2addr p0, p0

    div-double/2addr v1, p0

    return-wide v1

    :cond_1
    const-wide v3, 0x4048800000000000L    # 49.0

    cmpl-double v0, p0, v3

    if-ltz v0, :cond_2

    mul-double v3, p0, p0

    div-double v3, v1, v3

    div-double/2addr v1, p0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v5, v3, v5

    add-double/2addr v1, v5

    div-double p0, v3, p0

    const-wide/high16 v5, 0x4045000000000000L    # 42.0

    div-double v5, v3, v5

    const-wide v7, 0x3fa1111111111111L    # 0.03333333333333333

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    const-wide v5, 0x3fc5555555555555L    # 0.16666666666666666

    sub-double/2addr v5, v3

    mul-double/2addr p0, v5

    add-double/2addr v1, p0

    return-wide v1

    :cond_2
    add-double v3, p0, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/special/Gamma;->trigamma(D)D

    move-result-wide v3

    mul-double/2addr p0, p0

    div-double/2addr v1, p0

    add-double/2addr v3, v1

    return-wide v3

    :cond_3
    :goto_0
    return-wide p0
.end method
