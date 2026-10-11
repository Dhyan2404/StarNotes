.class public final Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;",
        "",
        "",
        "initialize",
        "installDefaultResource",
        "a",
        "d",
        "b",
        "c",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    sget-object v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedRecognizer$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->setRecognizerFactory(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->initializeIfNeeded(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    sget-object v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedResourceChecker$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedResourceChecker$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->setResourceCheckerFactory(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    sget-object v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedResourceDownloader$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedResourceDownloader$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->setResourceDownloaderFactory(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final d()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    sget-object v0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedResultConverter$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer$installSupportedResultConverter$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->setResultConverterFactory(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final initialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->a()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->d()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->b()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->c()V

    return-void
.end method

.method public final installDefaultResource()V
    .locals 8

    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v0, "hwr"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getDefaultLangByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "GoogleML"

    const-string v1, "SuNia"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/hwr/action/HWRInstallDefaultResourceAction;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
