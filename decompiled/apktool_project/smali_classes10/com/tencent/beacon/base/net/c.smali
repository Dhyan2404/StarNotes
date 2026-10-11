.class public final Lcom/tencent/beacon/base/net/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/base/net/e;
.implements Lcom/tencent/beacon/base/net/b/e$a;
.implements Ljava/io/Closeable;


# static fields
.field private static volatile a:Lcom/tencent/beacon/base/net/c;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public e:Lcom/tencent/beacon/base/net/a/a;

.field public f:Lcom/tencent/beacon/base/net/a/b;

.field private g:Landroid/content/Context;

.field private h:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

.field private i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/base/net/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/c;->h()V

    return-void
.end method

.method public static declared-synchronized d()Lcom/tencent/beacon/base/net/c;
    .locals 2

    const-class v0, Lcom/tencent/beacon/base/net/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/beacon/base/net/c;->a:Lcom/tencent/beacon/base/net/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/beacon/base/net/c;

    invoke-direct {v1}, Lcom/tencent/beacon/base/net/c;-><init>()V

    sput-object v1, Lcom/tencent/beacon/base/net/c;->a:Lcom/tencent/beacon/base/net/c;

    :cond_0
    sget-object v1, Lcom/tencent/beacon/base/net/c;->a:Lcom/tencent/beacon/base/net/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private h()V
    .locals 2

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[BeaconNet]"

    const-string v1, "current net connected num: %d"

    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[BeaconNet]"

    const-string v1, "current net connected num: %d"

    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object p1

    sget-object v0, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    if-ne p1, v0, :cond_1

    .line 22
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/beacon/d/b;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->h:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    :goto_0
    return-object p0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->h:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    return-object p0
.end method

.method public a(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;)Lcom/tencent/beacon/base/net/call/c;
    .locals 0

    .line 20
    new-instance p0, Lcom/tencent/beacon/base/net/call/c;

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/call/c;-><init>(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;)V

    return-object p0
.end method

.method public a()V
    .locals 2

    .line 26
    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "[BeaconNet]"

    const-string v1, "network recovery. open BeaconNet."

    .line 27
    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/tencent/beacon/base/net/c;->g:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/tencent/beacon/base/net/adapter/b;

    invoke-direct {p2}, Lcom/tencent/beacon/base/net/adapter/b;-><init>()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/base/net/adapter/h;->a()Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/base/net/c;->h:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    .line 5
    iput-object p2, p0, Lcom/tencent/beacon/base/net/c;->i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    .line 6
    invoke-static {}, Lcom/tencent/beacon/base/net/a/a;->a()Lcom/tencent/beacon/base/net/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/beacon/base/net/c;->e:Lcom/tencent/beacon/base/net/a/a;

    .line 7
    invoke-static {}, Lcom/tencent/beacon/base/net/a/b;->a()Lcom/tencent/beacon/base/net/a/b;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/beacon/base/net/c;->f:Lcom/tencent/beacon/base/net/a/b;

    .line 8
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/net/b/e;->a(Landroid/content/Context;Lcom/tencent/beacon/base/net/b/e$a;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/HttpRequestEntity;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "Lcom/tencent/beacon/base/net/BResponse;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/tencent/beacon/base/net/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance p0, Lcom/tencent/beacon/base/net/d;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->tag()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "BeaconNet close."

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/c;->i()V

    .line 19
    iget-object v0, p0, Lcom/tencent/beacon/base/net/c;->i:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    new-instance v1, Lcom/tencent/beacon/base/net/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/beacon/base/net/b;-><init>(Lcom/tencent/beacon/base/net/c;Lcom/tencent/beacon/base/net/call/HttpRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;->request(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/JceRequestEntity;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/tencent/beacon/base/net/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    new-instance p0, Lcom/tencent/beacon/base/net/d;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "BeaconNet close."

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/base/net/c;->a(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    move-result-object v0

    .line 12
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/c;->i()V

    .line 13
    iget-object v2, p0, Lcom/tencent/beacon/base/net/c;->h:Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 14
    :cond_1
    new-instance v2, Lcom/tencent/beacon/base/net/a;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/tencent/beacon/base/net/a;-><init>(Lcom/tencent/beacon/base/net/c;Lcom/tencent/beacon/base/net/call/JceRequestEntity;ZLcom/tencent/beacon/base/net/call/Callback;)V

    invoke-virtual {v0, p1, v2}, Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;->request(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/base/net/d;)V
    .locals 2
    .param p1    # Lcom/tencent/beacon/base/net/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    iget-object p0, p1, Lcom/tencent/beacon/base/net/d;->a:Ljava/lang/String;

    const-string v0, "atta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/tencent/beacon/base/net/d;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p0

    iget-object v0, p1, Lcom/tencent/beacon/base/net/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/d;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/tencent/beacon/base/net/d;->e:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1, p1}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)Lcom/tencent/beacon/base/net/call/i;
    .locals 0

    .line 1
    new-instance p0, Lcom/tencent/beacon/base/net/call/i;

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/call/i;-><init>(Lcom/tencent/beacon/base/net/call/JceRequestEntity;)V

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "[BeaconNet]"

    const-string v1, "network can\'t use. close BeaconNet."

    .line 3
    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/beacon/base/net/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[BeaconNet]"

    const-string v2, "get current net failure num: %d"

    invoke-static {v1, v2, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 2

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "[BeaconNet]"

    const-string v1, "network can\'t use. close BeaconNet."

    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[BeaconNet]"

    const-string v1, "increase current net failure num: %d"

    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()V
    .locals 1

    iget-object p0, p0, Lcom/tencent/beacon/base/net/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
