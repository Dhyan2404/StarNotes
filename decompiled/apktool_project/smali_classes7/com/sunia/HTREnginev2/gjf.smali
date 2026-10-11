.class public final synthetic Lcom/sunia/HTREnginev2/gjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/util/IOUtil$ProgressListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gjf;->a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;

    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gjf;->a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;->d(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxDownloadRequest;J)V

    return-void
.end method
