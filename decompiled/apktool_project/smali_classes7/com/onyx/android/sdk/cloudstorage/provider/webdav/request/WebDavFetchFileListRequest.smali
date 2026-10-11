.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "execute",
        "",
        "list",
        "",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "webDavProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webDavProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOrder()Lcom/onyx/android/sdk/base/data/SortOrder;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->sortListByTime(Ljava/util/List;Lcom/onyx/android/sdk/base/data/SortOrder;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOrder()Lcom/onyx/android/sdk/base/data/SortOrder;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->sortListBySize(Ljava/util/List;Lcom/onyx/android/sdk/base/data/SortOrder;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOrder()Lcom/onyx/android/sdk/base/data/SortOrder;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->sortListByName(Ljava/util/List;Lcom/onyx/android/sdk/base/data/SortOrder;)V

    :goto_0
    return-void
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    .line 6
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->getWebDavURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->combineUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "list(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/thegrizzlylabs/sardineandroid/impl/SardineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest$execute$comparable$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest$execute$comparable$1;-><init>()V

    .line 11
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelyRemove(Ljava/util/Collection;Ljava/lang/Comparable;Z)Z

    .line 12
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    .line 13
    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setFetchSource(I)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    .line 15
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOffset()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCount()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->a(Ljava/util/List;)V

    .line 17
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getLimit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCount()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 18
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOffset()J

    move-result-wide v3

    long-to-int p0, v3

    invoke-static {v0, p0, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 20
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->webDavErrorToStandard(Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0
.end method
