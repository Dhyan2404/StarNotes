.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->e1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;",
        "onDragStateChange",
        "",
        "isDragging",
        "",
        "dockType",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->b(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$resetPenBoxPosition(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$onContainerRectChanged(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method


# virtual methods
.method public onDragStateChange(ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 2
    .param p2    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateSideBarView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateShapeView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$handleDragToolOffset(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateEditorScrollerParams(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateDragEffectView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    new-instance p2, Lcom/sunia/HTREnginev2/o1k;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/o1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->times_1000:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
