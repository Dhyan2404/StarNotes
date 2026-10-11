.class public final Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnyxDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDownloadManager.kt\ncom/onyx/android/sdk/data/common/download/OnyxDownloadManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,152:1\n215#2,2:153\n*S KotlinDebug\n*F\n+ 1 OnyxDownloadManager.kt\ncom/onyx/android/sdk/data/common/download/OnyxDownloadManager\n*L\n51#1:153,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001J2\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u001a\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u00192\u0006\u0010\u0013\u001a\u00020\u0014J&\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00122\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0010\u0010\u001d\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0012\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0012\u0010!\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\"\u001a\u00020\u001b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0006\u0010#\u001a\u00020\u000fJ\u0010\u0010$\u001a\u00020\u001b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000Rf\u0010\u0008\u001aZ\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00010\u0001\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000c \n*\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b0\u000b \n*,\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00010\u0001\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000c \n*\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b0\u000b\u0018\u00010\r0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;",
        "",
        "()V",
        "DEFAULT_CONNECTION_COUNT",
        "",
        "DEFAULT_PROGRESS_MIN_INTERVAL",
        "TIMEOUT_MILLIS",
        "",
        "taskStatusMap",
        "",
        "kotlin.jvm.PlatformType",
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "Lcom/liulishuo/okdownload/DownloadTask;",
        "",
        "cancelTask",
        "",
        "key",
        "createDownloadListener",
        "Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;",
        "request",
        "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;",
        "subject",
        "Lio/reactivex/rxjava3/core/Observer;",
        "downloadStatus",
        "createObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "enqueueTask",
        "",
        "listener",
        "existTask",
        "getDownloadStatus",
        "getProgressInfo",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "getTask",
        "pauseTask",
        "removeFromQueue",
        "removeTask",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOnyxDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnyxDownloadManager.kt\ncom/onyx/android/sdk/data/common/download/OnyxDownloadManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,152:1\n215#2,2:153\n*S KotlinDebug\n*F\n+ 1 OnyxDownloadManager.kt\ncom/onyx/android/sdk/data/common/download/OnyxDownloadManager\n*L\n51#1:153,2\n*E\n"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_COUNT:I = 0x1

.field private static final DEFAULT_PROGRESS_MIN_INTERVAL:I = 0x5dc

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TIMEOUT_MILLIS:J = 0xea60L

.field private static final taskStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->taskStatusMap:Ljava/util/Map;

    new-instance v0, Lcom/liulishuo/okdownload/OkDownload$Builder;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liulishuo/okdownload/OkDownload$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/OkDownload$Builder;->build()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/okdownload/OkDownload;->setSingletonInstance(Lcom/liulishuo/okdownload/OkDownload;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable$lambda$3(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V

    return-void
.end method

.method public static final synthetic access$enqueueTask(Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->enqueueTask(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable$lambda$2(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V

    return-void
.end method

.method private final createDownloadListener(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lio/reactivex/rxjava3/core/Observer;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;",
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;>;",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;)",
            "Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;

    invoke-direct {p0, p3, p1, p2}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createDownloadListener$1;-><init>(Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lio/reactivex/rxjava3/core/Observer;)V

    return-object p0
.end method

.method private static final createObservable$lambda$2(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V
    .locals 2

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->pauseTask(Ljava/lang/Object;Z)V

    return-void
.end method

.method private static final createObservable$lambda$3(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V
    .locals 1

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->removeTask(Ljava/lang/Object;)V

    return-void
.end method

.method private final enqueueTask(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V
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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getTask()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->taskStatusMap:Ljava/util/Map;

    const-string p2, "taskStatusMap"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cancelTask(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->getTask(Ljava/lang/Object;)Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->cancel()V

    const/4 p0, 0x1

    return p0
.end method

.method public final createObservable(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/io/File;)V

    const/16 v2, 0x5dc

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setMinIntervalMillisCallbackProcess(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setConnectionCount(I)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getForceReDownload()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setPassIfAlreadyCompleted(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getAutoCallbackToUIThread()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v1

    const-string v2, "setAutoCallbackToUIThread(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/data/common/download/extension/DownloadTaskKt;->addBasicAuthentication(Lcom/liulishuo/okdownload/DownloadTask$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getHeaderParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/DownloadTask;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTask(Lcom/liulishuo/okdownload/DownloadTask;)V

    new-instance v2, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    invoke-direct {v2}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setEntry(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setTag(Ljava/lang/Object;)V

    sget-object v1, Lcom/liulishuo/okdownload/StatusUtil$Status;->PENDING:Lcom/liulishuo/okdownload/StatusUtil$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->setStatus(I)V

    invoke-direct {p0, p1, v0, v2}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createDownloadListener(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lio/reactivex/rxjava3/core/Observer;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pgk;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/pgk;-><init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;

    invoke-direct {v1, p1, p0, v2}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager$createObservable$3;-><init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/android/sdk/data/common/download/FileDownloadListener;Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/qgk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/qgk;-><init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final existTask(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->getTask(Ljava/lang/Object;)Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getDownloadStatus(Ljava/lang/Object;)Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "Lcom/liulishuo/okdownload/DownloadTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->taskStatusMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    return-object p0
.end method

.method public final getProgressInfo(Ljava/lang/Object;)Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->getDownloadStatus(Ljava/lang/Object;)Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTask(Ljava/lang/Object;)Lcom/liulishuo/okdownload/DownloadTask;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->taskStatusMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->getEntry()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/DownloadTask;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final pauseTask(Ljava/lang/Object;Z)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->getTask(Ljava/lang/Object;)Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/DownloadTask;->cancel()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->removeTask(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final removeTask(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->taskStatusMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
