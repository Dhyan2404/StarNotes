.class final Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "accept"
    }
    k = 0x3
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

.field final synthetic $listener:Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;

.field final synthetic $request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;",
            "Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;->$listener:Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;->$request:Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;->$listener:Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;->$downloadStatus:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->access$enqueueTask(Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;->accept(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
