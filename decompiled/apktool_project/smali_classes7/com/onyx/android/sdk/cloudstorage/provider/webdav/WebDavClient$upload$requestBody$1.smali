.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$requestBody$1;
.super Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->upload(Ljava/lang/String;Ljava/io/File;Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$requestBody$1",
        "Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;",
        "onProgressUpdate",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
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


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$callbacks$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/utils/ProgressRequestBody;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;)V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
