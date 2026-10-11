.class final Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;->o(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $loadingDialog:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;->$loadingDialog:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/editor/action/export/LoadCurNoteExportArgsAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/editor/action/export/LoadCurNoteExportArgsAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2$a;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2$a;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2$b;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;->$loadingDialog:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2$b;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2$c;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2$c;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$showExportPopup$2;->invoke(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
