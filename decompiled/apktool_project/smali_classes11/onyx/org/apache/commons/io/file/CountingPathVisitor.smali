.class public Lonyx/org/apache/commons/io/file/CountingPathVisitor;
.super Lonyx/org/apache/commons/io/file/SimplePathVisitor;
.source "SourceFile"


# static fields
.field public static final i:[Ljava/lang/String;


# instance fields
.field public final f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

.field public final g:Lonyx/org/apache/commons/io/file/PathFilter;

.field public final h:Lonyx/org/apache/commons/io/file/PathFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V
    .locals 2

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->d()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->c()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)V

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;Lonyx/org/apache/commons/io/file/PathFilter;Lonyx/org/apache/commons/io/file/PathFilter;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lonyx/org/apache/commons/io/file/SimplePathVisitor;-><init>()V

    const-string v0, "pathCounter"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    const-string p1, "fileFilter"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lonyx/org/apache/commons/io/file/PathFilter;

    iput-object p2, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->g:Lonyx/org/apache/commons/io/file/PathFilter;

    const-string p1, "dirFilter"

    .line 5
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lonyx/org/apache/commons/io/file/PathFilter;

    iput-object p3, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->h:Lonyx/org/apache/commons/io/file/PathFilter;

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

    .line 6
    invoke-direct {p0, p4}, Lonyx/org/apache/commons/io/file/SimplePathVisitor;-><init>(Lonyx/org/apache/commons/io/function/IOBiFunction;)V

    const-string p4, "pathCounter"

    .line 7
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    iput-object p1, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    const-string p1, "fileFilter"

    .line 8
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lonyx/org/apache/commons/io/file/PathFilter;

    iput-object p2, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->g:Lonyx/org/apache/commons/io/file/PathFilter;

    const-string p1, "dirFilter"

    .line 9
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lonyx/org/apache/commons/io/file/PathFilter;

    iput-object p3, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->h:Lonyx/org/apache/commons/io/file/PathFilter;

    return-void
.end method

.method public static c()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static d()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 3

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/SymbolicLinkFileFilter;

    sget-object v1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    sget-object v2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    invoke-direct {v0, v1, v2}, Lonyx/org/apache/commons/io/filefilter/SymbolicLinkFileFilter;-><init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V

    return-object v0
.end method

.method public static withBigIntegerCounters()Lonyx/org/apache/commons/io/file/CountingPathVisitor;
    .locals 2

    new-instance v0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withLongCounters()Lonyx/org/apache/commons/io/file/CountingPathVisitor;
    .locals 2

    new-instance v0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->longPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lonyx/org/apache/commons/io/file/CountingPathVisitor;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lonyx/org/apache/commons/io/file/CountingPathVisitor;

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    iget-object p1, p1, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 3
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->h:Lonyx/org/apache/commons/io/file/PathFilter;

    invoke-interface {p0, p1, p2}, Lonyx/org/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq p0, p1, :cond_0

    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/file/Counters$PathCounters;->getDirectoryCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object p0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/file/Counters$Counter;->increment()V

    return-void
.end method

.method public updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 0

    iget-object p1, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p1}, Lonyx/org/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object p1

    invoke-interface {p1}, Lonyx/org/apache/commons/io/file/Counters$Counter;->increment()V

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->f:Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p0}, Lonyx/org/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lonyx/org/apache/commons/io/file/Counters$Counter;

    move-result-object p0

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lonyx/org/apache/commons/io/file/Counters$Counter;->add(J)V

    return-void
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 2
    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->g:Lonyx/org/apache/commons/io/file/PathFilter;

    invoke-interface {v0, p1, p2}, Lonyx/org/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    sget-object v1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 4
    :cond_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method
