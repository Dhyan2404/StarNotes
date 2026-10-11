.class public abstract Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editorView:Lcom/onyx/android/sdk/universal/editor/display/EditorView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editorViewContainer:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editorViewFocusRect:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editorViewLockLayout:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final magnifierLayout:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pageNumView:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rulerView:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shapesLocationBar:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;Lcom/onyx/android/sdk/universal/editor/display/EditorView;Landroid/widget/RelativeLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bottomLayout:Lcom/onyx/galaxy/note/databinding/DragBottomLayoutBinding;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorView:Lcom/onyx/android/sdk/universal/editor/display/EditorView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorViewContainer:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorViewFocusRect:Lcom/onyx/android/sdk/theme/widgets/TintView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->editorViewLockLayout:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->magnifierLayout:Lcom/onyx/galaxy/note/databinding/MagnifierEditorLayoutBinding;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageNumView:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rightLayout:Lcom/onyx/galaxy/note/databinding/DragRightLayoutBinding;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->rulerView:Lcom/onyx/galaxy/note/editor/view/ruler/RulerView;

    iput-object p14, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->shapesLocationBar:Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    iput-object p15, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->viewDragView:Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->editor_view_drag_layout:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->editor_view_drag_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$layout;->editor_view_drag_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    return-object p0
.end method
