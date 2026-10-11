.class public final Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;
.super Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;",
        "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "mapToBool",
        "n",
        "r",
        "p",
        "s",
        "q",
        "o",
        "",
        "throwable",
        "v",
        "",
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
        "u",
        "",
        "reason",
        "Lcom/onyx/android/sdk/base/common/error/OnyxException;",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;",
        "f",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;",
        "checkArgs",
        "g",
        "Ljava/util/List;",
        "accountPermissionList",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "checkArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    return-void
.end method

.method public static final synthetic access$check(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->n()V

    return-void
.end method

.method public static final synthetic access$showNetworkErrorToast(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->v(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->t(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;)V

    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->updateAccountPermission(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$a;-><init>(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$b;-><init>(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/dtd;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dtd;-><init>(Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Note Sync Fail"

    invoke-virtual {p0, v0, v0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->setIgnorable(Z)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    return-object p0
.end method

.method public final mapToBool()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$c;->e:Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$c;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$d;->e:Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction$d;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "onErrorReturn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->r()V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->getCheckWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->s()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->getCheckConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->p()V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->getCheckPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->q()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->getCheckSpace()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->o()V

    :cond_3
    return-void
.end method

.method public final o()V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->setRecalculate(Z)Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/UpdateUserStorageRequest;->execute()Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->getStorageLeft()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;->getStorageRed()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3112e

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->m(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final p()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudAutoSyncOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3112b

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->m(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final q()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->canSync()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->hasPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->u()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;->hasCloudSyncPermission(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, 0x3112d

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->m(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final r()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x3112a

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->m(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final s()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x31130

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->m(I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/FetchAccountPermissionRequest;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchAccountPermissionRequest;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/FetchAccountPermissionRequest;->execute()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->g:Ljava/util/List;

    return-object v0
.end method

.method public final v(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->getShowNetworkErrorToast()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of p0, p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Timeout"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/data/R$string;->network_error_tips:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
