.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuerySelectedLocalFilesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuerySelectedLocalFilesRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n372#2,7:86\n1603#3,9:93\n1855#3:102\n1856#3:104\n1612#3:105\n1#4:103\n*S KotlinDebug\n*F\n+ 1 QuerySelectedLocalFilesRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest\n*L\n38#1:86,7\n46#1:93,9\n46#1:102\n46#1:104\n46#1:105\n46#1:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00020\u0001B%\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "execute",
        "list",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "excludeList",
        "",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "cloudStorageProvider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "b",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "provider",
        "Lcom/onyx/android/sdk/data/utils/SelectionHelper;",
        "Lcom/alibaba/fastjson2/JSONObject;",
        "c",
        "Lcom/onyx/android/sdk/data/utils/SelectionHelper;",
        "selectionHelper",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/data/utils/SelectionHelper;)V",
        "sdk-cloudstorage_release"
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
        "SMAP\nQuerySelectedLocalFilesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuerySelectedLocalFilesRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n372#2,7:86\n1603#3,9:93\n1855#3:102\n1856#3:104\n1612#3:105\n1#4:103\n*S KotlinDebug\n*F\n+ 1 QuerySelectedLocalFilesRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest\n*L\n38#1:86,7\n46#1:93,9\n46#1:102\n46#1:104\n46#1:105\n46#1:103\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/data/utils/SelectionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/SelectionHelper<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/data/utils/SelectionHelper;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/utils/SelectionHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            "Lcom/onyx/android/sdk/data/utils/SelectionHelper<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cloudStorageProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->a:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->b:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->c:Lcom/onyx/android/sdk/data/utils/SelectionHelper;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest$removeExcludeList$1;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest$removeExcludeList$1;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyRemove(Ljava/util/Collection;Ljava/lang/Comparable;Z)Z

    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->execute()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->c:Lcom/onyx/android/sdk/data/utils/SelectionHelper;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest$execute$selectedItemMap$1;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest$execute$selectedItemMap$1;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->getSelectedItemMap(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 9
    new-instance v5, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    .line 10
    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->b:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const v3, 0x7fffffff

    .line 12
    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setLimit(I)V

    .line 13
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 14
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->getSelectedList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 17
    check-cast v6, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    .line 18
    invoke-virtual {v6}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 19
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setQueryIdList(Ljava/util/List;)V

    .line 21
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->a:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoResult(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/data/common/data/QueryResult;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/QueryResult;->ensureList()Ljava/util/List;

    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 25
    :cond_3
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->a:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoResult(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/data/common/data/QueryResult;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/common/data/QueryResult;->ensureList()Ljava/util/List;

    move-result-object v3

    .line 28
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->getSelectedList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/QuerySelectedLocalFilesRequest;->a(Ljava/util/List;Ljava/util/List;)V

    .line 29
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method
