.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest$uploadFile$uploadResponse$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;->e()Lcom/thegrizzlylabs/sardineandroid/DavResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest$uploadFile$uploadResponse$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;",
        "onProgressUpdate",
        "",
        "progress",
        "",
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
.field public final synthetic a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest$uploadFile$uploadResponse$1;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(J)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest$uploadFile$uploadResponse$1;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;->access$getProgressInfo(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;)Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;->access$onProgress(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/request/WebDavUploadRequest;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V

    return-void
.end method
