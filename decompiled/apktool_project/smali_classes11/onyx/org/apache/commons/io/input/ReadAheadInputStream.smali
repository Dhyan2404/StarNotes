.class public Lonyx/org/apache/commons/io/input/ReadAheadInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final synthetic t:Z


# instance fields
.field public final e:Ljava/util/concurrent/locks/ReentrantLock;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/Throwable;

.field public l:Z

.field public m:Z

.field public n:Z

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/ExecutorService;

.field public final q:Z

.field public final r:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wcl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wcl;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->s:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i0()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V
    .locals 1

    const-string v0, "inputStream"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->r:Ljava/util/concurrent/locks/Condition;

    if-lez p2, :cond_0

    const-string p1, "executorService"

    .line 8
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->p:Ljava/util/concurrent/ExecutorService;

    .line 9
    iput-boolean p4, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->q:Z

    .line 10
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    .line 12
    iget-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bufferSizeInBytes should be greater than 0, but the value is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;ZLonyx/org/apache/commons/io/input/ReadAheadInputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method public static synthetic H()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i0()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic f(Lonyx/org/apache/commons/io/input/ReadAheadInputStream;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f0([B)V

    return-void
.end method

.method private synthetic f0([B)V
    .locals 6

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    array-length v2, p1

    move v3, v1

    move v4, v3

    :cond_1
    :try_start_2
    iget-object v5, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5, p1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v3, v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_3

    iget-object v5, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_3
    iget-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->h:Z

    :goto_1
    iput-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i:Z

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->k0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    instance-of v2, p1, Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_7

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_6

    instance-of v2, p1, Ljava/io/EOFException;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->j:Z

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->k:Ljava/lang/Throwable;

    goto :goto_3

    :cond_6
    :goto_2
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->h:Z

    :goto_3
    iput-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i:Z

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->k0()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    iget-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->M()V

    return-void

    :catchall_2
    move-exception p1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_7
    :try_start_6
    move-object v2, p1

    check-cast v2, Ljava/lang/Error;

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    iget-object v5, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_7
    iget-object v5, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-ltz v4, :cond_8

    instance-of v3, p1, Ljava/io/EOFException;

    if-nez v3, :cond_8

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->j:Z

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->k:Ljava/lang/Throwable;

    goto :goto_5

    :cond_8
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->h:Z

    :goto_5
    iput-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i:Z

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->k0()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object p1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->M()V

    throw v2

    :catchall_4
    move-exception p1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_5
    move-exception p1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public static synthetic g0()[B
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    return-object v0
.end method

.method public static h0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "commons-io-read-ahead"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static i0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ycl;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/ycl;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->h0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w()[B
    .locals 1

    invoke-static {}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g0()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final I()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->k:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->k:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->n:Z

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->l:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_1

    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->l:Z

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->n:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->q:Z

    if-eqz v1, :cond_3

    :try_start_2
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->p:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->p:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    :cond_2
    throw v1

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final e0()Z
    .locals 1

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->h:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->I()V

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sunia/HTREnginev2/adl;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/adl;-><init>(Lonyx/org/apache/commons/io/input/ReadAheadInputStream;[B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final k0()V
    .locals 1

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->r:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final l0(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->n0()V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    long-to-int v0, p1

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->m0()V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->j0()V

    return-wide p1

    :cond_1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->j0()V

    add-long/2addr v2, p1

    return-wide v2
.end method

.method public final m0()V
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final n0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->r:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->I()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :catchall_2
    move-exception v0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 3
    :cond_0
    sget-object v0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    .line 4
    aput-byte v1, v0, v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->read([BII)I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-byte p0, v0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_0
    return v2
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    .line 6
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->n0()V

    .line 10
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->j0()V

    .line 12
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->n0()V

    .line 13
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 14
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p0, -0x1

    return p0

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->m0()V

    .line 16
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->j0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 18
    throw p1

    .line 19
    :cond_2
    :goto_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 20
    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f:Ljava/nio/ByteBuffer;

    long-to-int v0, p1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1

    :cond_1
    iget-object v0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->l0(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
