.class public Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x790fa5a385e812f6L


# instance fields
.field private final transient fileFilter:Ljava/io/FileFilter;

.field private final transient fileNameFilter:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Ljava/io/FileFilter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "filter"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileNameFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/FilenameFilter;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "filter"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileNameFilter:Ljava/io/FilenameFilter;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileNameFilter:Ljava/io/FilenameFilter;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;->fileNameFilter:Ljava/io/FilenameFilter;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
