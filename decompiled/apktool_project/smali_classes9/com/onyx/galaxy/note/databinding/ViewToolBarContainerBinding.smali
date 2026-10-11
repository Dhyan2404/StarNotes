.class public abstract Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final clDragContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final eraserTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final excerptTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideLine:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guideView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageShapeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivDragHolderIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lassoTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llToolContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llUndoRedoContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mCommandDataInfo:Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final paramsContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final redo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stickerParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tlDragToolMask:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toolContainerDividerBottom:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toolContainerDividerTop:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final undo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final undoRedoDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->clDragContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->eraserTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->excerptTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->guideDivider:Landroid/view/View;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->guideLine:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->guideView:Landroid/view/View;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->imageShapeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivDragHolderIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->ivFullScreen:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->lassoTypeParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->llToolContainer:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->llUndoRedoContainer:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->paramsContainer:Landroid/widget/FrameLayout;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->redo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->rlShapeToolViewAuto:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->scrollParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->stickerParamsContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->tlDragToolMask:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerBottom:Lcom/onyx/android/sdk/theme/widgets/TintView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->toolContainerDividerTop:Lcom/onyx/android/sdk/theme/widgets/TintView;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->undo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->undoRedoDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->view_tool_bar_container:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->view_tool_bar_container:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->view_tool_bar_container:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;

    return-object p0
.end method


# virtual methods
.method public getCommandDataInfo()Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->mCommandDataInfo:Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    return-object p0
.end method

.method public abstract setCommandDataInfo(Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
