.class public final Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u000f\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "getEditorBundleManager",
        "()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "editorBundleManager",
        "",
        "i",
        "Z",
        "getShowTape",
        "()Z",
        "showTape",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Z)V",
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
.field public final h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundleManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->i:Z

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->m(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFocusId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getAnotherEditorViewHandler(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowTapeShapeOverlayEvent;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->i:Z

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowTapeShapeOverlayEvent;-><init>(Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$create$2;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/zji;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/zji;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorBundleManager()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->h:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-object p0
.end method

.method public final getShowTape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/pen/InitTapeShapeGlobalStateAction;->i:Z

    return p0
.end method
