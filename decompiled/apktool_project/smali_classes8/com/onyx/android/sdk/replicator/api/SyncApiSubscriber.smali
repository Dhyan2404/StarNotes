.class public final Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000cH\u0007J\u0006\u0010\r\u001a\u00020\u0004\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;",
        "",
        "()V",
        "onSaveNoteTreeEvent",
        "",
        "event",
        "Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;",
        "onSyncChangedNoteTreeEvent",
        "Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;",
        "onSyncForceDeletedNoteTreeEvent",
        "Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;",
        "onSyncNoteTreeEvent",
        "Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;",
        "start",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSaveNoteTreeEvent(Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save note tree size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;->getSyncNoteTreeBean()Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;->getNoteModels()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;->getSyncNoteTreeBean()Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/note/action/SaveNoteTreeAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSyncChangedNoteTreeEvent(Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;)V
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;->getDocIdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudAutoSyncOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare sync doc size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;->getDocIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncAll(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;->getDocIdList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->setSyncDocIdList(Ljava/util/List;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSyncForceDeletedNoteTreeEvent(Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;->getDocIdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare sync force deleted doc size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;->getDocIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;->getDocIdList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v2, p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeForceRemoveNoteDataAction;-><init>(Ljava/util/List;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSyncNoteTreeEvent(Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync note tree size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;->getSyncNoteTreeBean()Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;->getNoteModels()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/utils/KSyncLogUtils;->d(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/action/SyncNoteTreeAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;->getSyncNoteTreeBean()Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/replicator/note/action/SyncNoteTreeAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/SyncNoteTreeBean;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final start()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    return-void
.end method
