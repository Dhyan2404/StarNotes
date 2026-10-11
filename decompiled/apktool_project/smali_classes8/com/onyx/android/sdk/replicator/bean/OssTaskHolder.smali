.class public final Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u0000 22\u00020\u0001:\u00012B\u0007\u00a2\u0006\u0004\u00080\u00101J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0000J\u0006\u0010\u000b\u001a\u00020\u0000J\u0006\u0010\u000c\u001a\u00020\u0000J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u0011\u001a\u00020\u0010J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00058\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0018\"\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R$\u0010\r\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00058\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0016\u001a\u0004\u0008#\u0010\u0018R$\u0010&\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00058\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0016\u001a\u0004\u0008%\u0010\u0018R\u0011\u0010(\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010)R\u0011\u0010+\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010)R\u0011\u0010,\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010)R\u0011\u0010-\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010)R\u0011\u0010.\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010)R\u0011\u0010/\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010)\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;",
        "",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "taskDisposable",
        "setTaskDisposable",
        "",
        "status",
        "setStatus",
        "recordType",
        "setSyncRecordType",
        "startPush",
        "startPull",
        "syncSuccess",
        "errorType",
        "syncError",
        "setErrorType",
        "",
        "cancelTask",
        "a",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "<set-?>",
        "b",
        "I",
        "getStatus",
        "()I",
        "c",
        "getType",
        "setType",
        "(I)V",
        "type",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "d",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "retryCount",
        "e",
        "getErrorType",
        "f",
        "getSyncRecordType",
        "syncRecordType",
        "",
        "isFinished",
        "()Z",
        "isSyncingOrFinished",
        "isSyncError",
        "isSyncing",
        "isPushType",
        "isPullType",
        "isSuccess",
        "<init>",
        "()V",
        "Companion",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OSS_RETRY_COUNT_LIMIT:I = 0x3


# instance fields
.field public a:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->Companion:Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getNONE()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public final cancelTask()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->a:Lio/reactivex/rxjava3/disposables/Disposable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->a:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public final getErrorType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->e:I

    return p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->b:I

    return p0
.end method

.method public final getSyncRecordType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->f:I

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->c:I

    return p0
.end method

.method public final isFinished()Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->e:I

    sget-object v1, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getNETWORK_ERROR()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->e:I

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getUSER_STORAGE_TOO_LOW()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPullType()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPushType()Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSuccess()Z
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->e:I

    sget-object v2, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/OnyxErrorType;->getTHUMBNAIL_CLOUD_FILE_NOT_EXIST()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSyncError()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->b:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncing()Z
    .locals 2

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->b:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isSyncingOrFinished()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->isFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setErrorType(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->e:I

    return-object p0
.end method

.method public final setStatus(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->b:I

    return-object p0
.end method

.method public final setSyncRecordType(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->f:I

    return-object p0
.end method

.method public final setTaskDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->a:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->c:I

    return-void
.end method

.method public final startPull()Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->c:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    return-object p0
.end method

.method public final startPush()Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    return-object p0
.end method

.method public final syncError(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->cancelTask()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->a()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setErrorType(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    return-object p0
.end method

.method public final syncSuccess()Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;->setStatus(I)Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;

    return-object p0
.end method
