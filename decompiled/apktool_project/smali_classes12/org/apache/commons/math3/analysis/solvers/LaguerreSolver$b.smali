.class public Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V

    return-void
.end method


# virtual methods
.method public a(DDLorg/apache/commons/math3/complex/Complex;)Z
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->isSequence(DDD)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide p3

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v0

    mul-double/2addr p3, v0

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p3

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double p1, v0, p3

    if-lez p1, :cond_0

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide p3

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide p0

    cmpg-double p0, p3, p0

    if-gtz p0, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public b([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_6

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_5

    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v7}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide v7

    new-instance v9, Lorg/apache/commons/math3/complex/Complex;

    int-to-double v10, v2

    const-wide/16 v12, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance v10, Lorg/apache/commons/math3/complex/Complex;

    add-int/lit8 v11, v2, -0x1

    int-to-double v14, v11

    invoke-direct {v10, v14, v15, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    new-instance v14, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v14, v12, v13, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object v15, v14

    move-object/from16 v14, p2

    :goto_0
    aget-object v16, v1, v2

    sget-object v19, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    move-object/from16 v12, v16

    move-object/from16 v13, v19

    move/from16 v16, v2

    move-object v2, v13

    move/from16 v19, v11

    :goto_1
    if-ltz v19, :cond_0

    invoke-virtual {v14, v13}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    invoke-virtual {v2, v13}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    invoke-virtual {v14, v2}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    move-object/from16 p2, v2

    aget-object v2, v1, v19

    invoke-virtual {v14, v12}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v12

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    move-object/from16 v19, v10

    move/from16 v20, v11

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    move-wide/from16 v21, v7

    const-wide/16 v7, 0x0

    invoke-direct {v1, v10, v11, v7, v8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v14}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v10

    mul-double/2addr v10, v5

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    invoke-virtual {v14, v15}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v17

    cmpg-double v10, v17, v10

    if-gtz v10, :cond_1

    return-object v14

    :cond_1
    invoke-virtual {v12}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v10

    cmpg-double v10, v10, v21

    if-gtz v10, :cond_2

    return-object v14

    :cond_2
    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v10

    invoke-virtual {v1, v12}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    move-object/from16 v10, v19

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->sqrt()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v11

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v11}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v12

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v17

    cmpl-double v2, v12, v17

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v11, v1

    :goto_2
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v7, 0x0

    invoke-direct {v1, v7, v8, v7, v8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/complex/Complex;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v1, v3, v4, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v14, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v2, v12, v13, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object v14, v1

    move-object v15, v2

    goto :goto_3

    :cond_4
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    move-object v15, v14

    move-object v14, v1

    :goto_3
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->a:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->incrementEvaluationCount()V

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v11, v20

    move-wide/from16 v7, v21

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public c([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    if-eqz p1, :cond_4

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/apache/commons/math3/complex/Complex;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_0

    aget-object v4, p1, v3

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v0, [Lorg/apache/commons/math3/complex/Complex;

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    sub-int v4, v0, v3

    add-int/lit8 v5, v4, 0x1

    new-array v6, v5, [Lorg/apache/commons/math3/complex/Complex;

    invoke-static {v1, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v6, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$b;->b([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    aput-object v5, p1, v3

    aget-object v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_1

    aget-object v6, v1, v4

    aput-object v5, v1, v4

    aget-object v7, p1, v3

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method
