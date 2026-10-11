.class public final Lcom/tencent/beacon/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/tencent/beacon/a/a/b;


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/tencent/beacon/a/a/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/tencent/beacon/a/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/a/a/b;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/beacon/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/a/a/b;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/a/a/b;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/a/a/b;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static a()Lcom/tencent/beacon/a/a/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/a/a/b;->a:Lcom/tencent/beacon/a/a/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/beacon/a/a/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/a/a/b;->a:Lcom/tencent/beacon/a/a/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/beacon/a/a/b;

    invoke-direct {v1}, Lcom/tencent/beacon/a/a/b;-><init>()V

    sput-object v1, Lcom/tencent/beacon/a/a/b;->a:Lcom/tencent/beacon/a/a/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/beacon/a/a/b;->a:Lcom/tencent/beacon/a/a/b;

    return-object v0
.end method

.method private b(I)Ljava/lang/Object;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/a/a/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/tencent/beacon/a/a/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object p0, p0, Lcom/tencent/beacon/a/a/b;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/beacon/a/a/d;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/tencent/beacon/a/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Lcom/tencent/beacon/a/a/c;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/a/b;->d(Lcom/tencent/beacon/a/a/c;)V

    .line 2
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/beacon/a/a/b;->b(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p1, Lcom/tencent/beacon/a/a/c;->a:I

    invoke-direct {p0, v1}, Lcom/tencent/beacon/a/a/b;->c(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/a/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-interface {v2, p1}, Lcom/tencent/beacon/a/a/d;->a(Lcom/tencent/beacon/a/a/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 7
    :try_start_2
    invoke-static {v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 8
    iget-object v3, p0, Lcom/tencent/beacon/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v4, "512"

    const-string v5, "dispatchEvent error"

    .line 10
    :try_start_3
    invoke-virtual {v3, v4, v5, v2}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private d(Lcom/tencent/beacon/a/a/c;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/a/b;->b(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/tencent/beacon/a/a/b;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(ILcom/tencent/beacon/a/a/d;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/a/b;->b(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tencent/beacon/a/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/tencent/beacon/a/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lcom/tencent/beacon/a/a/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/a/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    invoke-interface {p2, v2}, Lcom/tencent/beacon/a/a/d;->a(Lcom/tencent/beacon/a/a/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 17
    :try_start_2
    invoke-static {v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x6

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc

    if-ne p1, p2, :cond_4

    .line 18
    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/a/a/b;->a(I)V

    .line 19
    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 2
    .param p1    # Lcom/tencent/beacon/a/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/a/a/a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/beacon/a/a/a;-><init>(Lcom/tencent/beacon/a/a/b;Lcom/tencent/beacon/a/a/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/tencent/beacon/a/a/c;)V
    .locals 5
    .param p1    # Lcom/tencent/beacon/a/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/beacon/a/a/b;->b(I)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/tencent/beacon/a/a/c;

    iget v2, p1, Lcom/tencent/beacon/a/a/c;->a:I

    iget-object v3, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    .line 3
    iget-object v2, p0, Lcom/tencent/beacon/a/a/b;->d:Landroid/util/SparseArray;

    iget v3, v1, Lcom/tencent/beacon/a/a/c;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/tencent/beacon/a/a/b;->d:Landroid/util/SparseArray;

    iget v4, v1, Lcom/tencent/beacon/a/a/c;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/a/b;->c(Lcom/tencent/beacon/a/a/c;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
