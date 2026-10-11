.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/google/api/services/drive/model/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/google/api/services/drive/model/File;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "fileOperation",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V",
        "operationData",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "getOperationData",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "setOperationData",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)V",
        "execute",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fileOperation:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private operationData:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "googleDriverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOperation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->fileOperation:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/drive/model/File;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---provider--accountId---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->fileOperation:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;->getDataJson()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest$execute$1;

    invoke-direct {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest$execute$1;-><init>()V

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 8
    :goto_0
    iput-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->operationData:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    if-nez v1, :cond_1

    return-object v2

    .line 9
    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->operationData:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->operationData:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getNewName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v1

    .line 14
    const-class v2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->operationData:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " rename to "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/api/client/json/GenericJson;->toPrettyString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->execute()Lcom/google/api/services/drive/model/File;

    move-result-object p0

    return-object p0
.end method

.method public final getOperationData()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->operationData:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    return-object p0
.end method

.method public final setOperationData(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverRenameFileRequest;->operationData:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;

    return-void
.end method
