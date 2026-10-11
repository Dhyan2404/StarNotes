.class public final Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;
.super Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetClusterListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetClusterListRequest.kt\ncom/onyx/android/sdk/data/cluster/request/GetClusterListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n766#2:50\n857#2,2:51\n*S KotlinDebug\n*F\n+ 1 GetClusterListRequest.kt\ncom/onyx/android/sdk/data/cluster/request/GetClusterListRequest\n*L\n46#1:50\n46#1:51,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;",
        "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;",
        "apiHost",
        "",
        "(Ljava/lang/String;)V",
        "clusterBeans",
        "",
        "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
        "checkClusterData",
        "",
        "result",
        "execute",
        "getResult",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGetClusterListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetClusterListRequest.kt\ncom/onyx/android/sdk/data/cluster/request/GetClusterListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n766#2:50\n857#2,2:51\n*S KotlinDebug\n*F\n+ 1 GetClusterListRequest.kt\ncom/onyx/android/sdk/data/cluster/request/GetClusterListRequest\n*L\n46#1:50\n46#1:51,2\n*E\n"
    }
.end annotation


# instance fields
.field private apiHost:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clusterBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "apiHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->apiHost:Ljava/lang/String;

    return-void
.end method

.method private final checkClusterData(Ljava/util/List;)V
    .locals 3
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
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->clusterBeans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->apiHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getIndexService(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "getDefault(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->getLocaleStr(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;->getSSLServerInfos(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->executeCall(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->getCheckedBody(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/cluster/bean/ClusterResultBean;

    .line 6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/bean/ClusterResultBean;->getData()Lcom/onyx/android/sdk/data/cluster/bean/ClusterListBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/bean/ClusterListBean;->getResults()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->checkClusterData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final getResult()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/cluster/bean/ClusterBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/request/GetClusterListRequest;->clusterBeans:Ljava/util/List;

    return-object p0
.end method
