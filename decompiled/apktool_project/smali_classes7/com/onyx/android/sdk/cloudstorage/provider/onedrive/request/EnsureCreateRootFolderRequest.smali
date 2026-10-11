.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/EnsureCreateRootFolderRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/EnsureCreateRootFolderRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "execute",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "oneDriveClient",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/EnsureCreateRootFolderRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/EnsureCreateRootFolderRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V

    const-string p0, "/"

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverFetchFileInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/EnsureCreateRootFolderRequest;->a()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/EnsureCreateRootFolderRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    move-result-object p0

    return-object p0
.end method
