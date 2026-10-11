.class public Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/String; = "Higham-Hall 5(4)"

.field public static final s:[D

.field public static final t:[[D

.field public static final u:[D

.field public static final v:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->s:[D

    new-array v1, v0, [[D

    const/4 v2, 0x1

    new-array v3, v2, [D

    const-wide v4, 0x3fcc71c71c71c71cL    # 0.2222222222222222

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

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->t:[[D

    const/4 v0, 0x7

    new-array v1, v0, [D

    fill-array-data v1, :array_6

    sput-object v1, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->u:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->v:[D

    return-void

    :array_0
    .array-data 8
        0x3fcc71c71c71c71cL    # 0.2222222222222222
        0x3fd5555555555555L    # 0.3333333333333333
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x3fd0000000000000L    # 0.25
    .end array-data

    :array_2
    .array-data 8
        0x3fc0000000000000L    # 0.125
        0x0
        0x3fd8000000000000L    # 0.375
    .end array-data

    :array_3
    .array-data 8
        0x3fc74bc6a7ef9db2L    # 0.182
        -0x402eb851eb851eb8L    # -0.27
        0x3fe3f7ced916872bL    # 0.624
        0x3fb0624dd2f1a9fcL    # 0.064
    .end array-data

    :array_4
    .array-data 8
        -0x401e666666666666L    # -0.55
        0x3ff599999999999aL    # 1.35
        0x4003333333333333L    # 2.4
        -0x3fe3333333333333L    # -7.2
        0x4014000000000000L    # 5.0
    .end array-data

    :array_5
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x0
        0x3feb000000000000L    # 0.84375
        -0x400aaaaaaaaaaaabL    # -1.3333333333333333
        0x3ff4d55555555555L    # 1.3020833333333333
        0x3fbaaaaaaaaaaaabL    # 0.10416666666666667
    .end array-data

    :array_6
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x0
        0x3feb000000000000L    # 0.84375
        -0x400aaaaaaaaaaaabL    # -1.3333333333333333
        0x3ff4d55555555555L    # 1.3020833333333333
        0x3fbaaaaaaaaaaaabL    # 0.10416666666666667
        0x0
    .end array-data

    :array_7
    .array-data 8
        -0x4056666666666666L    # -0.05
        0x0
        0x3fe0333333333333L    # 0.50625
        -0x400ccccccccccccdL    # -1.2
        0x3fe9000000000000L    # 0.78125
        0x3fb0000000000000L    # 0.0625
        -0x4046666666666666L    # -0.1
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    const-string v1, "Higham-Hall 5(4)"

    const/4 v2, 0x0

    .line 1
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->s:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->t:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->u:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>()V

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

    const-string v1, "Higham-Hall 5(4)"

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->s:[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->t:[[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->u:[D

    new-instance v6, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>()V

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

    if-ge v4, v5, :cond_2

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->v:[D

    aget-wide v5, v5, v3

    aget-object v7, p1, v3

    aget-wide v7, v7, v4

    mul-double/2addr v5, v7

    const/4 v7, 0x1

    :goto_1
    sget-object v8, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->v:[D

    array-length v9, v8

    if-ge v7, v9, :cond_0

    aget-wide v8, v8, v7

    aget-object v10, p1, v7

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget-wide v7, p2, v4

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    aget-wide v9, p3, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v9, :cond_1

    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    goto :goto_2

    :cond_1
    aget-wide v9, v9, v4

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v11, v11, v4

    :goto_2
    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    mul-double v5, v5, p4

    div-double/2addr v5, v9

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
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
