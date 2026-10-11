.class public final Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveSyncProgressAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSyncProgressAction.kt\ncom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n372#2,7:71\n1855#3,2:78\n*S KotlinDebug\n*F\n+ 1 SaveSyncProgressAction.kt\ncom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction\n*L\n39#1:71,7\n56#1:78,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J\"\u0010\u000b\u001a\u00020\u00002\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00060\u0004H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H\u0002J4\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00060\u00042\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;",
        "l",
        "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
        "map",
        "m",
        "list",
        "",
        "o",
        "n",
        "Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;",
        "e",
        "Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;",
        "listBean",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSaveSyncProgressAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSyncProgressAction.kt\ncom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n372#2,7:71\n1855#3,2:78\n*S KotlinDebug\n*F\n+ 1 SaveSyncProgressAction.kt\ncom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction\n*L\n39#1:71,7\n56#1:78,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;->e:Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    return-void
.end method

.method public static final synthetic access$handleData(Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;->l()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postEvent(Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;Ljava/util/Map;)Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;->m(Ljava/util/Map;)Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveProgress(Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;->n(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction$a;-><init>(Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction$b;-><init>(Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction$c;-><init>(Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;->e:Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getScope()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final m(Ljava/util/Map;)Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
            ">;>;)",
            "Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/progress/action/SaveSyncProgressAction;->o(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/event/SyncReaderProgressChangedEvent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/replicator/event/SyncReaderProgressChangedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v2, "note"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final n(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/progress/request/SaveSyncProgressRequest;->execute()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;

    sget-object v0, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->getSyncProgressMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
