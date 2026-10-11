.class public Lcom/sunia/HTREnginev2/a5n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljavax/imageio/spi/ServiceRegistry;

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ljavax/imageio/spi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/imageio/spi/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/imageio/spi/c;

    invoke-direct {v0}, Ljavax/imageio/spi/c;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->c:Ljavax/imageio/spi/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->e:Ljava/util/Map;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a5n;->a:Ljavax/imageio/spi/ServiceRegistry;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/a5n;->b:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/a5n;Ljavax/imageio/spi/RegisterableService;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/a5n;->g(Ljavax/imageio/spi/RegisterableService;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g(Ljavax/imageio/spi/RegisterableService;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->a:Ljavax/imageio/spi/ServiceRegistry;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a5n;->b:Ljava/lang/Class;

    invoke-interface {p1, v0, p0}, Ljavax/imageio/spi/RegisterableService;->onDeregistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    instance-of v2, v1, Ljavax/imageio/spi/RegisterableService;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavax/imageio/spi/RegisterableService;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/a5n;->e:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/AccessControlContext;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_1
    new-instance v3, Lcom/sunia/HTREnginev2/z4n;

    invoke-direct {v3, p0, v2}, Lcom/sunia/HTREnginev2/z4n;-><init>(Lcom/sunia/HTREnginev2/a5n;Ljavax/imageio/spi/RegisterableService;)V

    invoke-static {v3, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->c:Ljavax/imageio/spi/c;

    invoke-virtual {v0}, Ljavax/imageio/spi/c;->clear()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->c:Ljavax/imageio/spi/c;

    invoke-virtual {v0, p1}, Ljavax/imageio/spi/c;->remove(Ljava/lang/Object;)Z

    instance-of v0, p1, Ljavax/imageio/spi/RegisterableService;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/imageio/spi/RegisterableService;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->a:Ljavax/imageio/spi/ServiceRegistry;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/a5n;->b:Ljava/lang/Class;

    invoke-interface {p1, v0, v1}, Ljavax/imageio/spi/RegisterableService;->onDeregistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Z)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/a5n;->c:Ljavax/imageio/spi/c;

    invoke-virtual {p1}, Ljavax/imageio/spi/c;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finalize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/a5n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Ljava/lang/Object;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/a5n;->d(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->c:Ljavax/imageio/spi/c;

    invoke-virtual {v0, p1}, Ljavax/imageio/spi/c;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Ljavax/imageio/spi/RegisterableService;

    if-eqz v0, :cond_2

    check-cast p1, Ljavax/imageio/spi/RegisterableService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->a:Ljavax/imageio/spi/ServiceRegistry;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/a5n;->b:Ljava/lang/Class;

    invoke-interface {p1, v0, v3}, Ljavax/imageio/spi/RegisterableService;->onRegistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Caught and handled this exception :"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    xor-int/lit8 p1, v2, 0x1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->c:Ljavax/imageio/spi/c;

    invoke-virtual {v0, p1, p2}, Ljavax/imageio/spi/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/a5n;->c:Ljavax/imageio/spi/c;

    invoke-virtual {v0, p1, p2}, Ljavax/imageio/spi/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
