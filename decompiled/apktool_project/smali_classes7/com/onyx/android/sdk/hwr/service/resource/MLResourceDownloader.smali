.class public final Lcom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader;
.super Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMLResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 MLResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader\n*L\n20#1:50,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader;",
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;",
        "()V",
        "delete",
        "",
        "resource",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "download",
        "Lio/reactivex/rxjava3/core/Observable;",
        "installDefaultResource",
        "sdk-hwr_release"
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
        "SMAP\nMLResourceDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 MLResourceDownloader.kt\ncom/onyx/android/sdk/hwr/service/resource/MLResourceDownloader\n*L\n20#1:50,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->deleteModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->setResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Z)V

    return-void
.end method

.method public download(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
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

    const-string v0, "just(...)"

    const-string v1, "resource"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->addDownloadingResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->downloadModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v2, v3}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->setResourceInstalled$default(Lcom/onyx/android/sdk/hwr/service/util/MLResource;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;ZILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->onDownloadSuccess(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->removeDownloadingResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v3, "Download Error"

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRBaseResourceDownloader;->onDownloadError(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->removeDownloadingResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    goto :goto_0
.end method

.method public installDefaultResource()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->isDefaultResourceInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->getINTERNAL_LANG_LIST()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mlkit/mlkit_model_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".zip"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->decompressAssetToFolder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->setDefaultResourceInstalled()V

    return-void
.end method
