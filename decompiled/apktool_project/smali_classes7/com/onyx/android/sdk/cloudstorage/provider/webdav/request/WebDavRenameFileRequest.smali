.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        "execute",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "webDavProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "fileOperation",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
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

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webDavProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOperation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    return-void
.end method


# virtual methods
.method public execute()Lcom/thegrizzlylabs/sardineandroid/DavResource;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->getWebDavURL()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->getDataJson()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest$execute$list$1;

    invoke-direct {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest$execute$list$1;-><init>()V

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    .line 8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    .line 9
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 12
    invoke-virtual {v2, v3, v4, v5}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 13
    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez v2, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v3, v0, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->combineUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    sget-object v5, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getNewName()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v2, v1}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "concat(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v5, "separator"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v4, v2, v6, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v6, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_2
    invoke-virtual {v3, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavUtils;->combineUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rename to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v1

    invoke-virtual {v1, v4, v0, v6}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->move(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object p0

    invoke-virtual {p0, v0, v6}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    const-string v0, "list(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "first(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavRenameFileRequest;->execute()Lcom/thegrizzlylabs/sardineandroid/DavResource;

    move-result-object p0

    return-object p0
.end method
