.class final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->o2(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

.field final synthetic $it:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->$it:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->invoke$lambda$0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$onContainerRectChanged(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-static {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateShapeView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->$dockType:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$updateSideBarView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->$it:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->updateView()V

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$updateViewByTouchMode$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/d;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
