.class public Lorg/apache/commons/math3/optimization/univariate/BracketFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final i:D = 1.0E-21

.field public static final j:D = 1.618034


# instance fields
.field public final a:D

.field public final b:Lorg/apache/commons/math3/util/Incrementor;

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/16 v2, 0x32

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->b:Lorg/apache/commons/math3/util/Incrementor;

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-lez v1, :cond_1

    if-lez p3, :cond_0

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a:D

    .line 5
    invoke-virtual {v0, p3}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getFHi()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->g:D

    return-wide v0
.end method

.method public getFLo()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->f:D

    return-wide v0
.end method

.method public getFMid()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->h:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->d:D

    return-wide v0
.end method

.method public getLo()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->c:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getMid()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->e:D

    return-wide v0
.end method

.method public search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->b:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v3, p2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v5

    move-wide/from16 v7, p5

    invoke-virtual {v0, v1, v7, v8}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v9

    if-eqz v2, :cond_1

    cmpg-double v11, v5, v9

    if-gez v11, :cond_2

    goto :goto_1

    :cond_1
    cmpl-double v11, v5, v9

    if-lez v11, :cond_2

    :goto_1
    move-wide/from16 v31, v5

    move-wide v5, v9

    move-wide/from16 v9, v31

    goto :goto_2

    :cond_2
    move-wide/from16 v31, v3

    move-wide v3, v7

    move-wide/from16 v7, v31

    :goto_2
    sub-double v11, v3, v7

    const-wide v13, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double/2addr v11, v13

    add-double/2addr v11, v3

    invoke-virtual {v0, v1, v11, v12}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v15

    :goto_3
    if-eqz v2, :cond_3

    cmpg-double v17, v15, v9

    if-gez v17, :cond_e

    goto :goto_4

    :cond_3
    cmpl-double v17, v15, v9

    if-lez v17, :cond_e

    :goto_4
    sub-double v17, v3, v7

    sub-double v19, v9, v15

    mul-double v19, v19, v17

    sub-double v21, v3, v11

    sub-double v23, v9, v5

    mul-double v23, v23, v21

    sub-double v25, v23, v19

    invoke-static/range {v25 .. v26}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v27

    const-wide v29, 0x3b92e3b40a0e9b4fL    # 1.0E-21

    cmpg-double v27, v27, v29

    if-gez v27, :cond_4

    const-wide v25, 0x3ba2e3b40a0e9b4fL    # 2.0E-21

    goto :goto_5

    :cond_4
    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    mul-double v25, v25, v27

    :goto_5
    mul-double v21, v21, v23

    mul-double v17, v17, v19

    sub-double v21, v21, v17

    div-double v21, v21, v25

    sub-double v13, v3, v21

    move-wide/from16 p4, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a:D

    sub-double v17, v11, v3

    mul-double v5, v5, v17

    add-double/2addr v5, v3

    sub-double v19, v13, v11

    sub-double v21, v3, v13

    mul-double v21, v21, v19

    const-wide/16 v23, 0x0

    cmpl-double v21, v21, v23

    if-lez v21, :cond_9

    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v5

    if-eqz v2, :cond_5

    cmpg-double v19, v5, v15

    if-gez v19, :cond_6

    goto :goto_6

    :cond_5
    cmpl-double v19, v5, v15

    if-lez v19, :cond_6

    :goto_6
    move-wide v1, v15

    move-wide/from16 v31, v5

    move-wide v5, v9

    move-wide/from16 v9, v31

    goto/16 :goto_d

    :cond_6
    if-eqz v2, :cond_7

    cmpl-double v19, v5, v9

    if-lez v19, :cond_8

    goto :goto_7

    :cond_7
    cmpg-double v19, v5, v9

    if-gez v19, :cond_8

    :goto_7
    move-wide v1, v5

    move-wide v11, v13

    move-wide/from16 v5, p4

    move-wide v13, v3

    move-wide v3, v7

    goto/16 :goto_d

    :cond_8
    const-wide v5, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double v17, v17, v5

    add-double v5, v11, v17

    invoke-virtual {v0, v1, v5, v6}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v7

    goto :goto_8

    :cond_9
    sub-double v7, v13, v5

    sub-double v21, v5, v11

    mul-double v21, v21, v7

    cmpl-double v21, v21, v23

    if-ltz v21, :cond_a

    invoke-virtual {v0, v1, v5, v6}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v7

    :goto_8
    const-wide v21, 0x3ff9e3779e9d0e99L    # 1.618034

    :goto_9
    move-wide/from16 v31, v9

    move-wide v9, v15

    move-wide v15, v7

    move-wide v7, v3

    move-wide v3, v11

    move-wide v11, v5

    :goto_a
    move-wide/from16 v5, v31

    goto :goto_c

    :cond_a
    sub-double v5, v11, v13

    mul-double/2addr v7, v5

    cmpl-double v5, v7, v23

    if-lez v5, :cond_d

    invoke-virtual {v0, v1, v13, v14}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v5

    if-eqz v2, :cond_b

    cmpg-double v7, v5, v15

    if-gez v7, :cond_c

    goto :goto_b

    :cond_b
    cmpl-double v7, v5, v15

    if-lez v7, :cond_c

    :goto_b
    const-wide v21, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double v19, v19, v21

    add-double v3, v13, v19

    invoke-virtual {v0, v1, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v7

    move-wide v9, v5

    move-wide v5, v15

    move-wide v15, v7

    move-wide v7, v11

    move-wide v11, v3

    move-wide v3, v13

    goto :goto_c

    :cond_c
    const-wide v21, 0x3ff9e3779e9d0e99L    # 1.618034

    move-wide v7, v3

    move-wide v3, v11

    move-wide v11, v13

    move-wide/from16 v31, v9

    move-wide v9, v15

    move-wide v15, v5

    goto :goto_a

    :cond_d
    const-wide v21, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double v17, v17, v21

    add-double v5, v11, v17

    invoke-virtual {v0, v1, v5, v6}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->a(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v7

    goto :goto_9

    :goto_c
    move-wide/from16 v13, v21

    goto/16 :goto_3

    :cond_e
    move-wide/from16 p4, v5

    move-wide/from16 v5, p4

    move-wide v13, v3

    move-wide v3, v7

    move-wide v1, v15

    :goto_d
    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->c:D

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->f:D

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->e:D

    iput-wide v9, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->h:D

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->d:D

    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->g:D

    cmpl-double v7, v3, v11

    if-lez v7, :cond_f

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->c:D

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->d:D

    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->f:D

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->g:D

    :cond_f
    return-void
.end method
