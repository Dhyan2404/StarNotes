.class public Lonyx/org/apache/commons/io/filefilter/NotFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5517b05cf2c98bb6L


# instance fields
.field private final filter:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "filter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method private not(Ljava/nio/file/FileVisitResult;)Ljava/nio/file/FileVisitResult;
    .locals 0

    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p1, p0, :cond_0

    sget-object p0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 3
    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;->not(Ljava/nio/file/FileVisitResult;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
