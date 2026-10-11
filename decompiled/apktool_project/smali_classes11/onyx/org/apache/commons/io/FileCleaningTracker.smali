.class public Lonyx/org/apache/commons/io/FileCleaningTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/FileCleaningTracker$b;,
        Lonyx/org/apache/commons/io/FileCleaningTracker$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lonyx/org/apache/commons/io/FileCleaningTracker$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->a:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->b:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->e:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lonyx/org/apache/commons/io/FileCleaningTracker$a;

    invoke-direct {v0, p0}, Lonyx/org/apache/commons/io/FileCleaningTracker$a;-><init>(Lonyx/org/apache/commons/io/FileCleaningTracker;)V

    iput-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->b:Ljava/util/Collection;

    new-instance v1, Lonyx/org/apache/commons/io/FileCleaningTracker$b;

    iget-object v2, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p3, p2, v2}, Lonyx/org/apache/commons/io/FileCleaningTracker$b;-><init>(Ljava/lang/String;Lonyx/org/apache/commons/io/FileDeleteStrategy;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No new trackers can be added once exitWhenFinished() is called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exitWhenFinished()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->d:Z

    iget-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeleteFailures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->c:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTrackCount()I
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 1

    const-string v0, "file"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/FileCleaningTracker;->a(Ljava/lang/String;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 1

    const-string v0, "path"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/FileCleaningTracker;->a(Ljava/lang/String;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/nio/file/Path;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lonyx/org/apache/commons/io/FileCleaningTracker;->track(Ljava/nio/file/Path;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method

.method public track(Ljava/nio/file/Path;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V
    .locals 1

    const-string v0, "file"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/FileCleaningTracker;->a(Ljava/lang/String;Ljava/lang/Object;Lonyx/org/apache/commons/io/FileDeleteStrategy;)V

    return-void
.end method
