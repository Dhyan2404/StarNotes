.class public Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final b:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CVS"

    invoke-static {v2}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->and([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    sput-object v1, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->a:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    new-array v0, v0, [Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ".svn"

    invoke-static {v1}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->and([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->b:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/util/stream/Stream<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/stream/Collector<",
            "-",
            "Ljava/io/File;",
            "TA;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/vgg;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vgg;-><init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ageFileFilter(J)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 5
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 6
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 3
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 4
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static varargs and([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;

    invoke-static {p0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->toList([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static andFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/filefilter/FileFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static filter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)[Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->filterList(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lonyx/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0
.end method

.method public static varargs filter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;
    .locals 1

    const-string v0, "filter"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lonyx/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->a(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object p1, Lonyx/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;

    return-object p0
.end method

.method public static filterList(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->a(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static varargs filterList(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->filter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filterSet(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->a(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static varargs filterSet(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->filter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 3
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;J)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 4
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static magicNumberFileFilter([B)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([B)V

    return-object v0
.end method

.method public static magicNumberFileFilter([BJ)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-object v0
.end method

.method public static makeCVSAware(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->a:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    sget-object v1, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->a:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    aput-object v1, v0, p0

    invoke-static {v0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->and([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static makeDirectoryOnly(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lonyx/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object p0

    :cond_0
    sget-object v0, Lonyx/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->and(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p0

    return-object p0
.end method

.method public static makeFileOnly(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lonyx/org/apache/commons/io/filefilter/FileFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object p0

    :cond_0
    sget-object v0, Lonyx/org/apache/commons/io/filefilter/FileFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->and(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p0

    return-object p0
.end method

.method public static makeSVNAware(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->b:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    sget-object v1, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->b:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    aput-object v1, v0, p0

    invoke-static {v0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->and([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static nameFileFilter(Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nameFileFilter(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static notFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 0

    invoke-interface {p0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->negate()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs or([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;

    invoke-static {p0}, Lonyx/org/apache/commons/io/filefilter/FileFilterUtils;->toList([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static orFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;-><init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 3

    new-instance v0, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    new-instance p0, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;

    const-wide/16 v1, 0x1

    add-long/2addr p2, v1

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lonyx/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    invoke-interface {v0, p0}, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->and(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object p0

    return-object p0
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static suffixFileFilter(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;Lonyx/org/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static varargs toList([Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/wgg;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wgg;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static trueFileFilter()Lonyx/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method
