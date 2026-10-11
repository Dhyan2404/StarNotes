.class public Lcom/tencent/beacon/module/EventModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/module/BeaconModule;
.implements Lcom/tencent/beacon/a/a/d;
.implements Lcom/tencent/beacon/base/net/b/e$a;
.implements Lcom/tencent/beacon/d/c;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/beacon/event/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/beacon/event/open/BeaconEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Lcom/tencent/beacon/module/StrategyModule;

.field private k:Lcom/tencent/beacon/event/i;

.field private volatile l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/beacon/module/EventModule;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/beacon/module/EventModule;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/beacon/module/EventModule;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/beacon/module/EventModule;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/beacon/module/EventModule;->a(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 10
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "702"

    const-string v2, "real_logid_count=%s&normal_logid_count=%s&appkey=%s"

    const/4 v3, 0x0

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object p1

    .line 17
    filled-new-array {v4, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p1, v1, p0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    .line 21
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v3

    .line 22
    :goto_2
    invoke-static {}, Lcom/tencent/beacon/a/b/i;->e()Lcom/tencent/beacon/a/b/i;

    move-result-object v6

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v6, v1, v0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private b(Lcom/tencent/beacon/event/open/BeaconEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tencent/beacon/module/EventModule;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "logid empty cache count over max , appKey: %s, event: %s"

    .line 4
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object p0

    const-string v0, "518"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/tencent/beacon/module/EventModule;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "logid empty and add to cache , appKey: %s, event: %s"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "we strongly recommend you set appkey when create events."

    .line 2
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/a/c/c;->e()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->d:Ljava/util/List;

    new-instance v1, Lcom/tencent/beacon/event/b/b;

    invoke-direct {v1}, Lcom/tencent/beacon/event/b/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->d:Ljava/util/List;

    new-instance v1, Lcom/tencent/beacon/event/b/a;

    invoke-direct {v1}, Lcom/tencent/beacon/event/b/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/tencent/beacon/module/EventModule;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/beacon/module/EventModule;->d:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/beacon/event/b/c;

    iget-object v2, p0, Lcom/tencent/beacon/module/EventModule;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/beacon/event/b/c;

    invoke-virtual {v1, v2}, Lcom/tencent/beacon/event/b/c;->a(Lcom/tencent/beacon/event/b/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/beacon/event/e;

    invoke-direct {v0}, Lcom/tencent/beacon/event/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    invoke-interface {v0}, Lcom/tencent/beacon/event/i;->a()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/b/b;->a(I)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/beacon/module/EventModule$1;

    invoke-direct {v1, p0}, Lcom/tencent/beacon/module/EventModule$1;-><init>(Lcom/tencent/beacon/module/EventModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;
    .locals 7
    .param p1    # Lcom/tencent/beacon/event/open/BeaconEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "event: %s. go in EventModule"

    const-string v2, "[EventModule]"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "event: %s. EventModule is not enable"

    invoke-static {v2, v1, p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x66

    .line 62
    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/beacon/module/EventModule;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/event/open/BeaconEvent;->setAppKey(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/tencent/beacon/a/c/c;->c()Lcom/tencent/beacon/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/c/c;->b()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-static {v0, v4}, Lcom/tencent/beacon/event/c/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/beacon/event/c/g;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/tencent/beacon/event/c/g;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lcom/tencent/beacon/module/EventModule;->b(Lcom/tencent/beacon/event/open/BeaconEvent;)V

    .line 69
    invoke-static {}, Lcom/tencent/beacon/a/b/b;->a()Lcom/tencent/beacon/a/b/b;

    move-result-object p1

    new-instance v1, Lcom/tencent/beacon/module/EventModule$2;

    invoke-direct {v1, p0, v0}, Lcom/tencent/beacon/module/EventModule$2;-><init>(Lcom/tencent/beacon/module/EventModule;Lcom/tencent/beacon/event/c/g;)V

    invoke-virtual {p1, v1}, Lcom/tencent/beacon/a/b/b;->a(Ljava/lang/Runnable;)V

    const/16 p0, 0x6b

    .line 70
    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/base/util/h;->a(Ljava/util/Map;)V

    .line 72
    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->j:Lcom/tencent/beacon/module/StrategyModule;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/beacon/module/StrategyModule;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/beacon/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "event: %s.  is not allowed in strategy (false)"

    invoke-static {v2, v1, p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x64

    .line 74
    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->isSucceed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->j:Lcom/tencent/beacon/module/StrategyModule;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/beacon/module/StrategyModule;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/beacon/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "event: %s. is sampled by svr rate (false)"

    invoke-static {v2, v1, p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x65

    .line 78
    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->j:Lcom/tencent/beacon/module/StrategyModule;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/beacon/module/StrategyModule;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "appkey: %s, event: %s. is sampled by user"

    .line 83
    invoke-static {v2, v1, p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x6c

    .line 84
    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/event/b/c;

    invoke-virtual {v0, p1}, Lcom/tencent/beacon/event/b/c;->b(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/EventBean;

    move-result-object v0

    if-nez v0, :cond_5

    const/16 p0, 0x69

    .line 86
    invoke-static {p0}, Lcom/tencent/beacon/event/open/EventResult$a;->a(I)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    .line 87
    :cond_5
    invoke-static {}, Lcom/tencent/beacon/a/c/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/tencent/beacon/a/c/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    iget-object v2, p0, Lcom/tencent/beacon/module/EventModule;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    const/16 v4, 0x40

    if-le v2, v4, :cond_6

    .line 89
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "qimei empty cache count over max , appKey: %s, event: %s"

    .line 90
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 91
    invoke-static {v2, v4}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v4, p0, Lcom/tencent/beacon/module/EventModule;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v1

    const-string v4, "510"

    invoke-virtual {v1, v4, v2}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "qimei empty and add to cache , appKey: %s, event: %s"

    .line 96
    invoke-static {v2, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->newBuilder(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "e_q_e_k"

    .line 99
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v1

    new-instance v4, Lcom/tencent/beacon/a/a/c;

    const/16 v5, 0xc

    invoke-direct {v4, v5, v2}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-virtual {v1, v4}, Lcom/tencent/beacon/a/a/b;->a(Lcom/tencent/beacon/a/a/c;)V

    .line 101
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/beacon/event/EventBean;->getEventType()I

    move-result v1

    const/4 v2, 0x3

    const-string v4, "A100"

    if-ne v1, v2, :cond_9

    .line 102
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/beacon/event/open/BeaconReport;->getImmediateReport()Lcom/tencent/beacon/event/immediate/IBeaconImmediateReport;

    move-result-object v2

    const-string v5, "immediateReport"

    .line 103
    invoke-static {v5, v2}, Lcom/tencent/beacon/base/util/h;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    if-eqz v2, :cond_8

    .line 104
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 105
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    invoke-interface {p0, p1, v0}, Lcom/tencent/beacon/event/i;->b(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)V

    .line 106
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/tencent/beacon/event/open/EventResult$a;->a(J)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    :cond_8
    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "immediateReport is null!"

    .line 107
    invoke-static {v5, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v2

    const-string v6, "515"

    invoke-virtual {v2, v6, v5}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 109
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/beacon/event/open/BeaconReport;->getBeaconQuicReport()Lcom/tencent/beacon/event/quic/IBeaconQuicReport;

    move-result-object v1

    const-string v2, "beaconQuicReport"

    .line 110
    invoke-static {v2, v1}, Lcom/tencent/beacon/base/util/h;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    if-eqz v1, :cond_a

    .line 111
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 112
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    invoke-interface {p0, p1, v0}, Lcom/tencent/beacon/event/i;->a(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)V

    .line 113
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/tencent/beacon/event/open/EventResult$a;->a(J)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0

    :cond_a
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "beaconQuicReport is null!"

    .line 114
    invoke-static {v2, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v1

    const-string v3, "471"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_b
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lcom/tencent/beacon/event/i;->c(Ljava/lang/String;Lcom/tencent/beacon/event/EventBean;)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Lcom/tencent/beacon/module/EventModule;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    sget-object p1, Lcom/tencent/beacon/module/EventModule;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/tencent/beacon/module/EventModule;->f()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/tencent/beacon/module/EventModule;->j()V

    .line 3
    sget-object v0, Lcom/tencent/beacon/module/BeaconModule;->a:Ljava/util/Map;

    sget-object v1, Lcom/tencent/beacon/module/ModuleName;->STRATEGY:Lcom/tencent/beacon/module/ModuleName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/module/StrategyModule;

    iput-object v0, p0, Lcom/tencent/beacon/module/EventModule;->j:Lcom/tencent/beacon/module/StrategyModule;

    .line 4
    invoke-direct {p0}, Lcom/tencent/beacon/module/EventModule;->g()V

    .line 5
    invoke-direct {p0}, Lcom/tencent/beacon/module/EventModule;->h()V

    .line 6
    invoke-direct {p0}, Lcom/tencent/beacon/module/EventModule;->i()V

    .line 7
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/net/b/e;->a(Landroid/content/Context;Lcom/tencent/beacon/base/net/b/e$a;)V

    .line 8
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/beacon/d/b;->a(Lcom/tencent/beacon/d/c;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/tencent/beacon/module/EventModule;->l:Z

    return-void
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 4

    .line 25
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_7

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const-string v2, "i_c_ak"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 p0, 0x7

    if-eq v0, p0, :cond_0

    goto/16 :goto_1

    .line 26
    :cond_0
    iget-object p0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string p1, "s_e_e"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 27
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/tencent/beacon/d/b;->a(ZZ)V

    goto/16 :goto_1

    .line 28
    :cond_1
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "b_e"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    instance-of v0, p1, Lcom/tencent/beacon/event/open/BeaconEvent;

    if-eqz v0, :cond_9

    .line 30
    check-cast p1, Lcom/tencent/beacon/event/open/BeaconEvent;

    invoke-virtual {p0, p1}, Lcom/tencent/beacon/module/EventModule;->a(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    goto/16 :goto_1

    .line 31
    :cond_2
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "i_c_o_i"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/module/EventModule;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 34
    :cond_3
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "i_c_u_i"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/module/EventModule;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 37
    :cond_4
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "i_c_ad"

    .line 39
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/tencent/beacon/module/EventModule;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 41
    :cond_5
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "e_l_e_k"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 45
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/beacon/event/open/BeaconEvent;

    .line 46
    invoke-virtual {v1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "logid empty cache report , appKey: %s, event: %s"

    invoke-static {v3, v2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/tencent/beacon/module/EventModule;->a(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    goto :goto_0

    .line 48
    :cond_7
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v0, "e_q_e_k"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/tencent/beacon/event/open/BeaconEvent;

    if-eqz v0, :cond_9

    .line 50
    check-cast p1, Lcom/tencent/beacon/event/open/BeaconEvent;

    .line 51
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "A93"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent;->getCode()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "qimei empty cache report , appKey: %s, event: %s"

    .line 54
    invoke-static {v1, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/beacon/module/EventModule;->a(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    goto :goto_1

    .line 56
    :cond_8
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    invoke-virtual {p1, v2, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/tencent/beacon/module/EventModule;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    sget-object p1, Lcom/tencent/beacon/module/EventModule;->c:Ljava/util/Map;

    invoke-static {p2}, Lcom/tencent/beacon/event/c/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 119
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/beacon/module/EventModule;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    sget-object p1, Lcom/tencent/beacon/module/EventModule;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v3, v2, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "setAdditionalParams error , params.size: can not more than 50"

    .line 123
    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 126
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 127
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    if-nez p2, :cond_4

    move p1, v0

    goto :goto_2

    .line 129
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "setAdditionalParams error , params.size: %s"

    invoke-static {p1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    if-eqz p0, :cond_0

    .line 58
    invoke-interface {p0, p1}, Lcom/tencent/beacon/event/i;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/tencent/beacon/module/EventModule;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    return-object v0

    .line 17
    :cond_0
    sget-object p1, Lcom/tencent/beacon/module/EventModule;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/module/EventModule;->b(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/tencent/beacon/module/EventModule;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    sget-object p1, Lcom/tencent/beacon/module/EventModule;->b:Ljava/util/Map;

    invoke-static {p2}, Lcom/tencent/beacon/event/c/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[EventModule]"

    const-string v2, "pause report by user."

    .line 19
    invoke-static {v1, v2, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0}, Lcom/tencent/beacon/event/i;->a(ZI)V

    .line 21
    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/c;->close()V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/beacon/module/EventModule;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "10000"

    if-eqz p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object p1, Lcom/tencent/beacon/module/EventModule;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 4
    invoke-static {}, Lcom/tencent/beacon/d/b;->b()Lcom/tencent/beacon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/tencent/beacon/module/EventModule;->h()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/beacon/module/EventModule;->f()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/module/EventModule;->b(Z)V

    :goto_0
    return-void
.end method

.method public d()Lcom/tencent/beacon/event/i;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/module/EventModule;->l:Z

    return p0
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[EventModule]"

    const-string v2, "resume report by user."

    invoke-static {v1, v2, v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule;->k:Lcom/tencent/beacon/event/i;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/tencent/beacon/event/i;->a(I)V

    invoke-static {}, Lcom/tencent/beacon/base/net/c;->d()Lcom/tencent/beacon/base/net/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/c;->g()V

    return-void
.end method
