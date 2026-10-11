.class public final Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchNotificationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchNotificationAction.kt\ncom/onyx/galaxy/note/message/action/FetchNotificationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1549#2:55\n1620#2,3:56\n*S KotlinDebug\n*F\n+ 1 FetchNotificationAction.kt\ncom/onyx/galaxy/note/message/action/FetchNotificationAction\n*L\n46#1:55\n46#1:56,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0016\u0010\n\u001a\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "",
        "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
        "m",
        "models",
        "n",
        "Lcom/onyx/galaxy/note/message/cloud/MessageService;",
        "e",
        "Lcom/onyx/galaxy/note/message/cloud/MessageService;",
        "service",
        "<init>",
        "()V",
        "note_overseasRelease"
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
        "SMAP\nFetchNotificationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchNotificationAction.kt\ncom/onyx/galaxy/note/message/action/FetchNotificationAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1549#2:55\n1620#2,3:56\n*S KotlinDebug\n*F\n+ 1 FetchNotificationAction.kt\ncom/onyx/galaxy/note/message/action/FetchNotificationAction\n*L\n46#1:55\n46#1:56,3\n*E\n"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/galaxy/note/message/cloud/MessageService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$createService(Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;->l()V

    return-void
.end method

.method public static final synthetic access$queryUserNotifications(Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;->m()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveToLocal(Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;->n(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->hasSynced(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getNetworkScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$a;-><init>(Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$b;-><init>(Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$c;-><init>(Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$d;->e:Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$e;->e:Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$e;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction$f;-><init>(Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/galaxy/note/message/cloud/MessageService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/message/cloud/MessageService;

    iput-object v0, p0, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;->e:Lcom/onyx/galaxy/note/message/cloud/MessageService;

    return-void
.end method

.method public final m()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    iget-object p0, p0, Lcom/onyx/galaxy/note/message/action/FetchNotificationAction;->e:Lcom/onyx/galaxy/note/message/cloud/MessageService;

    if-nez p0, :cond_0

    const-string p0, "service"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/MarketUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MarketUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/MarketUtils;->getMarketChannel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/PackageUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PackageUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/PackageUtils;->getAppVersionCode()J

    move-result-wide v2

    sget-object v4, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getNoteLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/onyx/galaxy/note/message/cloud/MessageService;->getActivityNotifications(Ljava/lang/String;JLjava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/message/data/UserNotification;

    invoke-static {v1}, Lcom/onyx/galaxy/note/message/data/MessageDataKt;->convertToLocal(Lcom/onyx/galaxy/note/message/data/UserNotification;)Lcom/onyx/android/sdk/data/message/model/NotificationModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/message/model/NotificationModel;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserNotificationProvider()Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;->deleteAll()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;->saveAll(Ljava/util/List;)V

    return-void
.end method
