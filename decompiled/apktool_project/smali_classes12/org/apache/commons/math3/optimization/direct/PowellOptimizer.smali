.class public Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final j:D


# instance fields
.field public final g:D

.field public final h:D

.field public final i:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->j:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 10
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 3
    sget-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->j:D

    cmpg-double p9, p1, v0

    if-ltz p9, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p9, p3, v0

    if-lez p9, :cond_0

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->g:D

    .line 5
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->h:D

    .line 6
    new-instance p1, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p5

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->i:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public final c([D[DD)[[D
    .locals 8

    array-length p0, p1

    new-array v0, p0, [D

    new-array v1, p0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    aget-wide v4, p2, v3

    mul-double/2addr v4, p3

    aput-wide v4, v1, v3

    aget-wide v6, p1, v3

    add-double/2addr v6, v4

    aput-wide v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [[D

    aput-object v0, p0, v2

    const/4 p1, 0x1

    aput-object v1, p0, p1

    return-object p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getStartPoint()[D

    move-result-object v2

    array-length v3, v2

    filled-new-array {v3, v3}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v7, v4, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v6

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v7

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    add-int/2addr v10, v11

    move-wide v11, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    :goto_2
    if-ge v14, v3, :cond_2

    aget-object v18, v4, v14

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v15

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->i:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;

    invoke-virtual {v5, v2, v15}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->b([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v19

    move-object/from16 v21, v4

    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v4

    invoke-virtual {v0, v2, v15, v4, v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->c([D[DD)[[D

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    sub-double v11, v11, v19

    cmpl-double v4, v11, v16

    if-lez v4, :cond_1

    move-wide/from16 v16, v11

    move v13, v14

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v11, v19

    move-object/from16 v4, v21

    goto :goto_2

    :cond_2
    move-object/from16 v21, v4

    sub-double v4, v7, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v19, v4, v14

    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->g:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    add-double v24, v24, v26

    mul-double v14, v14, v24

    move-wide/from16 v24, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->h:D

    add-double/2addr v14, v4

    cmpg-double v4, v19, v14

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    new-instance v5, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v5, v9, v7, v8}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    new-instance v14, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v14, v2, v11, v12}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-nez v4, :cond_4

    if-eqz v6, :cond_4

    invoke-interface {v6, v10, v5, v14}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :cond_4
    if-eqz v4, :cond_8

    sget-object v0, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v1, v0, :cond_6

    cmpg-double v0, v11, v7

    if-gez v0, :cond_5

    move-object v5, v14

    :cond_5
    return-object v5

    :cond_6
    cmpl-double v0, v11, v7

    if-lez v0, :cond_7

    move-object v5, v14

    :cond_7
    return-object v5

    :cond_8
    new-array v4, v3, [D

    new-array v5, v3, [D

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v3, :cond_9

    aget-wide v19, v2, v14

    aget-wide v26, v9, v14

    sub-double v19, v19, v26

    aput-wide v19, v4, v14

    aget-wide v19, v2, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v19, v19, v22

    aget-wide v26, v9, v14

    sub-double v19, v19, v26

    aput-wide v19, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v14

    cmpl-double v5, v7, v14

    if-lez v5, :cond_a

    add-double v19, v7, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v11, v22

    sub-double v19, v19, v26

    mul-double v19, v19, v22

    sub-double v22, v24, v16

    mul-double v22, v22, v22

    mul-double v19, v19, v22

    sub-double/2addr v7, v14

    mul-double v16, v16, v7

    mul-double v16, v16, v7

    sub-double v19, v19, v16

    const-wide/16 v7, 0x0

    cmpg-double v5, v19, v7

    if-gez v5, :cond_a

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->i:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;

    invoke-virtual {v5, v2, v4}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$a;->b([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v11

    invoke-virtual {v0, v2, v4, v11, v12}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->c([D[DD)[[D

    move-result-object v2

    const/4 v4, 0x0

    aget-object v5, v2, v4

    add-int/lit8 v11, v3, -0x1

    aget-object v12, v21, v11

    aput-object v12, v21, v13

    const/4 v12, 0x1

    aget-object v2, v2, v12

    aput-object v2, v21, v11

    move-object v2, v5

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    move-wide v7, v11

    :goto_5
    move-object/from16 v4, v21

    goto/16 :goto_1
.end method
