.class public final Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;
.super Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction<",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;",
        "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "g",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "resource",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V",
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
.field public final g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    return-void
.end method

.method public static final synthetic access$download(Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction$a;-><init>(Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->getResourceCheckerFactory()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getEngineType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;->isResourceDownloaded(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->getResourceDownloaderFactory()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getEngineType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;->setEventPublisher(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;->g:Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;->download(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
