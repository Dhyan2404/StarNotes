.class final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$updateFile$func$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->updateFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;)Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/google/api/services/drive/model/File;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;",
        "Lcom/google/api/services/drive/Drive$Files;",
        "Lcom/google/api/services/drive/Drive$Files$Update;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u001a \u0004*\u000c\u0018\u00010\u0001R\u00060\u0002R\u00020\u00030\u0001R\u00060\u0002R\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\n\u0010\t\u001a\u00060\u0002R\u00020\u0003H\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/google/api/services/drive/Drive$Files$Update;",
        "Lcom/google/api/services/drive/Drive$Files;",
        "Lcom/google/api/services/drive/Drive;",
        "kotlin.jvm.PlatformType",
        "file",
        "Lcom/google/api/services/drive/model/File;",
        "fileContent",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;",
        "files",
        "invoke"
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
.field final synthetic $fileId:Ljava/lang/String;

.field final synthetic $progressListener:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$updateFile$func$1;->$progressListener:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$updateFile$func$1;->$fileId:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/api/services/drive/model/File;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;Lcom/google/api/services/drive/Drive$Files;)Lcom/google/api/services/drive/Drive$Files$Update;
    .locals 1
    .param p1    # Lcom/google/api/services/drive/model/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/api/services/drive/Drive$Files;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$updateFile$func$1;->$progressListener:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;->setProgressListener(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$updateFile$func$1;->$fileId:Ljava/lang/String;

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files;->update(Ljava/lang/String;Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Update;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/api/services/drive/model/File;

    check-cast p2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;

    check-cast p3, Lcom/google/api/services/drive/Drive$Files;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$updateFile$func$1;->invoke(Lcom/google/api/services/drive/model/File;Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;Lcom/google/api/services/drive/Drive$Files;)Lcom/google/api/services/drive/Drive$Files$Update;

    move-result-object p0

    return-object p0
.end method
