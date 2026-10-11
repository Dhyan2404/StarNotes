.class public Lcom/sunia/HTREnginev2/inj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/BackendRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/inj$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "BackendRegistry"

.field public static final e:Ljava/lang/String; = "backend:"


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/inj$a;

.field public final b:Lcom/sunia/HTREnginev2/ahe;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/runtime/backends/TransportBackend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sunia/HTREnginev2/ahe;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/inj$a;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/inj$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/sunia/HTREnginev2/inj;-><init>(Lcom/sunia/HTREnginev2/inj$a;Lcom/sunia/HTREnginev2/ahe;)V

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/inj$a;Lcom/sunia/HTREnginev2/ahe;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/inj;->c:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/sunia/HTREnginev2/inj;->a:Lcom/sunia/HTREnginev2/inj$a;

    .line 5
    iput-object p2, p0, Lcom/sunia/HTREnginev2/inj;->b:Lcom/sunia/HTREnginev2/ahe;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/inj;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/inj;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/inj;->a:Lcom/sunia/HTREnginev2/inj$a;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/inj$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/BackendFactory;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sunia/HTREnginev2/inj;->b:Lcom/sunia/HTREnginev2/ahe;

    invoke-virtual {v1, p1}, Lcom/sunia/HTREnginev2/ahe;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/CreationContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/BackendFactory;->create(Lcom/google/android/datatransport/runtime/backends/CreationContext;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/inj;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
