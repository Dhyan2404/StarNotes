.class public final Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "",
        "h",
        "Ljava/lang/String;",
        "pageId",
        "Landroid/graphics/RectF;",
        "i",
        "Landroid/graphics/RectF;",
        "pageRect",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;->h:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static final synthetic access$getPageId$p(Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$gotoPageHighlightRect(Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;->l()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$create$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$create$2;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$create$3;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$create$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;)V

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$create$4;

    invoke-direct {v4, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$create$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;)V

    invoke-static {v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;->i:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/request/page/ScrollToPageRectRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/LocateRectInPageAction;->h:Ljava/lang/String;

    invoke-direct {v1, v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/page/ScrollToPageRectRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    const/4 p0, 0x1

    return p0
.end method
