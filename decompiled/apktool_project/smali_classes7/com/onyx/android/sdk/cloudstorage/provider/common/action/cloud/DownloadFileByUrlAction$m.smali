.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->u(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;Lkotlin/Pair;)Lio/reactivex/rxjava3/disposables/Disposable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

.field public final synthetic f:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$m;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$m;->f:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$m;->e:Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$m;->f:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->access$onProgress(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction$m;->a(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method
