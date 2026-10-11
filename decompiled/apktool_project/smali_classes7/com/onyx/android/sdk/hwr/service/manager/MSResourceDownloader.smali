.class public final Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;
.super Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R.\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;",
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "resource",
        "Lio/reactivex/rxjava3/core/Observable;",
        "download",
        "",
        "delete",
        "",
        "progress",
        "onDownloadProgress",
        "",
        "e",
        "onDownloadError",
        "onDownloadSuccess",
        "onDownloadComplete",
        "c",
        "",
        "",
        "b",
        "Ljava/util/Map;",
        "getDownloadStatusMap",
        "()Ljava/util/Map;",
        "setDownloadStatusMap",
        "(Ljava/util/Map;)V",
        "downloadStatusMap",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public b:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->onDownloadSuccess(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->getHWRResSaveFilePath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setZipFile(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->getHWRResSaveDirPath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setUnzipFile(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/request/HWRResourceUnzipRequest;->execute()Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->onDownloadComplete(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v2, "Unzip Error"

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setUrl(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setE(Ljava/lang/Throwable;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public delete(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->deleteHWRResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public download(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRValues;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRValues;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRValues;->getMY_SCRIPT_RESOURCE_DIR_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->mkdirs(Ljava/lang/String;)Z

    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->getHWRResSaveFilePath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setZipFile(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "0%"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getZipFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setForceReDownload(Z)V

    sget-object v1, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/i6j;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/i6j;-><init>(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$a;-><init>(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$b;-><init>(Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$c;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader$c;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDownloadStatusMap()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final onDownloadComplete(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setExist(Z)V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setProgress(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public onDownloadError(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v1, "Download Error"

    invoke-virtual {v0, p2, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setE(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    throw p2
.end method

.method public onDownloadProgress(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;D)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x25

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {p3}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setProgress(I)V

    invoke-virtual {p3, p1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, p3, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public onDownloadSuccess(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/hwr/R$string;->unpacking:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setStatus(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setProgress(I)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;->setResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->publishEvent(Lcom/onyx/android/sdk/hwr/data/event/HWRLangDownloadEvent;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->c(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public final setDownloadStatusMap(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/MSResourceDownloader;->b:Ljava/util/Map;

    return-void
.end method
