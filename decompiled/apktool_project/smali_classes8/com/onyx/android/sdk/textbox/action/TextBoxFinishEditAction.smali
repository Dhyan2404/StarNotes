.class public final Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;
.super Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction<",
        "Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0000H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0002R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;",
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;",
        "",
        "needSaveShape",
        "setNeedSaveShape",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "o",
        "n",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "f",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBoxView",
        "g",
        "Z",
        "Lcom/onyx/android/sdk/textbox/data/EditorContent;",
        "h",
        "Lcom/onyx/android/sdk/textbox/data/EditorContent;",
        "getEditorContent",
        "()Lcom/onyx/android/sdk/textbox/data/EditorContent;",
        "setEditorContent",
        "(Lcom/onyx/android/sdk/textbox/data/EditorContent;)V",
        "editorContent",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Lcom/onyx/android/sdk/textbox/data/EditorContent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBoxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-void
.end method

.method public static final synthetic access$checkState(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->m()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$finishEdit(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadEditorContent(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->o()Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;

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
            "Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$a;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$b;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$c;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorContent()Lcom/onyx/android/sdk/textbox/data/EditorContent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->h:Lcom/onyx/android/sdk/textbox/data/EditorContent;

    return-object p0
.end method

.method public final m()Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isOperable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish edit with invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorState()Lcom/onyx/android/sdk/textbox/data/EditorState;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->g:Z

    return p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->finishEditObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction$d;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->loadFinalContent()Lcom/onyx/android/sdk/textbox/data/EditorContent;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->h:Lcom/onyx/android/sdk/textbox/data/EditorContent;

    return-object p0
.end method

.method public final setEditorContent(Lcom/onyx/android/sdk/textbox/data/EditorContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->h:Lcom/onyx/android/sdk/textbox/data/EditorContent;

    return-void
.end method

.method public final setNeedSaveShape(Z)Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxFinishEditAction;->g:Z

    return-object p0
.end method
