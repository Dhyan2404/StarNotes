.class public final Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0006JT\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0017\u0010\u0017\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;",
        "args",
        "",
        "download",
        "dispose",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;",
        "onPermissionGranted",
        "onPermissionNotGranted",
        "f",
        "",
        "path",
        "d",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "a",
        "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "getEventBusHolder",
        "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;",
        "eventBusHolder",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "b",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "disposables",
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


# instance fields
.field public final a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->b:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->g(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final synthetic access$download(Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->d(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->h(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$tempFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->updateMtpDb(Ljava/io/File;)V

    return-void
.end method

.method public static final g(Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final h(Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getRandomCacheFile()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setForceReDownload(Z)V

    sget-object v3, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$a;

    invoke-direct {v4, v1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$a;-><init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)V

    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;

    invoke-direct {v4, p1, p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$b;-><init>(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;)V

    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v4, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;

    invoke-direct {v4, v1, p1, p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$c;-><init>(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;)V

    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/tgg;

    invoke-direct {v1, v0, p2}, Lcom/sunia/HTREnginev2/tgg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    const-string p1, "doOnComplete(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->b:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final dispose()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->b:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->safelyDispose(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public final download(Landroid/content/Context;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;

    invoke-direct {v0, p2, p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionGranted$1;-><init>(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;)V

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionNotGranted$1;

    invoke-direct {v1, p2, p0}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler$download$onPermissionNotGranted$1;-><init>(Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->f(Landroid/content/Context;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final f(Landroid/content/Context;Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object p0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;->getIntentName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestStoragePermissionAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/rgg;

    invoke-direct {p1, p3}, Lcom/sunia/HTREnginev2/rgg;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/sgg;

    invoke-direct {p1, p4}, Lcom/sunia/HTREnginev2/sgg;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfFalse(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/handler/FileDownloadHandler;->a:Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    return-object p0
.end method
