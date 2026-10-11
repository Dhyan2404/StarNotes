.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field public final b:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->a(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/FieldLUDecomposition;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;-><init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;

    move-result-object v1

    new-array v2, p1, [Lorg/apache/commons/math3/fraction/BigFraction;

    sget-object v3, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/fraction/BigFraction;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    new-array v3, p1, [Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v3, v0, v4

    sget-object v5, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-direct {v3, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/linear/FieldDecompositionSolver;->solve(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->bigFractionMatrixToRealMatrix(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->a:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->b:[D

    :goto_1
    if-ge v4, p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->b:[D

    aget-object v1, v2, v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getInstance(I)Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;
    .locals 2

    sget-object v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;-><init>(I)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

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
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    filled-new-array {p1, p1}, [I

    move-result-object p0

    const-class p1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Lorg/apache/commons/math3/fraction/BigFraction;

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    array-length v1, p0

    if-gt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    neg-int v2, v0

    move v3, p1

    move v4, v2

    :goto_1
    array-length v5, v1

    if-gt v3, v5, :cond_0

    add-int/lit8 v5, v3, -0x1

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    add-int/lit8 v3, v3, 0x1

    mul-int v7, v4, v3

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(I)V

    aput-object v6, v1, v5

    mul-int/2addr v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>([[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public getNSteps()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->b:[D

    array-length p0, p0

    return p0
.end method

.method public initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->b:[D

    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    array-length v2, v2

    add-int/2addr v2, v4

    filled-new-array {v3, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->b:[D

    array-length v0, v0

    add-int/2addr v0, v4

    const/4 v3, 0x0

    aget-object v5, v1, v3

    array-length v5, v5

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    aget-object v5, v1, v3

    aget-object v6, p5, v3

    move v7, v4

    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_6

    aget-wide v8, p3, v7

    aget-wide v10, p3, v3

    sub-double/2addr v8, v10

    div-double v10, v8, p1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double v12, v12, p1

    mul-int/lit8 v14, v7, 0x2

    add-int/lit8 v15, v14, -0x2

    aget-object v3, v2, v15

    sub-int/2addr v14, v4

    array-length v4, v2

    const/16 v16, 0x0

    if-ge v14, v4, :cond_0

    aget-object v4, v2, v14

    goto :goto_1

    :cond_0
    move-object/from16 v4, v16

    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    const/4 v2, 0x0

    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_2

    mul-double/2addr v12, v10

    mul-double v19, v8, v12

    aput-wide v19, v3, v2

    if-eqz v4, :cond_1

    add-int/lit8 v6, v2, 0x2

    move-wide/from16 v19, v10

    int-to-double v10, v6

    mul-double/2addr v10, v12

    aput-wide v10, v4, v2

    goto :goto_3

    :cond_1
    move-wide/from16 v19, v10

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v10, v19

    goto :goto_2

    :cond_2
    aget-object v2, v1, v7

    aget-object v3, p5, v7

    aget-object v4, v0, v15

    array-length v6, v0

    if-ge v14, v6, :cond_3

    aget-object v16, v0, v14

    :cond_3
    const/4 v6, 0x0

    :goto_4
    array-length v10, v2

    if-ge v6, v10, :cond_5

    aget-wide v10, v2, v6

    aget-wide v12, v5, v6

    sub-double/2addr v10, v12

    aget-wide v12, v18, v6

    mul-double/2addr v12, v8

    sub-double/2addr v10, v12

    aput-wide v10, v4, v6

    if-eqz v16, :cond_4

    aget-wide v10, v3, v6

    aget-wide v12, v18, v6

    sub-double/2addr v10, v12

    aput-wide v10, v16, v6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v17

    move-object/from16 v6, v18

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v17, v2

    new-instance v1, Lorg/apache/commons/math3/linear/QRDecomposition;

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v3, v17

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    move v2, v4

    :goto_5
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_8

    move v3, v4

    :goto_6
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-interface {v0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-virtual {v1, v2, v3, v5, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    return-object v1
.end method

.method public updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->a:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V
    .locals 12

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    aget-object v2, p3, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsNordsieckTransformer;->b:[D

    aget-wide v3, v3, v1

    move v5, v0

    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget-wide v6, v2, v5

    aget-wide v8, p1, v5

    aget-wide v10, p2, v5

    sub-double/2addr v8, v10

    mul-double/2addr v8, v3

    add-double/2addr v6, v8

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
