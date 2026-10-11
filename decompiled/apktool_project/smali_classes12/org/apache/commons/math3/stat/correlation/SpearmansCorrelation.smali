.class public Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

.field public final c:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 10
    new-instance p2, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    iput-object p2, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->c:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->c:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-void
.end method


# virtual methods
.method public final a([D)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final b(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v1, v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->a([D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    move v3, v2

    :goto_1
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->c([DLjava/util/Set;)[D

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    if-ge v2, p1, :cond_4

    iget-object p1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public final c([DLjava/util/Set;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    array-length p0, p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr p0, v0

    new-array p0, p0, [D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, p1, v0

    aput-wide v3, p0, v1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public correlation([D[D)D
    .locals 2

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    instance-of v1, v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    check-cast v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->a([D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->a([D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->c([DLjava/util/Set;)[D

    move-result-object p1

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->c([DLjava/util/Set;)[D

    move-result-object p2

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->b:Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;

    invoke-interface {p0, p2}, Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;->rank([D)[D

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->c:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getRankCorrelation()Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/correlation/SpearmansCorrelation;->c:Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;

    return-object p0
.end method
