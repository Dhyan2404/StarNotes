.class public final Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dragEffectView:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final driveTokenExpiredTipContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final eraseCircle:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final flShapeContent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectionMenus:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final textBoxView:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 0
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/appcompat/widget/AppCompatImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragEffectView:Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->dragTool:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->driveTokenExpiredTipContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->eraseCircle:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->flShapeContent:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->selectionMenus:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->splitScreen:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->textBoxView:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->drag_effect_view:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;

    if-eqz v4, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->drag_tool:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    if-eqz v5, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->drive_token_expired_tip_container:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;

    if-eqz v6, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->eraseCircle:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->fl_shape_content:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_full_screen:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v9, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->selectionMenus:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    if-eqz v10, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->split_screen:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    if-eqz v11, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->textBoxView:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    if-eqz v12, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectView;Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;
    .locals 2
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

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_shpae_and_tool_container:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShpaeAndToolContainerBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
