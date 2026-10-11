.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000fR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "c",
        "",
        "checkAccount",
        "Lretrofit2/Response;",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "oneDriveProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
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
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->b(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;Z)Lretrofit2/Response;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "body(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x1f5

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->c(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;->parseError(Lretrofit2/Response;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;

    const-string v2, "fetch onedrive root file list"

    invoke-virtual {p0, v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    throw v1
.end method

.method public final b(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;Z)Lretrofit2/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            "Z)",
            "Lretrofit2/Response<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextPage cursor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getCursor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOffset()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getCursor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->getListQueryMap(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;->getOneDriveService()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    const-string v6, "execute(...)"

    if-eqz v4, :cond_2

    const-string v4, "/"

    invoke-virtual {v0, v4, v5}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->parsePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->fetchChildrenByPath(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;->fetchFilesById(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    if-eqz p2, :cond_3

    sget-object p2, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;->isOperationNotSupportError(Lretrofit2/Response;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getAccountId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->addOrganizationAccount(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->b(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;Z)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final c(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchAllFileListRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchAllFileListRequest;->setRecursive(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;

    invoke-direct {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;-><init>()V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;->setValue(Ljava/util/List;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;->setCount(J)V

    return-object p1
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->a()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setFetchSource(I)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;->getNextPageToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCursor(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;->sortByFolder(Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0
.end method
