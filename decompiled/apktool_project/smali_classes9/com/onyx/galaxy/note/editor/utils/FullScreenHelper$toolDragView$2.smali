.class final Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$toolDragView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$toolDragView$2;->this$0:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$toolDragView$2;->this$0:Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;->getScribbleFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper$toolDragView$2;->invoke()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    return-object p0
.end method
