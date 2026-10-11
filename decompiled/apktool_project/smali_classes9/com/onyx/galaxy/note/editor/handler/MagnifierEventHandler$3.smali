.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;
.super Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0014R\u0014\u0010\u000c\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3",
        "Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;",
        "Landroid/view/View;",
        "getEraseView",
        "",
        "getEraseViewOffset",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "switchLastTool",
        "h",
        "[I",
        "location",
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
.field public final h:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic i:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;->i:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;->h:[I

    return-void
.end method


# virtual methods
.method public getEraseView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;->i:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getMagnifierRootLayout$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;->eraseCircleView:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "eraseCircleView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getEraseViewOffset()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;->h:[I

    return-object p0
.end method

.method public switchLastTool(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$3;->i:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->switchLastTool(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method
