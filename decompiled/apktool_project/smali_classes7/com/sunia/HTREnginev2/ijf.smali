.class public final synthetic Lcom/sunia/HTREnginev2/ijf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/util/IOUtil$ProgressListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxUploadRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxUploadRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ijf;->a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxUploadRequest;

    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ijf;->a:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxUploadRequest;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxUploadRequest;->d(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxUploadRequest;J)V

    return-void
.end method
