.class public Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:I = 0x2


# instance fields
.field public final a:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final e:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p4, v0, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->a:Lorg/apache/commons/math3/Field;

    iput p4, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->b:I

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->d:Lorg/apache/commons/math3/RealFieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->e:Lorg/apache/commons/math3/RealFieldElement;

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->c:Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;II)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[TT;II)TT;"
        }
    .end annotation

    move v0, p4

    :goto_0
    add-int/lit8 v1, p5, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    sub-int v3, v2, p4

    :goto_1
    if-le v1, v0, :cond_0

    aget-object v4, p2, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p2, v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, p3, v1

    sub-int v6, v1, v3

    aget-object v6, p3, v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v4, p2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    :goto_2
    if-lt v1, p4, :cond_2

    aget-object p5, p2, v1

    aget-object v0, p3, v1

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p5, p0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->d:Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->c:Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getMaximalOrder()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->b:I

    return p0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->e:Lorg/apache/commons/math3/RealFieldElement;

    return-object p0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
            "TT;>;TT;TT;TT;",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 2
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 4
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 5
    invoke-interface {v9, v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 6
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->a:Lorg/apache/commons/math3/Field;

    iget v1, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->b:I

    const/4 v11, 0x1

    add-int/2addr v1, v11

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Lorg/apache/commons/math3/RealFieldElement;

    .line 7
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->a:Lorg/apache/commons/math3/Field;

    iget v1, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->b:I

    add-int/2addr v1, v11

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Lorg/apache/commons/math3/RealFieldElement;

    .line 8
    aput-object p3, v12, v8

    .line 9
    aput-object p5, v12, v11

    const/4 v14, 0x2

    .line 10
    aput-object p4, v12, v14

    .line 11
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 12
    aget-object v0, v12, v11

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v13, v11

    .line 13
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    aget-object v0, v12, v11

    return-object v0

    .line 15
    :cond_0
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 16
    aget-object v0, v12, v8

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v13, v8

    .line 17
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    aget-object v0, v12, v8

    return-object v0

    .line 19
    :cond_1
    aget-object v0, v13, v8

    aget-object v1, v13, v11

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    move v0, v11

    move v1, v14

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 21
    aget-object v0, v12, v14

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    aput-object v0, v13, v14

    .line 22
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    aget-object v0, v12, v14

    return-object v0

    .line 24
    :cond_3
    aget-object v0, v13, v11

    aget-object v1, v13, v14

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1d

    move v0, v14

    const/4 v1, 0x3

    .line 25
    :goto_0
    iget-object v2, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->a:Lorg/apache/commons/math3/Field;

    array-length v3, v12

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v2, v0, -0x1

    .line 26
    aget-object v16, v12, v2

    .line 27
    aget-object v2, v13, v2

    .line 28
    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 29
    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    .line 30
    aget-object v18, v12, v0

    .line 31
    aget-object v19, v13, v0

    .line 32
    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 33
    invoke-interface/range {v19 .. v19}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v11, v16

    move-object/from16 v14, v17

    move-object/from16 v21, v18

    move-object/from16 v22, v19

    move-object/from16 v23, v20

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v32, v2

    move v2, v0

    move-object/from16 v0, v32

    .line 34
    :goto_1
    invoke-interface {v15, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v17

    cmpg-double v17, v17, v4

    if-gez v17, :cond_4

    move-object v5, v8

    goto :goto_2

    :cond_4
    move-object v5, v15

    :goto_2
    move-object/from16 v4, v23

    .line 35
    invoke-interface {v14, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmpg-double v17, v17, v19

    if-gez v17, :cond_5

    move/from16 v17, v1

    move/from16 v18, v2

    move-object v1, v4

    goto :goto_3

    :cond_5
    move/from16 v17, v1

    move/from16 v18, v2

    move-object v1, v14

    .line 36
    :goto_3
    iget-object v2, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->d:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v19, v4

    iget-object v4, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->e:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v5, v21

    .line 37
    invoke-interface {v5, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmpg-double v2, v26, v28

    if-lez v2, :cond_14

    iget-object v2, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->c:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpg-double v1, v1, v28

    if-gez v1, :cond_6

    goto/16 :goto_e

    :cond_6
    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    move-object/from16 v20, v5

    move/from16 v4, v24

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    move-object/from16 v5, v22

    .line 38
    invoke-interface {v5, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v22, v1

    move/from16 v21, v4

    move-object/from16 p4, v8

    move/from16 v8, v25

    goto :goto_4

    :cond_7
    move/from16 v21, v4

    move v4, v5

    move-object/from16 p4, v8

    move-object/from16 v5, v22

    move/from16 v8, v25

    if-lt v8, v4, :cond_8

    .line 39
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v22, v1

    goto :goto_4

    :cond_8
    move-object/from16 v22, v9

    :goto_4
    move/from16 v23, v17

    const/4 v4, 0x0

    :goto_5
    sub-int v1, v23, v4

    .line 40
    invoke-static {v12, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    move-object/from16 v0, p0

    move-object/from16 v24, v9

    move/from16 v9, v17

    move-object/from16 v1, v22

    move-object/from16 v17, v10

    move-object/from16 p5, v15

    move/from16 v10, v18

    move-object v15, v2

    move-object v2, v3

    move-object/from16 v18, v3

    move-object v3, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v30, v19

    move-wide/from16 v14, v28

    move/from16 v19, v4

    move-object/from16 v31, v20

    move-object/from16 v20, v5

    move/from16 v5, v23

    .line 41
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->a(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 42
    invoke-interface {v0, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpl-double v1, v1, v14

    if-lez v1, :cond_a

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v2, v2, v14

    if-ltz v2, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v4, v19

    goto :goto_8

    :cond_a
    move-object/from16 v1, v31

    :goto_6
    sub-int v2, v10, v19

    sub-int v0, v23, v10

    if-lt v2, v0, :cond_b

    add-int/lit8 v4, v19, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v23, v23, -0x1

    move/from16 v4, v19

    :goto_7
    move-object/from16 v0, v17

    .line 43
    :goto_8
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    sub-int v2, v23, v4

    const/4 v3, 0x1

    if-gt v2, v3, :cond_c

    goto :goto_9

    :cond_c
    move-wide/from16 v28, v14

    move-object/from16 v3, v18

    move-object/from16 v5, v20

    move-object/from16 v14, v25

    move-object/from16 v0, v26

    move-object/from16 v19, v30

    move-object/from16 v15, p5

    move-object/from16 v20, v1

    move/from16 v18, v10

    move-object/from16 v10, v17

    move/from16 v17, v9

    move-object/from16 v9, v24

    goto/16 :goto_5

    .line 44
    :cond_d
    :goto_9
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 45
    invoke-interface {v1, v11}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v0}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v4, v10, -0x1

    move v2, v10

    goto :goto_a

    :cond_e
    move/from16 v2, v23

    .line 46
    :goto_a
    iget-object v3, v6, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->f:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    .line 47
    invoke-interface {v7, v0}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 48
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const/4 v7, 0x1

    invoke-static {v5, v6, v14, v15, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v5

    if-eqz v5, :cond_f

    return-object v0

    :cond_f
    const/4 v5, 0x2

    if-le v9, v5, :cond_10

    sub-int/2addr v2, v4

    if-eq v2, v9, :cond_10

    const/4 v5, 0x0

    .line 49
    invoke-static {v12, v4, v12, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-static {v13, v4, v13, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v4, v10, v4

    :goto_b
    move v10, v4

    goto :goto_c

    .line 51
    :cond_10
    array-length v2, v12

    if-ne v9, v2, :cond_11

    add-int/lit8 v2, v9, -0x1

    .line 52
    array-length v4, v12

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x2

    div-int/2addr v4, v6

    if-lt v10, v4, :cond_12

    const/4 v4, 0x0

    .line 53
    invoke-static {v12, v5, v12, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    invoke-static {v13, v5, v13, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v10, -0x1

    goto :goto_b

    :cond_11
    move v2, v9

    :cond_12
    :goto_c
    add-int/lit8 v4, v10, 0x1

    sub-int v5, v2, v10

    .line 55
    invoke-static {v12, v10, v12, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    aput-object v0, v12, v10

    .line 57
    invoke-static {v13, v10, v13, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    aput-object v3, v13, v10

    const/4 v5, 0x1

    add-int/2addr v2, v5

    move-object/from16 v5, v26

    .line 59
    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpg-double v6, v6, v14

    if-gtz v6, :cond_13

    .line 60
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v4, v21, 0x1

    move-object/from16 v21, v0

    move-object/from16 v23, v1

    move-object/from16 v22, v3

    move-object v0, v5

    const/4 v1, 0x0

    goto :goto_d

    .line 61
    :cond_13
    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v25, v8, 0x1

    move-object v11, v0

    move-object/from16 v21, v1

    move-object v0, v3

    move v10, v4

    move-object/from16 v22, v20

    move/from16 v1, v25

    move-object/from16 v23, v30

    const/4 v4, 0x0

    move-object/from16 v25, v5

    :goto_d
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v3, v18

    move-object/from16 v9, v24

    move/from16 v24, v4

    move-wide v4, v14

    move-object/from16 v14, v25

    move-object/from16 v15, p5

    move/from16 v25, v1

    move v1, v2

    move v2, v10

    move-object/from16 v10, v17

    goto/16 :goto_1

    :cond_14
    :goto_e
    move-object v1, v5

    move-object/from16 v25, v14

    move-object/from16 v30, v19

    move-wide/from16 v14, v28

    move-object v5, v0

    .line 62
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver$a;->a:[I

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_19

    const/4 v2, 0x4

    if-eq v0, v2, :cond_17

    const/4 v2, 0x5

    if-ne v0, v2, :cond_16

    .line 63
    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v0, v2, v14

    if-gez v0, :cond_15

    move-object v11, v1

    :cond_15
    return-object v11

    .line 64
    :cond_16
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 65
    :cond_17
    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v0, v2, v14

    if-gtz v0, :cond_18

    goto :goto_f

    :cond_18
    move-object v11, v1

    :goto_f
    return-object v11

    :cond_19
    return-object v1

    :cond_1a
    return-object v11

    :cond_1b
    move-object/from16 v0, v25

    move-object/from16 v2, v30

    .line 66
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpg-double v0, v2, v14

    if-gez v0, :cond_1c

    goto :goto_10

    :cond_1c
    move-object v11, v1

    :goto_10
    return-object v11

    .line 67
    :cond_1d
    new-instance v9, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/4 v0, 0x0

    aget-object v1, v12, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const/4 v3, 0x2

    aget-object v4, v12, v3

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    aget-object v0, v13, v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    aget-object v0, v13, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    move-object v0, v9

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v9
.end method

.method public solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<",
            "TT;>;TT;TT;",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 1
    invoke-interface {p3, p4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/FieldBracketingNthOrderBrentSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object p0

    return-object p0
.end method
