.class public interface abstract Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/io/FilenameFilter;
.implements Lonyx/org/apache/commons/io/file/PathFilter;
.implements Ljava/nio/file/PathMatcher;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-interface {p0, p1}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toDefaultFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public abstract accept(Ljava/io/File;)Z
.end method

.method public abstract accept(Ljava/io/File;Ljava/lang/String;)Z
.end method

.method public and(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public matches(Ljava/nio/file/Path;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    sget-object p1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public negate()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/NotFileFilter;-><init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public or(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method
