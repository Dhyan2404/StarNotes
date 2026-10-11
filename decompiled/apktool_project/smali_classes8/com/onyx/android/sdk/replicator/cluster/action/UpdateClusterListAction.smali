.class public final Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;
.super Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction<",
        "Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateClusterListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateClusterListAction.kt\ncom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1549#2:110\n1620#2,3:111\n766#2:114\n857#2,2:115\n1549#2:117\n1620#2,3:118\n*S KotlinDebug\n*F\n+ 1 UpdateClusterListAction.kt\ncom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction\n*L\n69#1:110\n69#1:111,3\n84#1:114\n84#1:115,2\n85#1:117\n85#1:118,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0002J\u001c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00100\n2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J \u0010\u0015\u001a\u00020\u00142\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0002J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R$\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00148\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;",
        "Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "indexHost",
        "Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;",
        "l",
        "request",
        "q",
        "",
        "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
        "clusterBeans",
        "",
        "p",
        "",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "cloudClusterList",
        "n",
        "region",
        "",
        "m",
        "o",
        "<set-?>",
        "e",
        "Z",
        "isUpdated",
        "()Z",
        "f",
        "curClusterChanged",
        "<init>",
        "()V",
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
        "SMAP\nUpdateClusterListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateClusterListAction.kt\ncom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1549#2:110\n1620#2,3:111\n766#2:114\n857#2,2:115\n1549#2:117\n1620#2,3:118\n*S KotlinDebug\n*F\n+ 1 UpdateClusterListAction.kt\ncom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction\n*L\n69#1:110\n69#1:111,3\n84#1:114\n84#1:115,2\n85#1:117\n85#1:118,3\n*E\n"
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/cluster/action/BaseClusterAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$getClusterList(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->l(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$logoutWhenCurClusterChanged(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;)Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->q(Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;)Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->ensureLoadObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$a;->e:Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$a;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$b;->e:Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$b;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$c;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$d;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$e;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$f;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$g;->e:Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$g;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$h;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$h;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isUpdated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->e:Z

    return p0
.end method

.method public final l(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->execute()V

    return-object p0
.end method

.method public final m(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getRegion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final n(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterConstant;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getTEST_SERVER_FILE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterConstant;->getTEST_SERVER_FILE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$loadFromTestClusterFile$serverInfoList$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$loadFromTestClusterFile$serverInfoList$1;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->m(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->fromClusterBean(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->f:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "logoutWhenCurClusterChanged"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;->setLogoutReason(I)Lcom/onyx/android/sdk/replicator/account/action/LogoutOnyxAccountAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$i;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction$i;-><init>(Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->e:Z

    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getClusterList()Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    move-result-object v1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    sget-object v4, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->Companion:Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo$Companion;->fromClusterBean(Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->n(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->addClusterList(Ljava/util/Collection;Z)V

    sget-object p1, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurClusterId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->checkCurClusterId(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->f:Z

    sget-object p0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-class p1, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;

    const-string v0, "resolveResult: cluster list updated"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;)Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->getResult()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/cluster/action/UpdateClusterListAction;->p(Ljava/util/List;)V

    return-object p0
.end method
