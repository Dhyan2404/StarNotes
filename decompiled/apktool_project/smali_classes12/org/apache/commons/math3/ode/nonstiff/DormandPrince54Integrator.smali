.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field public static final A:D = -0.025

.field public static final r:Ljava/lang/String; = "Dormand-Prince 5(4)"

.field public static final s:[D

.field public static final t:[[D

.field public static final u:[D

.field public static final v:D = 0.0012326388888888888

.field public static final w:D = -0.0042527702905061394

.field public static final x:D = 0.03697916666666667

.field public static final y:D = -0.05086379716981132

.field public static final z:D = 0.0419047619047619


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->s:[D

    new-array v1, v0, [[D

    const/4 v2, 0x1

    new-array v3, v2, [D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    aput-object v3, v1, v6

    const/4 v3, 0x2

    new-array v4, v3, [D

    fill-array-data v4, :array_1

    aput-object v4, v1, v2

    const/4 v2, 0x3

    new-array v4, v2, [D

    fill-array-data v4, :array_2

    aput-object v4, v1, v3

    const/4 v3, 0x4

    new-array v4, v3, [D

    fill-array-data v4, :array_3

    aput-object v4, v1, v2

    const/4 v2, 0x5

    new-array v4, v2, [D

    fill-array-data v4, :array_4

    aput-object v4, v1, v3

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->t:[[D

    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->u:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe999999999999aL    # 0.8
        0x3fec71c71c71c71cL    # 0.8888888888888888
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb3333333333333L    # 0.075
        0x3fcccccccccccccdL    # 0.225
    .end array-data

    :array_2
    .array-data 8
        0x3fef49f49f49f49fL    # 0.9777777777777777
        -0x3ff2222222222222L    # -3.7333333333333334
        0x400c71c71c71c71cL    # 3.5555555555555554
    .end array-data

    :array_3
    .array-data 8
        0x40079eec0fc37181L    # 2.9525986892242035
        -0x3fd8cef42d6adf1cL    # -11.595793324188385
        0x4023a552363c5290L    # 9.822892851699436
        -0x402d636145e1ccbbL    # -0.2908093278463649
    .end array-data

    :array_4
    .array-data 8
        0x4006c52bf5a814b0L    # 2.8462752525252526
        -0x3fda7c1f07c1f07cL    # -10.757575757575758
        0x4021d016a3721e8bL    # 8.906422717743473
        0x3fd1d1745d1745d1L    # 0.2784090909090909
        -0x402e7e768f2633d1L    # -0.2735313036020583
    .end array-data

    :array_5
    .array-data 8
        0x3fb7555555555555L    # 0.09114583333333333
        0x0
        0x3fdcc0499a5605fbL    # 0.44923629829290207
        0x3fe4d55555555555L    # 0.6510416666666666
        -0x402b5e304d4873edL    # -0.322376179245283
        0x3fc0c30c30c30c31L    # 0.13095238095238096
    .end array-data

    :array_6
    .array-data 8
        0x3fb7555555555555L    # 0.09114583333333333
        0x0
        0x3fdcc0499a5605fbL    # 0.44923629829290207
        0x3fe4d55555555555L    # 0.6510416666666666
        -0x402b5e304d4873edL    # -0.322376179245283
        0x3fc0c30c30c30c31L    # 0.13095238095238096
        0x0
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    const-string v1, "Dormand-Prince 5(4)"

    const/4 v2, 0x1

    .line 1
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->s:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->t:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->u:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>()V

    move-object v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 13

    const-string v1, "Dormand-Prince 5(4)"

    const/4 v2, 0x1

    .line 2
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->s:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->t:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->u:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    return-void
.end method


# virtual methods
.method public estimateError([[D[D[DD)D
    .locals 13

    move-object v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v4, v5, :cond_1

    aget-object v5, p1, v3

    aget-wide v5, v5, v4

    const-wide v7, 0x3f54320fedcba987L    # 0.0012326388888888888

    mul-double/2addr v5, v7

    const/4 v7, 0x2

    aget-object v7, p1, v7

    aget-wide v7, v7, v4

    const-wide v9, -0x408e94a5aaf5403cL    # -0.0042527702905061394

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-object v7, p1, v7

    aget-wide v7, v7, v4

    const-wide v9, 0x3fa2eeeeeeeeeeefL    # 0.03697916666666667

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-object v7, p1, v7

    aget-wide v7, v7, v4

    const-wide v9, -0x4055f52e2d35e7a8L    # -0.05086379716981132

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-object v7, p1, v7

    aget-wide v7, v7, v4

    const-wide v9, 0x3fa5748a7bdaf0e2L    # 0.0419047619047619

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/4 v7, 0x6

    aget-object v7, p1, v7

    aget-wide v7, v7, v4

    const-wide v9, -0x4066666666666666L    # -0.025

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aget-wide v7, p2, v4

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    aget-wide v9, p3, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v9, :cond_0

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    goto :goto_1

    :cond_0
    aget-wide v9, v9, v4

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v11, v11, v4

    :goto_1
    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    mul-double v5, v5, p4

    div-double/2addr v5, v9

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-double v3, v5

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOrder()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method
