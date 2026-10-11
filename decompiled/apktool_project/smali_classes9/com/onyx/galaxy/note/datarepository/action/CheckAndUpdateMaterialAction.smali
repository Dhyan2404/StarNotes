.class public final Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckAndUpdateMaterialAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n766#2:129\n857#2,2:130\n766#2:132\n857#2,2:133\n1855#2:135\n288#2,2:136\n1856#2:138\n*S KotlinDebug\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction\n*L\n50#1:125\n50#1:126,3\n59#1:129\n59#1:130,2\n69#1:132\n69#1:133,2\n108#1:135\n110#1:136,2\n108#1:138\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\"\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00040\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002J\u001a\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002J\u0014\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00022\u0006\u0010\r\u001a\u00020\u0008H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;",
        "o",
        "models",
        "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
        "l",
        "resourceList",
        "n",
        "q",
        "library",
        "r",
        "resource",
        "p",
        "m",
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
        "SMAP\nCheckAndUpdateMaterialAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n766#2:129\n857#2,2:130\n766#2:132\n857#2,2:133\n1855#2:135\n288#2,2:136\n1856#2:138\n*S KotlinDebug\n*F\n+ 1 CheckAndUpdateMaterialAction.kt\ncom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction\n*L\n50#1:125\n50#1:126,3\n59#1:129\n59#1:130,2\n69#1:132\n69#1:133,2\n108#1:135\n110#1:136,2\n108#1:138\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkResource(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadResource(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->m(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleDeleteResource(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadMaterialRecord(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->o()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadResourceUrl(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->p(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateLocalResource(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->q(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateResource(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;->r(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$a;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$b;->e:Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$c;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$d;->e:Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$e;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$f;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$g;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/bean/ResourceItemArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;->getResourceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;->getVersion()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/onyx/galaxy/note/datarepository/bean/ResourceItemArgs;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v1, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;

    new-instance v1, Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;->batchUpdateResource(Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;)Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/Items;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/Items;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->isDownloadComplete(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/DownloadTaskAction;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$h;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$h;-><init>(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;>;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$i;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$i;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/MaterialAddRecordModel;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserDataRepositoryProvider()Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/DataRepositoryProvider;->loadAllMaterialAddRecord()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getResourceType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TEMPLATE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;->loadTemplateAttachment(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/Items;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/Items;->getItems()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "STICKER"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;->loadStickerAttachment(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/account/bean/Items;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/Items;->getItems()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->getAttachments()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    check-cast v3, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method public final q(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;->isDeleted()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$j;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$j;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "concatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$k;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$k;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;->e:Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$l;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$m;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$m;-><init>(Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$n;->e:Lcom/onyx/galaxy/note/datarepository/action/CheckAndUpdateMaterialAction$n;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
