.class public final Lonyx/org/apache/commons/io/file/FilesUncheck;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/djg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/djg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/zkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/njg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/njg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/bjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bjg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/qjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qjg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ckg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ckg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ykg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ykg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/fjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fjg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/yig;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yig;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/xjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xjg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/wkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wkg;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static delete(Ljava/nio/file/Path;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/pjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pjg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->accept(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteIfExists(Ljava/nio/file/Path;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/pkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/pkg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static varargs find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "I",
            "Ljava/util/function/BiPredicate<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">;[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/zig;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zig;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static varargs getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/kkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kkg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qkg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/FileStore;

    return-object p0
.end method

.method public static varargs getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ukg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ukg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/FileTime;

    return-object p0
.end method

.method public static varargs getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wig;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wig;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/UserPrincipal;

    return-object p0
.end method

.method public static varargs getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/tkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static isHidden(Ljava/nio/file/Path;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sjg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/nkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/nkg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/gkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hjg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static varargs move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/mjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mjg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/ljg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ljg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/mkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/mkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static varargs newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/jkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jkg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/BufferedWriter;

    return-object p0
.end method

.method public static varargs newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/jjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/jjg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/BufferedWriter;

    return-object p0
.end method

.method public static varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/zjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zjg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/SeekableByteChannel;

    return-object p0
.end method

.method public static varargs newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/ikg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ikg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/SeekableByteChannel;

    return-object p0
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/rjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rjg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/DirectoryStream;

    return-object p0
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/ajg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ajg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/DirectoryStream;

    return-object p0
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/dkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/dkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/DirectoryStream;

    return-object p0
.end method

.method public static varargs newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yjg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public static varargs newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    return-object p0
.end method

.method public static probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ekg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ekg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static readAllBytes(Ljava/nio/file/Path;)[B
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ijg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ijg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static readAllLines(Ljava/nio/file/Path;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/xig;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xig;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/akg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/akg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/xkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xkg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/BasicFileAttributes;

    return-object p0
.end method

.method public static varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/vjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/vjg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/fkg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wjg;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lkg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static setOwner(Ljava/nio/file/Path;Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/Path;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/okg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/okg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ojg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ojg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static size(Ljava/nio/file/Path;)J
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/tjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tjg;-><init>()V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "I[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/cjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/cjg;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static varargs walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/skg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/skg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/gjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/gjg;-><init>()V

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/ujg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ujg;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/vkg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/vkg;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOQuadFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/kjg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kjg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/ejg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ejg;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/function/Uncheck;->apply(Lonyx/org/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method
