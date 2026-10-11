.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$getInputStream$1;
.super Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$getInputStream$1",
        "Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;",
        "notifyProgress",
        "",
        "progressInfo",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;Ljava/io/FileInputStream;J)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$getInputStream$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;

    invoke-direct {p0, p2, p3, p4}, Lcom/onyx/android/sdk/cloudstorage/common/utils/ProcessInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public notifyProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "progressInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$getInputStream$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;->getProgressListener()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$getInputStream$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent;->getProgressListener()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/UploadFileContent$ProgressListener;->notifyProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    :cond_0
    return-void
.end method
