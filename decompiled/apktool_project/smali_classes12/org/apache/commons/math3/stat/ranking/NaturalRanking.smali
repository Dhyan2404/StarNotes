.class public Lorg/apache/commons/math3/stat/ranking/NaturalRanking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/ranking/RankingAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public static final DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;


# instance fields
.field public final a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field public final b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

.field public final c:Lorg/apache/commons/math3/random/RandomDataGenerator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FAILED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    sput-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 19
    sget-object v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 20
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 11
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_TIES_STRATEGY:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 23
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->RANDOM:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 24
    new-instance p1, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 15
    iput-object p2, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 16
    new-instance p1, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    .line 7
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->DEFAULT_NAN_STRATEGY:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 8
    new-instance p1, Lorg/apache/commons/math3/random/RandomDataGenerator;

    invoke-direct {p1}, Lorg/apache/commons/math3/random/RandomDataGenerator;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c:Lorg/apache/commons/math3/random/RandomDataGenerator;

    return-void
.end method


# virtual methods
.method public final a([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public final b([DLjava/util/List;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;D)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-wide p3, p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;",
            ")",
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

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final d([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;D)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-object v0, p1, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    aget-object v1, p1, p0

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;-><init>(DI)V

    aput-object v0, p1, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;
    .locals 8

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    array-length p0, p1

    new-array p0, p0, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    new-instance v4, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v5

    aget-object v7, p1, v3

    invoke-virtual {v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;-><init>(DI)V

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v4

    aget-object v6, p1, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;-><init>(DI)V

    aput-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array p1, v2, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    invoke-static {p0, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final f([DLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-wide v1, p1, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$a;->b:[I

    iget-object v5, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 p0, 0x5

    if-ne v4, p0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v0

    add-long/2addr v4, v1

    long-to-double v4, v4

    aput-wide v4, p1, p2

    move v0, v3

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c:Lorg/apache/commons/math3/random/RandomDataGenerator;

    int-to-long v5, v3

    add-long/2addr v5, v0

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {v4, v0, v1, v5, v6}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    aput-wide v4, p1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b([DLjava/util/List;D)V

    goto :goto_2

    :cond_3
    int-to-double v3, v3

    add-double/2addr v1, v3

    sub-double/2addr v1, v5

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b([DLjava/util/List;D)V

    goto :goto_2

    :cond_4
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v7

    int-to-double v3, v3

    add-double/2addr v1, v3

    sub-double/2addr v1, v5

    div-double/2addr v1, v7

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b([DLjava/util/List;D)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final g([DLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    aput-wide v0, p1, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNanStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object p0
.end method

.method public getTiesStrategy()Lorg/apache/commons/math3/stat/ranking/TiesStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->b:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    return-object p0
.end method

.method public rank([D)[D
    .locals 10

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;-><init>(DI)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$a;->a:[I

    iget-object v2, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->c([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->e([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;)[Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {p0, v0, v4, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->d([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;D)V

    goto :goto_1

    :cond_6
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v4, v5}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->d([Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;D)V

    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length p1, v0

    new-array p1, p1, [D

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v4

    int-to-double v5, v2

    aput-wide v5, p1, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v5, v1

    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_9

    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v6

    add-int/lit8 v8, v1, -0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->c()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-lez v6, :cond_8

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_7

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->f([DLjava/util/List;)V

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking$b;->b()I

    move-result v6

    int-to-double v7, v5

    aput-wide v7, p1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_a

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->f([DLjava/util/List;)V

    :cond_a
    iget-object v0, p0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->a:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->g([DLjava/util/List;)V

    :cond_b
    return-object p1
.end method
