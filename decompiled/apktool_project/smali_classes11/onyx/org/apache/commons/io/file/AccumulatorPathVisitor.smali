.class public Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;
.super Lonyx/org/apache/commons/io/file/CountingPathVisitor;
.source "SourceFile"


# instance fields
.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->noopPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/function/IOBiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/file/Counters$PathCounters;",
            "Lonyx/org/apache/commons/io/file/PathFilter;",
            "Lonyx/org/apache/commons/io/file/PathFilter;",
            "Lonyx/org/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/function/IOBiFunction;)V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    return-void
.end method

.method public static withBigIntegerCounters()Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withBigIntegerCounters(Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)V

    return-object v0
.end method

.method public static withLongCounters()Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->longPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withLongCounters(Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->longPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)V

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/util/List;Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;

    iget-object v1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    iget-object v3, p1, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    iget-object p1, p1, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDirList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/file/PathUtils;->t(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/file/PathUtils;->t(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    iget-object p2, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->j:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->e(Ljava/util/List;Ljava/nio/file/Path;)V

    return-void
.end method

.method public updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    iget-object p2, p0, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->k:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;->e(Ljava/util/List;Ljava/nio/file/Path;)V

    return-void
.end method
