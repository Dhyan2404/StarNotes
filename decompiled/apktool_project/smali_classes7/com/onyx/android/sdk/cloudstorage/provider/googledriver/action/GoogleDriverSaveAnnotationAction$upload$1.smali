.class final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;->upload(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "file",
        "Lcom/google/api/services/drive/model/File;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

.field final synthetic $request:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;

.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->$fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->$request:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/api/services/drive/model/File;)V
    .locals 3
    .param p1    # Lcom/google/api/services/drive/model/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->$fileBean:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getId(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;->access$getGoogleDriverProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;->access$getGoogleDriverProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/google/api/services/drive/model/File;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->$request:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->getStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setNewTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setEntry(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->$request:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriveSaveExportFileRequest;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onDone(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/api/services/drive/model/File;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverSaveAnnotationAction$upload$1;->accept(Lcom/google/api/services/drive/model/File;)V

    return-void
.end method
