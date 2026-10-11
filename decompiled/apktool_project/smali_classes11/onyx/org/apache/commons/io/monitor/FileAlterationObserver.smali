.class public Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x107266629bcfe480L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final transient fileFilter:Ljava/io/FileFilter;

.field private final transient listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lonyx/org/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lonyx/org/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 1

    .line 3
    new-instance v0, Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p1}, Lonyx/org/apache/commons/io/monitor/FileEntry;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lonyx/org/apache/commons/io/IOCase;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 1

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 1

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lonyx/org/apache/commons/io/IOCase;)V

    return-void
.end method

.method private constructor <init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/monitor/FileEntry;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    const-string v0, "rootEntry"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "rootEntry.getFile()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object p2, Lonyx/org/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    :goto_0
    iput-object p2, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    const-string p1, "comparator"

    .line 10
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/util/Comparator;

    iput-object p3, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lonyx/org/apache/commons/io/IOCase;)V
    .locals 0

    .line 11
    invoke-static {p3}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->toComparator(Lonyx/org/apache/commons/io/IOCase;)Ljava/util/Comparator;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Ljava/util/Comparator;)V

    return-void
.end method

.method public static synthetic a(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->lambda$checkAndNotify$1(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method

.method public static synthetic b(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->lambda$checkAndNotify$0(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method

.method public static synthetic c(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->lambda$fireOnChange$2(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method

.method private checkAndFire(Lonyx/org/apache/commons/io/monitor/FileEntry;[Lonyx/org/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V
    .locals 8

    array-length v0, p3

    if-lez v0, :cond_0

    array-length v0, p3

    new-array v0, v0, [Lonyx/org/apache/commons/io/monitor/FileEntry;

    goto :goto_0

    :cond_0
    sget-object v0, Lonyx/org/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lonyx/org/apache/commons/io/monitor/FileEntry;

    :goto_0
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, p2, v2

    :goto_2
    array-length v5, p3

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v4}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    aget-object v7, p3, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    aget-object v5, p3, v3

    invoke-direct {p0, p1, v5}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-direct {p0, v5}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fireOnCreate(Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    array-length v5, p3

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v4}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    aget-object v7, p3, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, p3, v3

    invoke-direct {p0, v4, v5}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fireOnChange(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    invoke-virtual {v4}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getChildren()[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    aget-object v6, p3, v3

    invoke-direct {p0, v6}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lonyx/org/apache/commons/io/monitor/FileEntry;[Lonyx/org/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getChildren()[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    sget-object v6, Lonyx/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v4, v5, v6}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lonyx/org/apache/commons/io/monitor/FileEntry;[Lonyx/org/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    invoke-direct {p0, v4}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fireOnDelete(Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    array-length p2, p3

    if-ge v3, p2, :cond_4

    aget-object p2, p3, v3

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-direct {p0, p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fireOnCreate(Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->setChildren([Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method private createFileEntry(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 0

    invoke-virtual {p1, p2}, Lonyx/org/apache/commons/io/monitor/FileEntry;->newChildInstance(Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p1

    invoke-virtual {p1, p2}, Lonyx/org/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    invoke-direct {p0, p2, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listFileEntries(Ljava/io/File;Lonyx/org/apache/commons/io/monitor/FileEntry;)[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p0

    invoke-virtual {p1, p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->setChildren([Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    return-object p1
.end method

.method public static synthetic d(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lonyx/org/apache/commons/io/monitor/FileEntry;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->lambda$fireOnDelete$4(Lonyx/org/apache/commons/io/monitor/FileEntry;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/monitor/FileEntry;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->lambda$fireOnCreate$3(Lonyx/org/apache/commons/io/monitor/FileEntry;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    return-void
.end method

.method private fireOnChange(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1, p2}, Lonyx/org/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/kgg;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/kgg;-><init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private fireOnCreate(Lonyx/org/apache/commons/io/monitor/FileEntry;)V
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/ogg;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/ogg;-><init>(Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getChildren()[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/pgg;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pgg;-><init>(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private fireOnDelete(Lonyx/org/apache/commons/io/monitor/FileEntry;)V
    .locals 1

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/hgg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/hgg;-><init>(Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic g(I)[Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->lambda$listFileEntries$6(I)[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fireOnCreate(Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method public static synthetic i(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->lambda$listFileEntries$5(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkAndNotify$0(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onStart(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method

.method private synthetic lambda$checkAndNotify$1(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onStop(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method

.method private static synthetic lambda$fireOnChange$2(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onDirectoryChange(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onFileChange(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$fireOnCreate$3(Lonyx/org/apache/commons/io/monitor/FileEntry;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onDirectoryCreate(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onFileCreate(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$fireOnDelete$4(Lonyx/org/apache/commons/io/monitor/FileEntry;Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onDirectoryDelete(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-interface {p1, p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationListener;->onFileDelete(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$listFileEntries$5(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 0

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$listFileEntries$6(I)[Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 0

    new-array p0, p0, [Lonyx/org/apache/commons/io/monitor/FileEntry;

    return-object p0
.end method

.method private listFileEntries(Ljava/io/File;Lonyx/org/apache/commons/io/monitor/FileEntry;)[Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 1

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/igg;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/igg;-><init>(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/jgg;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/jgg;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lonyx/org/apache/commons/io/monitor/FileEntry;

    return-object p0
.end method

.method private listFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->sort([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lonyx/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    :goto_0
    return-object p0
.end method

.method private sort([Ljava/io/File;)[Ljava/io/File;
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Lonyx/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    return-object p1
.end method

.method private static toComparator(Lonyx/org/apache/commons/io/IOCase;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lonyx/org/apache/commons/io/IOCase;",
            ")",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    sget-object v0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver$a;->a:[I

    sget-object v1, Lonyx/org/apache/commons/io/IOCase;->SYSTEM:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p0, v1}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lonyx/org/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    return-object p0

    :cond_0
    sget-object p0, Lonyx/org/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    return-object p0

    :cond_1
    sget-object p0, Lonyx/org/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    return-object p0
.end method


# virtual methods
.method public addListener(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkAndNotify()V
    .locals 3

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/lgg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lgg;-><init>(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v1}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getChildren()[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object v2

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lonyx/org/apache/commons/io/monitor/FileEntry;[Lonyx/org/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->isExists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getChildren()[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object v1

    sget-object v2, Lonyx/org/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lonyx/org/apache/commons/io/monitor/FileEntry;[Lonyx/org/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/mgg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mgg;-><init>(Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getDirectory()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getFileFilter()Ljava/io/FileFilter;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    return-object p0
.end method

.method public getListeners()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lonyx/org/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lonyx/org/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    iget-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-direct {p0, v1, v2}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listFileEntries(Ljava/io/File;Lonyx/org/apache/commons/io/monitor/FileEntry;)[Lonyx/org/apache/commons/io/monitor/FileEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->setChildren([Lonyx/org/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method public removeListener(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/ngg;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ngg;-><init>(Lonyx/org/apache/commons/io/monitor/FileAlterationListener;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
