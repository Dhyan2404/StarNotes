.class public Lonyx/org/apache/commons/io/file/DeletingPathVisitor;
.super Lonyx/org/apache/commons/io/file/CountingPathVisitor;
.source "SourceFile"


# instance fields
.field public final j:[Ljava/lang/String;

.field public final k:Z

.field public final l:[Ljava/nio/file/LinkOption;


# direct methods
.method public varargs constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;[Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-object v0, Lonyx/org/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lonyx/org/apache/commons/io/file/DeleteOption;

    invoke-direct {p0, p1, v0, p2}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;[Lonyx/org/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lonyx/org/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;)V

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->i:[Ljava/lang/String;

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->j:[Ljava/lang/String;

    .line 6
    invoke-static {p3}, Lonyx/org/apache/commons/io/file/StandardDeleteOption;->overrideReadOnly([Lonyx/org/apache/commons/io/file/DeleteOption;)Z

    move-result p1

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->k:Z

    if-nez p2, :cond_1

    .line 7
    invoke-static {}, Lonyx/org/apache/commons/io/file/PathUtils;->noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    :goto_1
    iput-object p1, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->l:[Ljava/nio/file/LinkOption;

    return-void
.end method

.method public varargs constructor <init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;[Lonyx/org/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/file/PathUtils;->noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lonyx/org/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    return-void
.end method

.method public static withBigIntegerCounters()Lonyx/org/apache/commons/io/file/DeletingPathVisitor;
    .locals 3

    new-instance v0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static withLongCounters()Lonyx/org/apache/commons/io/file/DeletingPathVisitor;
    .locals 3

    new-instance v0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;

    invoke-static {}, Lonyx/org/apache/commons/io/file/Counters;->longPathCounters()Lonyx/org/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;-><init>(Lonyx/org/apache/commons/io/file/Counters$PathCounters;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/nio/file/Path;)Z
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->j:[Ljava/lang/String;

    invoke-static {p1}, Lonyx/org/apache/commons/io/file/PathUtils;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    check-cast p1, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->k:Z

    iget-boolean v3, p1, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->k:Z

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->j:[Ljava/lang/String;

    iget-object p1, p1, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->j:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->j:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->k:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
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

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lonyx/org/apache/commons/io/file/PathUtils;->isEmptyDirectory(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

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

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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
    invoke-super {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 3
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->e(Ljava/nio/file/Path;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    :goto_0
    return-object p0
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

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

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

    .line 2
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->e(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->l:[Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lonyx/org/apache/commons/io/file/DeletingPathVisitor;->l:[Ljava/nio/file/LinkOption;

    invoke-static {p1, v0, v1}, Lonyx/org/apache/commons/io/file/PathUtils;->setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :cond_2
    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 10
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method
