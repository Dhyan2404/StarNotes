.class public final Lcom/onyx/android/sdk/data/cluster/model/ClusterList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClusterList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterList.kt\ncom/onyx/android/sdk/data/cluster/model/ClusterList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 ClusterList.kt\ncom/onyx/android/sdk/data/cluster/model/ClusterList\n*L\n33#1:115,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J \u0010\u000f\u001a\u00020\r2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0005H\u0007J\u0006\u0010\u0012\u001a\u00020\rJ\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0007J\u0006\u0010\u001a\u001a\u00020\u0013J\u0006\u0010\u001b\u001a\u00020\u0013J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001d\u001a\u00020\u0005H\u0007J\u0006\u0010\u001e\u001a\u00020\rJ\u001a\u0010\u001f\u001a\u00020\r2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060 J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterList;",
        "",
        "()V",
        "clusterMap",
        "",
        "",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "curClusterId",
        "getCurClusterId",
        "()Ljava/lang/String;",
        "setCurClusterId",
        "(Ljava/lang/String;)V",
        "addCluster",
        "",
        "clusterInfo",
        "addClusterList",
        "list",
        "",
        "clear",
        "",
        "checkCurClusterId",
        "getClusterMap",
        "",
        "getClusterMapSize",
        "",
        "getFirstClusterInfo",
        "isEmptyList",
        "isNotBlank",
        "loadClusterInfo",
        "clusterId",
        "printLog",
        "setClusterMap",
        "Ljava/util/LinkedHashMap;",
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
        "SMAP\nClusterList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClusterList.kt\ncom/onyx/android/sdk/data/cluster/model/ClusterList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 ClusterList.kt\ncom/onyx/android/sdk/data/cluster/model/ClusterList\n*L\n33#1:115,2\n*E\n"
    }
.end annotation


# instance fields
.field private clusterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curClusterId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addCluster(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addClusterList(Ljava/util/Collection;Z)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clear()V

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->addCluster(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final checkCurClusterId(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "curClusterId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-class v1, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCurClusterId src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->isTestCluster(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->isCBTestCluster(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getFirstClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    if-nez v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getFirstClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;->getClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->setCurClusterId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCurClusterId dst: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getClusterMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getClusterMapSize()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final getCurClusterId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->curClusterId:Ljava/lang/String;

    return-object p0
.end method

.method public final getFirstClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getClusterMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getClusterMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final isEmptyList()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public final isNotBlank()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->curClusterId:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final loadClusterInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "clusterId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->getClusterMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    return-object p0
.end method

.method public final printLog()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-class v2, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curClusterId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->curClusterId:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", list: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final setClusterMap(Ljava/util/LinkedHashMap;)V
    .locals 1
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clusterMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->clusterMap:Ljava/util/Map;

    return-void
.end method

.method public final setCurClusterId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/cluster/model/ClusterList;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "curClusterId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->curClusterId:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterUtils;

    const-class v1, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurClusterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/data/cluster/ClusterUtils;->i(Ljava/lang/Class;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setCurClusterId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/model/ClusterList;->curClusterId:Ljava/lang/String;

    return-void
.end method
