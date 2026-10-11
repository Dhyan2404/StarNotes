.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "SourceFile"


# static fields
.field private static final A70:D = 0.09114583333333333

.field private static final A72:D = 0.44923629829290207

.field private static final A73:D = 0.6510416666666666

.field private static final A74:D = -0.322376179245283

.field private static final A75:D = 0.13095238095238096

.field private static final D0:D = -1.1270175653862835

.field private static final D2:D = 2.675424484351598

.field private static final D3:D = -5.685526961588504

.field private static final D4:D = 3.5219323679207912

.field private static final D5:D = -1.7672812570757455

.field private static final D6:D = 2.382468931778144

.field private static final serialVersionUID:J = 0x132df10L


# instance fields
.field private v1:[D

.field private v2:[D

.field private v3:[D

.field private v4:[D

.field private vectorsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 8
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 10
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 12
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 15
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 16
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 17
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 18
    iget-boolean p1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public computeInterpolatedStateAndDerivatives(DD)V
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v3, v1

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    array-length v3, v1

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    array-length v3, v1

    new-array v3, v3, [D

    iput-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v4, v3, v2

    aget-wide v4, v4, v1

    const/4 v6, 0x2

    aget-object v6, v3, v6

    aget-wide v6, v6, v1

    const/4 v8, 0x3

    aget-object v8, v3, v8

    aget-wide v8, v8, v1

    const/4 v10, 0x4

    aget-object v10, v3, v10

    aget-wide v10, v10, v1

    const/4 v12, 0x5

    aget-object v12, v3, v12

    aget-wide v12, v12, v1

    const/4 v14, 0x6

    aget-object v3, v3, v14

    aget-wide v14, v3, v1

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    const-wide v16, 0x3fb7555555555555L    # 0.09114583333333333

    mul-double v16, v16, v4

    const-wide v18, 0x3fdcc0499a5605fbL    # 0.44923629829290207

    mul-double v18, v18, v6

    add-double v16, v16, v18

    const-wide v18, 0x3fe4d55555555555L    # 0.6510416666666666

    mul-double v18, v18, v8

    add-double v16, v16, v18

    const-wide v18, -0x402b5e304d4873edL    # -0.322376179245283

    mul-double v18, v18, v10

    add-double v16, v16, v18

    const-wide v18, 0x3fc0c30c30c30c31L    # 0.13095238095238096

    mul-double v18, v18, v12

    add-double v16, v16, v18

    aput-wide v16, v3, v1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    sub-double v16, v4, v16

    aput-wide v16, v2, v1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    aget-wide v19, v3, v1

    sub-double v19, v19, v16

    sub-double v19, v19, v14

    aput-wide v19, v2, v1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    const-wide v16, -0x400df7bc6dea5fbaL    # -1.1270175653862835

    mul-double v4, v4, v16

    const-wide v16, 0x40056744f3b9a987L    # 2.675424484351598

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    const-wide v6, -0x3fe94205385dcdf4L    # -5.685526961588504

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    const-wide v6, 0x400c2ceae0978c92L    # 3.5219323679207912

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    const-wide v6, -0x4003b93749e06a1bL    # -1.7672812570757455

    mul-double/2addr v12, v6

    add-double/2addr v4, v12

    const-wide v6, 0x40030f4bdf0dc914L    # 2.382468931778144

    mul-double/2addr v14, v6

    add-double/2addr v4, v14

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    :cond_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, p1, v5

    sub-double v9, v1, v7

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double v13, p1, v11

    sub-double/2addr v5, v13

    mul-double v5, v5, p1

    sub-double v11, v7, v11

    mul-double v11, v11, p1

    add-double/2addr v11, v1

    mul-double/2addr v7, v11

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    if-eqz v1, :cond_3

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v11, v1

    if-ge v2, v11, :cond_4

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->previousState:[D

    aget-wide v11, v11, v2

    iget-wide v13, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->h:D

    mul-double v13, v13, p1

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v16, v15, v2

    move-wide/from16 v19, v7

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    aget-wide v21, v7, v2

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    aget-wide v23, v8, v2

    move-wide/from16 v25, v5

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    aget-wide v27, v5, v2

    mul-double v27, v27, v3

    add-double v23, v23, v27

    mul-double v23, v23, p1

    add-double v21, v21, v23

    mul-double v21, v21, v3

    add-double v16, v16, v21

    mul-double v13, v13, v16

    add-double/2addr v11, v13

    aput-wide v11, v1, v2

    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v11, v15, v2

    aget-wide v6, v7, v2

    mul-double/2addr v6, v9

    add-double/2addr v11, v6

    aget-wide v6, v8, v2

    mul-double v6, v6, v25

    add-double/2addr v11, v6

    aget-wide v5, v5, v2

    mul-double v7, v19, v5

    add-double/2addr v11, v7

    aput-wide v11, v1, v2

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v7, v19

    move-wide/from16 v5, v25

    goto :goto_1

    :cond_3
    move-wide/from16 v25, v5

    move-wide/from16 v19, v7

    const/4 v2, 0x0

    :goto_2
    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedState:[D

    array-length v5, v1

    if-ge v2, v5, :cond_4

    iget-object v5, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->currentState:[D

    aget-wide v5, v5, v2

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v11, v7, v2

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    aget-wide v13, v8, v2

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    aget-wide v16, v15, v2

    move-object/from16 v18, v15

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    aget-wide v21, v15, v2

    mul-double v21, v21, v3

    add-double v16, v16, v21

    mul-double v16, v16, p1

    add-double v13, v13, v16

    mul-double v13, v13, p1

    sub-double/2addr v11, v13

    mul-double v11, v11, p3

    sub-double/2addr v5, v11

    aput-wide v5, v1, v2

    iget-object v1, v0, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->interpolatedDerivatives:[D

    aget-wide v5, v7, v2

    aget-wide v7, v8, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aget-wide v7, v18, v2

    mul-double v7, v7, v25

    add-double/2addr v5, v7

    aget-wide v7, v15, v2

    mul-double v7, v7, v19

    add-double/2addr v5, v7

    aput-wide v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;)V

    return-object v0
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    return-void
.end method

.method public storeTime(D)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    return-void
.end method
