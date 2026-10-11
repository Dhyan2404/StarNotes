.class Lcom/couchbase/lite/internal/exec/CleanerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;,
        Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/couchbase/lite/LogDomain;


# instance fields
.field private final alive:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "alive"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;",
            ">;"
        }
    .end annotation
.end field

.field private final cleanerName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private cleanerThread:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private maxSize:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "alive"
    .end annotation
.end field

.field private minSize:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "alive"
    .end annotation
.end field

.field private final shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private threadId:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final timeoutMs:I

.field private final zombies:Ljava/lang/ref/ReferenceQueue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->LOG:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->zombies:Ljava/lang/ref/ReferenceQueue;

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerName:Ljava/lang/String;

    iput p2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->timeoutMs:I

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->lambda$getStats$0(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Lcom/couchbase/lite/LogDomain;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->LOG:Lcom/couchbase/lite/LogDomain;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerThread:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/couchbase/lite/internal/exec/CleanerImpl;Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;)Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerThread:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->zombies:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/couchbase/lite/internal/exec/CleanerImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/couchbase/lite/internal/exec/CleanerImpl;)I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->minSize:I

    return p0
.end method

.method public static synthetic access$702(Lcom/couchbase/lite/internal/exec/CleanerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->minSize:I

    return p1
.end method

.method private static synthetic lambda$getStats$0(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-static {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;->access$800(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getNextZombie()Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->zombies:Ljava/lang/ref/ReferenceQueue;

    iget p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->timeoutMs:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStats()Lcom/couchbase/lite/internal/exec/Cleaner$Stats;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    new-instance v7, Lcom/couchbase/lite/internal/exec/Cleaner$Stats;

    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerThread:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;->getRuntimeNanos()J

    move-result-wide v1

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->minSize:I

    iget v5, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->maxSize:I

    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    new-instance v6, Lcom/couchbase/lite/internal/exec/c;

    invoke-direct {v6}, Lcom/couchbase/lite/internal/exec/c;-><init>()V

    invoke-static {v1, v6}, Lcom/couchbase/lite/internal/utils/Fn;->mapToList(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/util/List;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/couchbase/lite/internal/exec/Cleaner$Stats;-><init>(JIILjava/util/List;)V

    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->minSize:I

    iput v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->maxSize:I

    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isStopped()Z
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerThread:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final register(Ljava/lang/Object;Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;)Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;-><init>(Lcom/couchbase/lite/internal/exec/CleanerImpl;Ljava/lang/Object;Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;)V

    iget-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->alive:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    iget v1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->maxSize:I

    if-le p2, v1, :cond_0

    iput p2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->maxSize:I

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p1, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerThread:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->startCleaner()V

    :cond_1
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :try_start_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p2, "Attempt to register a duplicate CleanableRef"

    invoke-direct {p0, p2}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Attempt to register with a closed cleaner"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startCleaner()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->threadId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->threadId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;-><init>(Lcom/couchbase/lite/internal/exec/CleanerImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->cleanerThread:Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stopCleaner()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CleanerImpl;->shouldStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
