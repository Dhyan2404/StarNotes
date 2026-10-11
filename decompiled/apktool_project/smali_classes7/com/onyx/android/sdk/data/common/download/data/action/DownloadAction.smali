.class public Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
        "Lcom/liulishuo/okdownload/DownloadTask;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\'\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\u0014\u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020>H\u0014J\u0008\u0010?\u001a\u00020@H\u0004J\u0014\u0010A\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020>H\u0002J\u0008\u0010B\u001a\u00020\u000cH\u0002R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R&\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0012R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0012\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u000e\"\u0004\u0008-\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0012\"\u0004\u00082\u0010*R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u0012R\u001c\u00104\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0012\"\u0004\u00086\u0010*R\u001a\u00107\u001a\u000208X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<\u00a8\u0006C"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "Lcom/liulishuo/okdownload/DownloadTask;",
        "url",
        "",
        "filePath",
        "tag",
        "",
        "md5",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V",
        "checkMD5",
        "",
        "getCheckMD5",
        "()Z",
        "setCheckMD5",
        "(Z)V",
        "getFilePath",
        "()Ljava/lang/String;",
        "fileSize",
        "",
        "getFileSize",
        "()Ljava/lang/Long;",
        "setFileSize",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "headerParams",
        "",
        "getHeaderParams",
        "()Ljava/util/Map;",
        "setHeaderParams",
        "(Ljava/util/Map;)V",
        "getMd5",
        "notificationIcon",
        "",
        "getNotificationIcon",
        "()I",
        "setNotificationIcon",
        "(I)V",
        "password",
        "getPassword",
        "setPassword",
        "(Ljava/lang/String;)V",
        "pathAsDirectory",
        "getPathAsDirectory",
        "setPathAsDirectory",
        "getTag",
        "()Ljava/lang/Object;",
        "targetPath",
        "getTargetPath",
        "setTargetPath",
        "getUrl",
        "username",
        "getUsername",
        "setUsername",
        "wakeLockHolder",
        "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "getWakeLockHolder",
        "()Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;",
        "setWakeLockHolder",
        "(Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "createDownloadRequest",
        "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;",
        "createObservable",
        "predicateCondition",
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
.field private checkMD5:Z

.field private final filePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fileSize:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private headerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final md5:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private notificationIcon:I

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pathAsDirectory:Z

.field private final tag:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private targetPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->tag:Ljava/lang/Object;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->md5:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->checkMD5:Z

    new-instance p2, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/onyx/android/sdk/base/common/wakelock/OnyxWakeLockHolder;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    const-string p1, "user-agent"

    const-string p2, "okhttp/4.12.0"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->headerParams:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$createObservable(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$predicateCondition(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)Z
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->predicateCondition()Z

    move-result p0

    return p0
.end method

.method private final createObservable()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->createDownloadRequest()Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$createObservable$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$createObservable$1;-><init>(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/uff;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uff;-><init>(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final createObservable$lambda$0(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    invoke-interface {p0}, Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;->releaseWakeLock()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->createObservable$lambda$0(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V

    return-void
.end method

.method private final predicateCondition()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/onyx/android/sdk/data/common/exception/ContentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->url:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-nez v1, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->tag:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->existTask(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->filePathInvalidException()Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    throw p0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->urlInvalidException()Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$1;-><init>(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$2;-><init>(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final createDownloadRequest()Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->fileSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setFileSize(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->targetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTargetPath(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->headerParams:Ljava/util/Map;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setHeaderParams(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getCheckMD5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->checkMD5:Z

    return p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileSize()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->fileSize:Ljava/lang/Long;

    return-object p0
.end method

.method public final getHeaderParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->headerParams:Ljava/util/Map;

    return-object p0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public final getNotificationIcon()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->notificationIcon:I

    return p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getPathAsDirectory()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->pathAsDirectory:Z

    return p0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTargetPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->targetPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->username:Ljava/lang/String;

    return-object p0
.end method

.method public final getWakeLockHolder()Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    return-object p0
.end method

.method public final setCheckMD5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->checkMD5:Z

    return-void
.end method

.method public final setFileSize(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->fileSize:Ljava/lang/Long;

    return-void
.end method

.method public final setHeaderParams(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->headerParams:Ljava/util/Map;

    return-void
.end method

.method public final setNotificationIcon(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->notificationIcon:I

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->password:Ljava/lang/String;

    return-void
.end method

.method public final setPathAsDirectory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->pathAsDirectory:Z

    return-void
.end method

.method public final setTargetPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->targetPath:Ljava/lang/String;

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->username:Ljava/lang/String;

    return-void
.end method

.method public final setWakeLockHolder(Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->wakeLockHolder:Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;

    return-void
.end method
