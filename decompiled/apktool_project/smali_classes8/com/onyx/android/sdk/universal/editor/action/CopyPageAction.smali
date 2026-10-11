.class public final Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u001d\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
        "copyArgs",
        "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
        "n",
        "o",
        "request",
        "m",
        "q",
        "",
        "h",
        "Ljava/util/List;",
        "getCopyArgsList",
        "()Ljava/util/List;",
        "copyArgsList",
        "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;",
        "context",
        "",
        "j",
        "Ljava/lang/String;",
        "pageId",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V",
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
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyArgsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->h:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$copyNotePage(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->m(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$copyPage(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->n(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->i:Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;

    return-object p0
.end method

.method public static final synthetic access$savePageTagModelIfNeeded(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->q(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPageId$p(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->j:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->p(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEndEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->h:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEndEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "concatMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$create$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$create$4;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$create$5;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$create$5;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$create$6;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$create$6;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pce;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pce;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCopyArgsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->getPagePair()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->getPagePair()Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Ljava/util/Map;Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->o(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;->copy$default(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;IIZILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->setCopyArgs(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyVirtualPage$1;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyVirtualPage$1;-><init>(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createLightCoreObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->getCopyPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$2;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$savePageTagModelIfNeeded$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$g;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
