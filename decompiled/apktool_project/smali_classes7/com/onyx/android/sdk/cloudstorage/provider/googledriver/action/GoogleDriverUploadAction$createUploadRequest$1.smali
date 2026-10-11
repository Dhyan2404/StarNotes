.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction$createUploadRequest$1;
.super Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;->createUploadRequest(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction$createUploadRequest$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;",
        "execute",
        "Lcom/google/api/services/drive/model/File;",
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
.field final synthetic $cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction$createUploadRequest$1;->$cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction$createUploadRequest$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;

    invoke-direct {p0, p3, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/services/drive/model/File;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverUploadRequest;->execute()Lcom/google/api/services/drive/model/File;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction$createUploadRequest$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;->access$getFileMap$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction$createUploadRequest$1;->$cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverUploadAction$createUploadRequest$1;->execute()Lcom/google/api/services/drive/model/File;

    move-result-object p0

    return-object p0
.end method
