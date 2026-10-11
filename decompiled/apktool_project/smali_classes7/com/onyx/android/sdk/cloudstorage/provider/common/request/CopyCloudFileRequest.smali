.class public abstract Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCopyCloudFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n215#2,2:136\n1#3:138\n1549#4:139\n1620#4,3:140\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest\n*L\n64#1:136,2\n103#1:139\n103#1:140,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008&\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008,\u0010-J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0003H$J\u0016\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H$J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\tH$J&\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000e2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\r\u001a\u00020\tH\u0002J$\u0010\u0014\u001a\u00020\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006H\u0002R\u001a\u0010\u0016\u001a\u00020\u00158\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001b\u001a\u00020\u001a8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R(\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "execute",
        "parent",
        "",
        "fetchCloudFileList",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "dataList",
        "",
        "copy",
        "targetFolder",
        "",
        "getTargetCloudPath",
        "parentId",
        "excludeList",
        "a",
        "list",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "provider",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "getProvider",
        "()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "args",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "getArgs",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "",
        "cut",
        "Z",
        "getCut",
        "()Z",
        "setCut",
        "(Z)V",
        "result",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "getResult",
        "()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "setResult",
        "(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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
        "SMAP\nCopyCloudFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n215#2,2:136\n1#3:138\n1549#4:139\n1620#4,3:140\n*S KotlinDebug\n*F\n+ 1 CopyCloudFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest\n*L\n64#1:136,2\n103#1:139\n103#1:140,3\n*E\n"
    }
.end annotation


# instance fields
.field private final args:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cut:Z

.field private final provider:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected result:Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->provider:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->args:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->provider:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->fetchCloudFileList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->b(Ljava/util/List;Ljava/util/List;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    new-instance v4, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->setDest(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->setNewName(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->copy(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->a(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
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

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$removeExcludeList$1;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$removeExcludeList$1;-><init>(Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyRemove(Ljava/util/Collection;Ljava/lang/Comparable;Z)Z

    return-void
.end method

.method public abstract copy(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->setResult(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->args:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->getDataJson()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$execute$map$1;

    invoke-direct {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$execute$map$1;-><init>()V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "target"

    .line 7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-class v4, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    .line 8
    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getTargetCloudPath(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->setPath(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "map"

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 12
    :cond_4
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$execute$selectionHelper$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$execute$selectionHelper$1;-><init>()V

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/data/utils/SelectionHelper;

    .line 15
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$execute$selectedItemMap$1;

    invoke-direct {v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest$execute$selectedItemMap$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/SelectionHelper;->getSelectedItemMap(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/SelectionModel;

    .line 18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0

    .line 20
    :cond_6
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->isSelectedAllMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 21
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->getSelectedList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->copy(Ljava/util/List;)V

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/SelectionModel;->getSelectedList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->a(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)V

    goto :goto_3

    .line 23
    :cond_8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0
.end method

.method public abstract fetchCloudFileList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/util/List;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getArgs()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->args:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    return-object p0
.end method

.method public final getCut()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->cut:Z

    return p0
.end method

.method public final getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->provider:Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    return-object p0
.end method

.method public final getResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->result:Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "result"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTargetCloudPath(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/lang/String;
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final setCut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->cut:Z

    return-void
.end method

.method public final setResult(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/CopyCloudFileRequest;->result:Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    return-void
.end method
