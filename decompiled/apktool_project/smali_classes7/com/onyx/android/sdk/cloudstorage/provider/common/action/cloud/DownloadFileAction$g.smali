.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;->o(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

.field public final synthetic f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction$g;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction$g;->f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction$g;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction$g;->f:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction$g;->e:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->addTransferDisposable(Ljava/lang/String;Lio/reactivex/rxjava3/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileAction$g;->a(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
