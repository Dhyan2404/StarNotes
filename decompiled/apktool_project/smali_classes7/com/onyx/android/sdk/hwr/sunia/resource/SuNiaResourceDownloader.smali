.class public final Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;
.super Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuNiaResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResourceDownloader.kt\ncom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1855#2,2:79\n*S KotlinDebug\n*F\n+ 1 SuNiaResourceDownloader.kt\ncom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader\n*L\n38#1:79,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;",
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;",
        "()V",
        "delete",
        "",
        "resource",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "download",
        "Lio/reactivex/rxjava3/core/Observable;",
        "installDefaultResource",
        "sdk-sunia_overseasRelease"
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
        "SMAP\nSuNiaResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaResourceDownloader.kt\ncom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1855#2,2:79\n*S KotlinDebug\n*F\n+ 1 SuNiaResourceDownloader.kt\ncom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader\n*L\n38#1:79,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;->c(Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;->d(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public static final c(Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->onDownloadSuccess(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method

.method public static final d(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1

    const-string v0, "$resource"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->removeDownloadingResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    return-void
.end method


# virtual methods
.method public delete(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->getResourceUnzipPath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;Z)Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->setResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Z)V

    return-void
.end method

.method public download(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lio/reactivex/rxjava3/core/Observable;
    .locals 6
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

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getRandomCacheFile()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->getResourceZipPath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->getResourceUnzipPath(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setForceReDownload(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setFileMd5(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTargetPath(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->addDownloadingResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->onDownloadProgress(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;D)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$a;->e:Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;

    invoke-direct {v1, v2, v3, p1}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$c;-><init>(Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/m4n;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/m4n;-><init>(Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/n4n;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/n4n;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$d;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceDownloader$d;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public installDefaultResource()V
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->isDefaultResourceInstalled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v3, "hwr"

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getDirectory(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->getINTERNAL_LANG_LIST()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sunia/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuNia"

    invoke-interface {p0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const-string v3, "resolve(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    invoke-virtual {v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->decompressAssetToFolder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->setDefaultResourceInstalled()V

    return-void
.end method
