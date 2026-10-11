.class public abstract Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 $*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0001$B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0006\u0010\u0004\u001a\u00020\u0003J\u0010\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u0008\u001a\u00020\u0003J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0015J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0014J\u0008\u0010\u000e\u001a\u00020\u0003H\u0014J\u0016\u0010\u0012\u001a\u00020\u00032\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002R\u001d\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R@\u0010\u0018\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0018\u00010\u00162\u0014\u0010\u0017\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0018\u00010\u00168\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\n\u001a\u00020\t8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0018\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "T",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "onStart",
        "",
        "e",
        "onDone",
        "disposeTransfer",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "progressInfo",
        "",
        "soFarBytes",
        "onProgress",
        "checkAbort",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "status",
        "c",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "getStatus",
        "()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "<set-?>",
        "emitter",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "getEmitter",
        "()Lio/reactivex/rxjava3/core/ObservableEmitter;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "getProgressInfo",
        "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "<init>",
        "()V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_PROGRESS_MIN_INTERVAL:J = 0x4b0L


# instance fields
.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    new-instance v0, Lcom/sunia/HTREnginev2/lln;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lln;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->create(Lio/reactivex/rxjava3/core/ObservableOnSubscribe;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->b(Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method

.method public static final synthetic access$sendStatus(Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->c(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->isUpload()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageUploadFileEvent;-><init>(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageDownloadFileEvent;-><init>(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->postEvent(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public checkAbort()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/AbortException;

    const-string v0, "abort cloud file transfer"

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/exception/AbortException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final disposeTransfer()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-void
.end method

.method public final getEmitter()Lio/reactivex/rxjava3/core/ObservableEmitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    return-object p0
.end method

.method public final getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-object p0
.end method

.method public final getStatus()Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    return-object p0
.end method

.method public final onDone(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->disposeTransfer()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setCompleteStatus()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of p1, p1, Lcom/onyx/android/sdk/data/common/exception/AbortException;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setErrorStatus()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setInvalidStatus()V

    :goto_1
    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->c(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method

.method public onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "progressInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->checkAbort()V

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->emitter:Lio/reactivex/rxjava3/core/ObservableEmitter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    .line 7
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->updateProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    .line 8
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;J)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "progressInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setSoFarBytes(J)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getSoFarBytes()J

    move-result-wide p2

    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    const/16 p3, 0x64

    int-to-float p3, p3

    mul-float/2addr p2, p3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getTotalBytes()J

    move-result-wide v0

    long-to-float p3, v0

    div-float/2addr p2, p3

    float-to-double p2, p2

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setProgress(D)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->onProgress(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->status:Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;->c(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method
