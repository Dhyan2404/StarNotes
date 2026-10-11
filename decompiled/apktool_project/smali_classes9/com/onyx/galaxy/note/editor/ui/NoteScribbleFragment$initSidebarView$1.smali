.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->g1(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1",
        "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;",
        "",
        "onStartDrag",
        "",
        "newWidth",
        "",
        "isMinLevel",
        "onWidthChanged",
        "",
        "translateX",
        "onTranslate",
        "level",
        "levelSize",
        "onLevelChanged",
        "onCollapse",
        "onStopDrag",
        "b",
        "c",
        "a",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->b:Z

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->c:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getToolDragView()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->isToolbarAlignedWithSidebar(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeatureManager$Companion;->isCurTouchModeSupportEdit()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorBundleManager$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$createEditorSideBarInfo(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/event/SidebarWidthChangedEvent;-><init>(Lcom/onyx/galaxy/note/editor/event/EditorSideBarInfo;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$handleDragToolOffset(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$hideToolDragView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Z)V

    return-void
.end method

.method public onCollapse()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->c:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$showSideBarLayout(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$handleDragToolOffset(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    return-void
.end method

.method public onLevelChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p2, Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;-><init>(I)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartDrag()V
    .locals 9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$hideToolDragView(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Z)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$hidePenBox(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->editorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v8, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v8}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public onStopDrag()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$reactivatePenBox(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->c()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$refreshScrollerParams(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$onContainerRectChanged(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->b()V

    return-void
.end method

.method public onTranslate(F)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->leftSideBarLayout:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    const-string v1, "leftSideBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->b:Z

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->shapeAndTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toSignInteger(Ljava/lang/Boolean;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->a:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->access$computeEditorOffsetBySidebar(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onWidthChanged(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initSidebarView$1;->b()V

    return-void
.end method
