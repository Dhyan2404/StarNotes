.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHuaweiYunQueryFileInfoRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n766#2:84\n857#2,2:85\n288#2,2:87\n*S KotlinDebug\n*F\n+ 1 HuaweiYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest\n*L\n44#1:84\n44#1:85,2\n46#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\t\u001a\u00020\u00082\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "result",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFileBean",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "huaweiYunProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
        "SMAP\nHuaweiYunQueryFileInfoRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaweiYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n766#2:84\n857#2,2:85\n288#2,2:87\n*S KotlinDebug\n*F\n+ 1 HuaweiYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest\n*L\n44#1:84\n44#1:85,2\n46#1:87,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "huaweiYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setQuery(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunUtils;->normalizeToCloudParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setFilterParent(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setSortBy(Lcom/onyx/android/sdk/base/data/SortBy;)V

    sget-object p0, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setOrder(Lcom/onyx/android/sdk/base/data/SortOrder;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setOffset(J)V

    const/16 p0, 0x64

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setLimit(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setPrecisionSearch(Z)V

    return-object v0
.end method

.method public final b(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchFileInfoRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchFileInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunFetchFileInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object v0
    :try_end_0
    .catch Lcom/onyx/android/sdk/data/common/exception/CloudNoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getCode()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_a

    .line 6
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    .line 8
    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    .line 11
    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    .line 14
    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v7

    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getParentFolder()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    move v6, v7

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;->getParentFolder()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 16
    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v6, :cond_2

    move-object v0, v3

    .line 17
    :cond_7
    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    if-eqz v0, :cond_9

    .line 18
    :cond_8
    :goto_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 19
    :cond_9
    throw v1

    .line 20
    :cond_a
    throw v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunQueryFileInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object p0

    return-object p0
.end method
