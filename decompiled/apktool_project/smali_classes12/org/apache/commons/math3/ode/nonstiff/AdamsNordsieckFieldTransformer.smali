.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/Field<",
            "+",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "*>;>;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<",
            "+",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "*>;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->a:Lorg/apache/commons/math3/Field;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->a(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object p2, v0, v4

    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    new-instance p2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {p2, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v1, p2}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;)V

    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->b:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    return-void
.end method

.method public static getInstance(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/RealFieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;-><init>(Lorg/apache/commons/math3/Field;I)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->a:Lorg/apache/commons/math3/Field;

    invoke-static {v0, p1, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    array-length v2, p1

    if-gt v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    neg-int v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v5, v3

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move v5, v0

    :goto_1
    array-length v6, v2

    if-gt v5, v6, :cond_0

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v2, v6

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p0
.end method

.method public initializeHighOrderDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;[[Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;[[TT;[[TT;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->a:Lorg/apache/commons/math3/Field;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    array-length v3, v3

    add-int/2addr v3, v5

    invoke-static {v2, v4, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->a:Lorg/apache/commons/math3/Field;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v4, v4

    add-int/2addr v4, v5

    const/4 v6, 0x0

    aget-object v7, v1, v6

    array-length v7, v7

    invoke-static {v3, v4, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, v1, v6

    aget-object v7, p4, v6

    move v8, v5

    :goto_0
    array-length v9, v1

    if-ge v8, v9, :cond_6

    aget-object v9, p2, v8

    aget-object v10, p2, v6

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v10, p1

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    mul-int/lit8 v13, v8, 0x2

    add-int/lit8 v14, v13, -0x2

    aget-object v15, v2, v14

    sub-int/2addr v13, v5

    array-length v5, v2

    const/16 v16, 0x0

    if-ge v13, v5, :cond_0

    aget-object v5, v2, v13

    goto :goto_1

    :cond_0
    move-object/from16 v5, v16

    :goto_1
    array-length v10, v15

    if-ge v6, v10, :cond_2

    invoke-interface {v12, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v15, v6

    if-eqz v5, :cond_1

    add-int/lit8 v10, v6, 0x2

    invoke-interface {v12, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    aget-object v5, v1, v8

    aget-object v6, p4, v8

    aget-object v10, v3, v14

    array-length v11, v3

    if-ge v13, v11, :cond_3

    aget-object v16, v3, v13

    :cond_3
    const/4 v11, 0x0

    :goto_2
    array-length v12, v5

    if-ge v11, v12, :cond_5

    aget-object v12, v5, v11

    aget-object v13, v4, v11

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v13, v7, v11

    invoke-interface {v9, v13}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v12, v10, v11

    if-eqz v16, :cond_4

    aget-object v12, v6, v11

    aget-object v13, v7, v11

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v12, v16, v11

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-direct {v1, v4}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v2, v3, v5}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    move v0, v5

    :goto_3
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v3

    if-ge v0, v3, :cond_8

    move v3, v5

    :goto_4
    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v1, v0, v3}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-object v2
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->b:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object p0

    return-object p0
.end method

.method public updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getDataRef()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p3

    check-cast p3, [[Lorg/apache/commons/math3/RealFieldElement;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    aget-object v2, p3, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckFieldTransformer;->c:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v3, v3, v1

    move v4, v0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    aget-object v7, p2, v4

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
