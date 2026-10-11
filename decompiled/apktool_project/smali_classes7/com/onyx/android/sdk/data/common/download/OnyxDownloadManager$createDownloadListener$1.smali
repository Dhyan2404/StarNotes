.class public final Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;
.super Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createDownloadListener(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lio/reactivex/rxjava3/core/Observer;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J\u001c\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u0008\u001a\u00060\tj\u0002`\nH\u0014J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1",
        "Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;",
        "canceled",
        "",
        "task",
        "Lcom/liulishuo/okdownload/DownloadTask;",
        "completed",
        "error",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "progress",
        "currentOffset",
        "",
        "totalLength",
        "sdk-data_release"
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
.field final synthetic $downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

.field final synthetic $subject:Lio/reactivex/rxjava3/core/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;",
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$subject:Lio/reactivex/rxjava3/core/Observer;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 2
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setInvalidStatus()V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$subject:Lio/reactivex/rxjava3/core/Observer;

    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/AbortException;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/common/exception/AbortException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public completed(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setCompleteStatus()V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->checkFileSize()Z

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->checkFileMd5AndDelete()V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->moveToTarget()V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$subject:Lio/reactivex/rxjava3/core/Observer;

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$subject:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public error(Lcom/liulishuo/okdownload/DownloadTask;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setErrorStatus()V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$subject:Lio/reactivex/rxjava3/core/Observer;

    invoke-interface {p0, p2}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public progress(Lcom/liulishuo/okdownload/DownloadTask;JJ)V
    .locals 1
    .param p1    # Lcom/liulishuo/okdownload/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->updateProgressInfo(JJ)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$subject:Lio/reactivex/rxjava3/core/Observer;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
