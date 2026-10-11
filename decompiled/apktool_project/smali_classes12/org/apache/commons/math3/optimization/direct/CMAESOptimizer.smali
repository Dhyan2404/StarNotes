.class public Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$a;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;,
        Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_CHECKFEASABLECOUNT:I = 0x0

.field public static final DEFAULT_DIAGONALONLY:I = 0x0

.field public static final DEFAULT_ISACTIVECMA:Z = true

.field public static final DEFAULT_MAXITERATIONS:I = 0x7530

.field public static final DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

.field public static final DEFAULT_STOPFITNESS:D


# instance fields
.field public A:D

.field public B:D

.field public C:D

.field public D:D

.field public E:D

.field public F:D

.field public G:D

.field public H:Lorg/apache/commons/math3/linear/RealMatrix;

.field public I:Lorg/apache/commons/math3/linear/RealMatrix;

.field public J:Lorg/apache/commons/math3/linear/RealMatrix;

.field public K:D

.field public L:Lorg/apache/commons/math3/linear/RealMatrix;

.field public M:Lorg/apache/commons/math3/linear/RealMatrix;

.field public N:Lorg/apache/commons/math3/linear/RealMatrix;

.field public O:Lorg/apache/commons/math3/linear/RealMatrix;

.field public P:Lorg/apache/commons/math3/linear/RealMatrix;

.field public Q:Lorg/apache/commons/math3/linear/RealMatrix;

.field public R:I

.field public S:[D

.field public T:I

.field public U:Lorg/apache/commons/math3/random/RandomGenerator;

.field public V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field public X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:I

.field public j:[D

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:D

.field public q:D

.field public r:D

.field public s:D

.field public t:D

.field public u:I

.field public v:D

.field public w:Lorg/apache/commons/math3/linear/RealMatrix;

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/random/MersenneTwister;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/MersenneTwister;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(IDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    const/4 p9, 0x0

    .line 23
    iput p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    .line 25
    iput-boolean p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->n:Z

    .line 26
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->V:Ljava/util/List;

    .line 27
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->W:Ljava/util/List;

    .line 28
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->X:Ljava/util/List;

    .line 29
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Y:Ljava/util/List;

    .line 30
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->o:I

    .line 31
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->p:D

    .line 32
    iput-boolean p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->h:Z

    .line 33
    iput p5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    .line 34
    iput p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->i:I

    .line 35
    iput-object p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->U:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 36
    iput-boolean p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->n:Z

    return-void
.end method

.method public constructor <init>(I[D)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x7530

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    sget-object v9, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->DEFAULT_RANDOMGENERATOR:Lorg/apache/commons/math3/random/RandomGenerator;

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V

    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;Z)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v11, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v11}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;-><init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(I[DIDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[DIDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0, p11}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateSimpleBoundsOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    const/4 p11, 0x0

    .line 6
    iput p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    .line 8
    iput-boolean p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->n:Z

    .line 9
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->V:Ljava/util/List;

    .line 10
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->W:Ljava/util/List;

    .line 11
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->X:Ljava/util/List;

    .line 12
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    iput-object p11, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Y:Ljava/util/List;

    .line 13
    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    .line 15
    iput p3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->o:I

    .line 16
    iput-wide p4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->p:D

    .line 17
    iput-boolean p6, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->h:Z

    .line 18
    iput p7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    .line 19
    iput p8, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->i:I

    .line 20
    iput-object p9, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->U:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 21
    iput-boolean p10, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->n:Z

    return-void
.end method

.method public static A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static B(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v2

    sub-int v5, v3, p1

    if-gt v2, v5, :cond_0

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    goto :goto_2

    :cond_0
    const-wide/16 v5, 0x0

    :goto_2
    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static G(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method

.method private a()V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getStartPoint()[D

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getLowerBound()[D

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getUpperBound()[D

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    if-eqz v3, :cond_3

    array-length v3, v3

    array-length v4, v0

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    aget-wide v5, v5, v4

    const-wide/16 v7, 0x0

    cmpg-double v7, v5, v7

    if-ltz v7, :cond_1

    aget-wide v7, v2, v4

    aget-wide v9, v1, v4

    sub-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    aget-wide v5, p0, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v5, v2, v4

    aget-wide v1, v1, v4

    sub-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p0, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    aget-wide v1, p0, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    array-length p0, p0

    array-length v0, v0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_3
    return-void
.end method

.method private varargs b([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;->getSigma()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$PopulationSize;->getPopulationSize()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic c(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    return p0
.end method

.method public static d(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-interface {p2, v0, p3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-interface {p0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static f(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    div-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static g(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    filled-new-array {p0, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    if-ge v2, p1, :cond_0

    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static i([I)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static j(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static k(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 8

    const-wide v0, -0x10000000000001L

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    cmpg-double v7, v0, v5

    if-gez v7, :cond_0

    move-wide v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static l([D)D
    .locals 6

    const-wide v0, -0x10000000000001L

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-wide v3, p0, v2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static m(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 8

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    cmpl-double v7, v0, v5

    if-lez v7, :cond_0

    move-wide v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static n([D)D
    .locals 6

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-wide v3, p0, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static o(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5

    filled-new-array {p0, p1}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static p([DD)V
    .locals 3

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aput-wide p1, p0, v0

    return-void
.end method

.method public static s(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    mul-int/2addr p1, v0

    mul-int/2addr p2, v1

    filled-new-array {p1, p2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, p2, :cond_0

    aget-object v6, v2, v4

    rem-int v7, v4, v0

    rem-int v8, v5, v1

    invoke-interface {p0, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static t([I)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static u(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget v5, p1, v3

    invoke-interface {p0, v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static v(DDD)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3

    sub-double/2addr p2, p0

    div-double/2addr p2, p4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    double-to-int p2, p2

    const/4 p3, 0x1

    filled-new-array {p2, p3}, [I

    move-result-object p3

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p3, v1

    aput-wide p0, v2, v0

    add-double/2addr p0, p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static x(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static y(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aget-object v6, v0, v2

    mul-double/2addr v4, v4

    aput-wide v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public static z(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    move v5, v1

    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {p0, v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    aget-object v5, v0, v1

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method


# virtual methods
.method public final C(D)V
    .locals 10

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:D

    add-double v4, v0, v2

    add-double/2addr v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    int-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v4, v8

    add-double/2addr v0, v2

    add-double/2addr v0, p1

    div-double/2addr v4, v0

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double p1, p1

    div-double/2addr v4, p1

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    div-double/2addr v4, p1

    cmpg-double p1, v4, v8

    if-gez p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getD()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->M:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->e(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    cmpg-double p1, v2, v6

    const-wide v2, 0x42d6bcc41e900000L    # 1.0E14

    if-gtz p1, :cond_2

    move p1, p2

    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    div-double/2addr p1, v2

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v4, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v4, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->o(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    mul-double/2addr v4, v2

    cmpl-double p1, p1, v4

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    div-double/2addr p1, v2

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    sub-double/2addr p1, v2

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v2, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->o(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->e(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->N:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_4
    return-void
.end method

.method public final D(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:D

    add-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u:I

    const/4 v2, 0x1

    move-object/from16 v5, p5

    invoke-static {v5, v2, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    move-object/from16 v5, p2

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->I:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget-wide v9, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-eqz p1, :cond_0

    move-wide v11, v3

    goto :goto_0

    :cond_0
    iget-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->z:D

    mul-double/2addr v11, v13

    sub-double v13, v9, v13

    mul-double/2addr v11, v13

    :goto_0
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    sub-double v13, v7, v13

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:D

    sub-double/2addr v13, v3

    add-double/2addr v11, v13

    iget-boolean v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->h:Z

    if-eqz v6, :cond_2

    sub-double/2addr v7, v3

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v3

    iget-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x:D

    mul-double/2addr v7, v3

    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    add-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    div-double/2addr v7, v3

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->t([I)[I

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v3

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->z(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w([D)[I

    move-result-object v9

    invoke-static {v4, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-static {v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->t([I)[I

    move-result-object v13

    invoke-static {v4, v13}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v4, v10}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->f(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->i([I)[I

    move-result-object v9

    invoke-static {v4, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    iget-object v10, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    invoke-interface {v9, v6, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    const-wide v13, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    div-double/2addr v13, v9

    cmpl-double v6, v7, v13

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v13, v7

    :goto_1
    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v4, v6, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->N:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->e(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v13

    add-double/2addr v11, v6

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:D

    add-double/2addr v8, v6

    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v6, v2, v7}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v3, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    move-wide v3, v13

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:D

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v5, v2, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_3
    const-wide/16 v3, 0x0

    :goto_2
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C(D)V

    return-void
.end method

.method public final E(ZLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->F:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->z:D

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->F:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->G:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->I:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->F:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->G:D

    invoke-interface {p2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    iget p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    if-le p2, p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {p1, p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->e(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->N:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->e(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_1
    return-void
.end method

.method public final F(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->J:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v1, v3, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sub-double v7, v5, v1

    mul-double/2addr v1, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x:D

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->J:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->K:D

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    sub-double v7, v3, v7

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v7, v8, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v0, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->E:D

    div-double/2addr v0, v7

    iget p1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v7, p1

    add-double/2addr v7, v3

    div-double v7, v5, v7

    const-wide v9, 0x3ff6666666666666L    # 1.4

    add-double/2addr v7, v9

    cmpg-double p1, v0, v7

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->I:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->z:D

    sub-double/2addr v3, v1

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->I:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->z:D

    sub-double/2addr v5, v1

    mul-double/2addr v1, v5

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x:D

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    div-double/2addr v1, v3

    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->I:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_1
    return p1
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 26

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->a()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    new-instance v7, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;

    invoke-direct {v7, v6}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;-><init>(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getStartPoint()[D

    move-result-object v0

    array-length v1, v0

    iput v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->h([D)V

    const/4 v8, 0x0

    iput v8, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;->f([D)D

    move-result-wide v0

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->S:[D

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->p([DD)V

    new-instance v2, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getStartPoint()[D

    move-result-object v3

    iget-boolean v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    if-eqz v4, :cond_0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    neg-double v4, v0

    :goto_0
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    const/4 v9, 0x1

    iput v9, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    move-wide v11, v0

    move-object v13, v2

    const/4 v14, 0x0

    :goto_1
    iget v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    iget v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->o:I

    if-gt v0, v1, :cond_1a

    iget v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    iget v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->r(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    iget v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->G(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    new-array v15, v1, [D

    move v1, v8

    :goto_2
    iget v2, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    if-ge v1, v2, :cond_4

    move v2, v8

    const/4 v4, 0x0

    :goto_3
    iget v5, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->i:I

    add-int/2addr v5, v9

    if-ge v2, v5, :cond_3

    iget v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    if-gtz v4, :cond_1

    iget-object v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->N:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget-wide v9, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    goto :goto_4

    :cond_1
    iget-object v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v5, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    invoke-static {v5, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget-wide v9, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    :goto_4
    iget v5, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->i:I

    if-ge v2, v5, :cond_3

    invoke-interface {v4, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;->b([D)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_5

    :cond_2
    iget v5, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->q(I)[D

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    :goto_5
    invoke-static {v4, v8, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->d(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V

    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;->f([D)D

    move-result-wide v4

    aput-wide v4, v15, v1
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/TooManyEvaluationsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v15}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w([D)[I

    move-result-object v9

    iget-object v5, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u:I

    invoke-static {v9, v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    iget-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u:I

    invoke-static {v9, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-virtual {v6, v1, v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->F(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z

    move-result v1

    iget v2, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l:I

    if-gtz v2, :cond_5

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v6, v1, v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->E(ZLorg/apache/commons/math3/linear/RealMatrix;)V

    :goto_6
    iget-wide v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    iget-wide v2, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->K:D

    iget-wide v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->E:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    move-object/from16 v16, v9

    iget-wide v8, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    mul-double/2addr v2, v8

    iget-wide v8, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:D

    div-double/2addr v2, v8

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    const/4 v0, 0x0

    aget v1, v16, v0

    aget-wide v1, v15, v1

    move-object/from16 v3, v16

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v4, v3, v4

    aget-wide v4, v15, v4

    cmpl-double v8, v11, v1

    if-lez v8, :cond_8

    new-instance v8, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v9

    invoke-static {v7, v9}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;->a(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;[D)[D

    move-result-object v0

    iget-boolean v9, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    if-eqz v9, :cond_6

    move-wide v11, v1

    goto :goto_7

    :cond_6
    neg-double v11, v1

    :goto_7
    invoke-direct {v8, v0, v11, v12}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v0

    iget v9, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    invoke-interface {v0, v9, v8, v13}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v13, v8

    goto/16 :goto_11

    :cond_7
    move-wide v11, v1

    move-object v0, v8

    goto :goto_8

    :cond_8
    move-object v0, v13

    move-object v13, v14

    :goto_8
    iget-wide v8, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->p:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v8, v16

    if-eqz v14, :cond_a

    iget-boolean v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    if-eqz v14, :cond_9

    goto :goto_9

    :cond_9
    neg-double v8, v8

    :goto_9
    cmpg-double v8, v1, v8

    if-gez v8, :cond_a

    move-object/from16 v18, v0

    goto/16 :goto_e

    :cond_a
    iget-object v8, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v8

    iget-object v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->I:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v14, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v14

    move-object/from16 v18, v0

    const/4 v9, 0x0

    :goto_a
    iget v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    if-ge v9, v0, :cond_d

    move-wide/from16 v19, v11

    iget-wide v11, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    aget-wide v21, v14, v9

    move-object/from16 v23, v14

    move-object v0, v15

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move-wide/from16 v21, v1

    move-object v2, v0

    aget-wide v0, v8, v9

    invoke-static {v14, v15, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    mul-double/2addr v11, v0

    iget-wide v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->r:D

    cmpl-double v0, v11, v0

    if-lez v0, :cond_b

    goto :goto_b

    :cond_b
    iget v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt v9, v0, :cond_c

    goto/16 :goto_e

    :cond_c
    add-int/lit8 v9, v9, 0x1

    move-object v15, v2

    move-wide/from16 v11, v19

    move-wide/from16 v1, v21

    move-object/from16 v14, v23

    goto :goto_a

    :cond_d
    move-wide/from16 v21, v1

    move-wide/from16 v19, v11

    move-object v2, v15

    :goto_b
    const/4 v0, 0x0

    :goto_c
    iget v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    if-ge v0, v1, :cond_f

    iget-wide v11, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    aget-wide v14, v8, v0

    mul-double/2addr v11, v14

    iget-wide v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->q:D

    cmpl-double v1, v11, v14

    if-lez v1, :cond_e

    goto/16 :goto_e

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    iget-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->S:[D

    invoke-static {v0}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->n([D)D

    move-result-wide v0

    iget-object v8, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->S:[D

    invoke-static {v8}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->l([D)D

    move-result-wide v8

    iget v11, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    const/4 v12, 0x2

    if-le v11, v12, :cond_10

    invoke-static {v8, v9, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v14

    move-object v11, v13

    move-wide/from16 v12, v21

    invoke-static {v0, v1, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v21

    sub-double v14, v14, v21

    move-wide/from16 v21, v4

    iget-wide v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s:D

    cmpg-double v4, v14, v4

    if-gez v4, :cond_11

    goto :goto_e

    :cond_10
    move-object v11, v13

    move-wide/from16 v12, v21

    move-wide/from16 v21, v4

    :cond_11
    iget v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    iget-object v5, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->S:[D

    array-length v5, v5

    if-le v4, v5, :cond_12

    sub-double v4, v8, v0

    iget-wide v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->t:D

    cmpg-double v4, v4, v14

    if-gez v4, :cond_12

    goto :goto_e

    :cond_12
    iget-object v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    iget-object v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v14}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v14

    div-double/2addr v4, v14

    const-wide v14, 0x416312d000000000L    # 1.0E7

    cmpl-double v4, v4, v14

    if-lez v4, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v4

    if-eqz v4, :cond_16

    new-instance v4, Lorg/apache/commons/math3/optimization/PointValuePair;

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v10

    iget-boolean v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->m:Z

    if-eqz v14, :cond_14

    move-wide v14, v12

    goto :goto_d

    :cond_14
    neg-double v14, v12

    :goto_d
    invoke-direct {v4, v10, v14, v15}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-eqz v11, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v10

    iget v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    invoke-interface {v10, v14, v4, v11}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    :goto_e
    move-object/from16 v13, v18

    goto/16 :goto_11

    :cond_15
    move-object v14, v4

    goto :goto_f

    :cond_16
    const/4 v5, 0x0

    move-object v14, v11

    :goto_f
    iget v4, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    int-to-double v10, v4

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    div-double v10, v10, v24

    const-wide v24, 0x3fb999999999999aL    # 0.1

    add-double v10, v10, v24

    double-to-int v4, v10

    aget v3, v3, v4

    aget-wide v2, v2, v3

    cmpl-double v2, v19, v2

    if-nez v2, :cond_17

    iget-wide v10, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    iget-wide v3, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    move-object v2, v14

    iget-wide v14, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:D

    div-double/2addr v3, v14

    const-wide v14, 0x3fc999999999999aL    # 0.2

    add-double/2addr v3, v14

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    mul-double/2addr v10, v3

    iput-wide v10, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    goto :goto_10

    :cond_17
    move-object v2, v14

    :goto_10
    iget v3, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_18

    invoke-static {v8, v9, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-static {v0, v1, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    cmpl-double v0, v3, v16

    if-nez v0, :cond_18

    iget-wide v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    iget-wide v3, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    iget-wide v8, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:D

    div-double/2addr v3, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    add-double/2addr v3, v8

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    mul-double/2addr v0, v3

    iput-wide v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    :cond_18
    iget-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->S:[D

    invoke-static {v0, v12, v13}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->p([DD)V

    sub-double v0, v21, v12

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$b;->e(D)V

    iget-boolean v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->n:Z

    if-eqz v0, :cond_19

    iget-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->V:Ljava/util/List;

    iget-wide v3, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->X:Ljava/util/List;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->W:Ljava/util/List;

    iget-object v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Y:Ljava/util/List;

    iget-object v1, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    iget v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->R:I

    move v9, v1

    move-object v14, v2

    move v8, v5

    move-object/from16 v13, v18

    move-wide/from16 v11, v19

    goto/16 :goto_1

    :catch_0
    :cond_1a
    :goto_11
    return-object v13
.end method

.method public getStatisticsDHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Y:Ljava/util/List;

    return-object p0
.end method

.method public getStatisticsFitnessHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->X:Ljava/util/List;

    return-object p0
.end method

.method public getStatisticsMeanHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->W:Ljava/util/List;

    return-object p0
.end method

.method public getStatisticsSigmaHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->V:Ljava/util/List;

    return-object p0
.end method

.method public final h([D)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    if-gtz v2, :cond_0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v5, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v2, v5

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    :cond_0
    array-length v2, v1

    const/4 v5, 0x1

    filled-new-array {v2, v5}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_2

    aget-object v8, v2, v7

    iget-object v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j:[D

    if-nez v11, :cond_1

    const-wide v9, 0x3fd3333333333333L    # 0.3

    goto :goto_1

    :cond_1
    aget-wide v9, v11, v7

    :goto_1
    aput-wide v9, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v7, v2, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v11

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    const-wide v11, 0x408f400000000000L    # 1000.0

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v13

    mul-double/2addr v13, v11

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->q:D

    const-wide v11, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-static {v7}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v13

    mul-double/2addr v13, v11

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->r:D

    const-wide v11, 0x3d719799812dea11L    # 1.0E-12

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s:D

    const-wide v11, 0x3d3c25c268497682L    # 1.0E-13

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->t:D

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u:I

    int-to-double v11, v2

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v11

    iput-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->v:D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u:I

    int-to-double v11, v2

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-wide v15, v11

    invoke-static/range {v13 .. v18}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->v(DDD)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->j(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-interface {v2, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v11, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->v:D

    invoke-interface {v2, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    move v2, v6

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    :goto_2
    iget v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->u:I

    if-ge v2, v8, :cond_3

    iget-object v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v8, v2, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v17

    add-double v13, v13, v17

    mul-double v17, v17, v17

    add-double v15, v15, v17

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    move-object/from16 v17, v7

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v8, v6, v13

    invoke-interface {v2, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->w:Lorg/apache/commons/math3/linear/RealMatrix;

    mul-double/2addr v13, v13

    div-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x:D

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v8, v2

    div-double v8, v13, v8

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    add-double/2addr v8, v15

    add-int/lit8 v10, v2, 0x4

    int-to-double v11, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v24, v13, v22

    int-to-double v5, v2

    div-double v24, v24, v5

    add-double v11, v11, v24

    div-double/2addr v8, v11

    iput-wide v8, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->z:D

    add-double v5, v13, v22

    int-to-double v7, v2

    add-double/2addr v7, v13

    add-double/2addr v7, v3

    div-double/2addr v5, v7

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v5

    const/4 v7, 0x1

    add-int/2addr v2, v7

    int-to-double v7, v2

    div-double/2addr v13, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    sub-double/2addr v7, v5

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    mul-double v7, v7, v22

    add-double/2addr v7, v5

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v11, v2

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->o:I

    int-to-double v13, v2

    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double v13, v13, v20

    div-double/2addr v11, v13

    sub-double v11, v5, v11

    const-wide v5, 0x3fd3333333333333L    # 0.3

    invoke-static {v5, v6, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double/2addr v7, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A:D

    add-double/2addr v7, v5

    iput-wide v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->B:D

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v5, v2

    const-wide v7, 0x3ff4cccccccccccdL    # 1.3

    add-double/2addr v5, v7

    int-to-double v11, v2

    add-double/2addr v11, v7

    mul-double/2addr v5, v11

    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->x:D

    add-double/2addr v5, v7

    div-double v5, v22, v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v5, v11, v5

    sub-double v13, v7, v22

    div-double v18, v11, v7

    add-double v13, v13, v18

    mul-double v13, v13, v22

    add-int/lit8 v9, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    mul-int/2addr v9, v2

    int-to-double v11, v9

    add-double/2addr v11, v7

    div-double/2addr v13, v11

    invoke-static {v5, v6, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:D

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v7, v2

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    add-double/2addr v7, v11

    mul-double/2addr v5, v7

    div-double/2addr v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->F:D

    iget-wide v5, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->C:D

    sub-double v5, v7, v5

    iget-wide v7, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->D:D

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v13, v2

    add-double/2addr v13, v11

    mul-double/2addr v7, v13

    div-double/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->G:D

    iget v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    int-to-double v5, v4

    mul-double/2addr v5, v15

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    sub-double v5, v7, v5

    const-wide/high16 v11, 0x4035000000000000L    # 21.0

    int-to-double v13, v4

    mul-double/2addr v13, v11

    int-to-double v11, v4

    mul-double/2addr v13, v11

    div-double v11, v7, v13

    add-double/2addr v5, v11

    mul-double/2addr v2, v5

    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->E:D

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->H:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y:D

    div-double v6, v7, v1

    move-object/from16 v1, v17

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->Q:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->G(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->I:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->G(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->J:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->K:D

    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v1, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->o(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->M:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->O:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    invoke-static {v3, v4, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->s(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->A(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->N:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->M:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->y(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->e(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->L:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->P:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->k:I

    mul-int/lit8 v1, v1, 0x1e

    int-to-double v1, v1

    iget v3, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->g:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->T:I

    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->S:[D

    const/4 v6, 0x0

    :goto_3
    iget v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->T:I

    if-ge v6, v1, :cond_4

    iget-object v1, v0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->S:[D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0

    invoke-direct {p0, p4}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->b([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public final q(I)[D
    .locals 4

    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->U:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final r(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;->U:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public final w([D)[I
    .locals 5

    array-length p0, p1

    new-array p0, p0, [Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$a;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$a;

    aget-wide v3, p1, v1

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$a;-><init>(DI)V

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v1, p1

    new-array v1, v1, [I

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$a;->a(Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$a;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
