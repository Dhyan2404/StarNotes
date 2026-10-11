.class public abstract Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final addToPenBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final divider:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final paramsContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final shapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvColorTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;Landroid/widget/FrameLayout;Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/ui/MediumTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->addToPenBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->colorLayout:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->divider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->paramsContainer:Landroid/widget/FrameLayout;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->shapeToolContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    iput-object p14, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->tvColorTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p15, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_write_pen_group:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_write_pen_group:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_write_pen_group:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;

    return-object p0
.end method
