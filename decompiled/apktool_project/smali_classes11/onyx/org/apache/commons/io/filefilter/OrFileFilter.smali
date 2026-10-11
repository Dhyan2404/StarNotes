.class public Lonyx/org/apache/commons/io/filefilter/OrFileFilter;
.super Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/filefilter/ConditionalFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x500b3cf678dd2691L


# instance fields
.field private final fileFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    const-string v0, "initialList"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "fileFilters"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    .line 9
    invoke-virtual {p0, p2}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-void
.end method

.method public varargs constructor <init>([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    const-string v0, "fileFilters"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    array-length v0, v0

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(I)V

    .line 6
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->addFileFilter([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->lambda$accept$1(Ljava/io/File;Ljava/lang/String;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/io/File;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->lambda$accept$0(Ljava/io/File;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->lambda$accept$2(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$accept$0(Ljava/io/File;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
    .locals 0

    invoke-interface {p1, p0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$accept$1(Ljava/io/File;Ljava/lang/String;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
    .locals 0

    invoke-interface {p2, p0, p1}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$accept$2(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
    .locals 0

    invoke-interface {p2, p0, p1}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 3
    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/uhk;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/uhk;-><init>(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toDefaultFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/shk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/shk;-><init>(Ljava/io/File;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/vhk;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/vhk;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public addFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    const-string v0, "fileFilter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addFileFilter([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    const-string v0, "fileFilters"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/thk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/thk;-><init>(Lonyx/org/apache/commons/io/filefilter/OrFileFilter;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getFileFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setFileFilters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    const-string v0, "fileFilters"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lonyx/org/apache/commons/io/filefilter/AbstractFileFilter;->append(Ljava/util/List;Ljava/lang/StringBuilder;)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
