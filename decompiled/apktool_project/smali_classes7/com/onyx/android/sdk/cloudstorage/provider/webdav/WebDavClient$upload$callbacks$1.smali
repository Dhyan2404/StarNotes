.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$callbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$callbacks$1",
        "Lcom/onyx/android/sdk/data/utils/ProgressRequestBody$UploadCallbacks;",
        "onError",
        "",
        "onFinish",
        "onProgressUpdate",
        "percentage",
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
.field public final synthetic a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;J)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$callbacks$1;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;

    iput-wide p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$callbacks$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$callbacks$1;->a:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$upload$callbacks$1;->b:J

    long-to-float p0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-long p0, p0

    invoke-interface {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient$ProgressHandler;->onProgressUpdate(J)V

    :cond_0
    return-void
.end method
