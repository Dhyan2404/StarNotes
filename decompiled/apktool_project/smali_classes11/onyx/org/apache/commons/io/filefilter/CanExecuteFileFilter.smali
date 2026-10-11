.class public Lonyx/org/apache/commons/io/filefilter/CanExecuteFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_EXECUTE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_EXECUTE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x2c214a929094a84dL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/CanExecuteFileFilter;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/filefilter/CanExecuteFileFilter;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/CanExecuteFileFilter;->CAN_EXECUTE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->negate()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/CanExecuteFileFilter;->CANNOT_EXECUTE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/nio/file/Files;->isExecutable(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
