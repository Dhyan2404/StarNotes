.class public abstract Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final clContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconView:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSelectedArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mModel:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final vSelectedHorizontal:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final value:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->clContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->iconView:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->ivSelectedArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->vSelectedHorizontal:Lcom/onyx/android/sdk/theme/widgets/TintView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->value:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->item_pen_box_pen_horizontal:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->item_pen_box_pen_horizontal:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->item_pen_box_pen_horizontal:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenHorizontalBinding;->mModel:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    return-object p0
.end method

.method public abstract setModel(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
