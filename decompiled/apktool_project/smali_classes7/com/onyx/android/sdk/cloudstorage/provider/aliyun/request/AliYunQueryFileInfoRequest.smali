.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAliYunQueryFileInfoRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n766#2:83\n857#2,2:84\n288#2,2:86\n*S KotlinDebug\n*F\n+ 1 AliYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest\n*L\n44#1:83\n44#1:84,2\n46#1:86,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\t\u001a\u00020\u00082\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
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
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "aliYunProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
        "SMAP\nAliYunQueryFileInfoRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n766#2:83\n857#2,2:84\n288#2,2:86\n*S KotlinDebug\n*F\n+ 1 AliYunQueryFileInfoRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest\n*L\n44#1:83\n44#1:84,2\n46#1:86,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "aliYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setQuery(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setParentId(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setFilterParent(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setProvider(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setSortBy(Lcom/onyx/android/sdk/base/data/SortBy;)V

    sget-object p0, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setOrder(Lcom/onyx/android/sdk/base/data/SortOrder;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setOffset(J)V

    const/16 p0, 0x64

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setLimit(I)V

    return-object v0
.end method

.method public final b(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunSearchFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-direct {v0, v1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunSearchFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunSearchFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCursor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCursor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->setCursor(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunFetchFileInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/onyx/android/sdk/data/common/exception/CloudNoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getCode()I

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;->getCODE_FILE_ID_NOT_FOUND()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 6
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

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

    check-cast v5, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    .line 11
    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/onyx/android/sdk/base/extension/StringKt;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    .line 14
    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getParentFileId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/StringKt;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 15
    :cond_3
    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    if-eqz v0, :cond_5

    .line 16
    :cond_4
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 17
    :cond_5
    throw v1

    .line 18
    :cond_6
    throw v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunQueryFileInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    move-result-object p0

    return-object p0
.end method
