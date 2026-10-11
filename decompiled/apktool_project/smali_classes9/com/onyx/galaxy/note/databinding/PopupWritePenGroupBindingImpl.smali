.class public Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;
.source "SourceFile"


# static fields
.field public static final u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final v0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "include_ballpoint_pen_popup_params"

    const-string v2, "include_pencil_popup_params"

    const-string v3, "include_ink_pen_popup_params"

    const-string v4, "include_art_ink_pen_popup_params"

    const-string v5, "include_soft_paint_pen_popup_params"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    filled-new-array {v4, v5, v6, v2, v3}, [I

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$layout;->include_ink_pen_popup_params:I

    sget v4, Lcom/onyx/galaxy/note/R$layout;->include_art_ink_pen_popup_params:I

    sget v5, Lcom/onyx/galaxy/note/R$layout;->include_soft_paint_pen_popup_params:I

    sget v6, Lcom/onyx/galaxy/note/R$layout;->include_ballpoint_pen_popup_params:I

    sget v7, Lcom/onyx/galaxy/note/R$layout;->include_pencil_popup_params:I

    filled-new-array {v3, v4, v5, v6, v7}, [I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->v0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_title:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->divider:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->shape_tool_container:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_color_title:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->color_layout:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->add_to_pen_box:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->v0:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v15, p0

    const/4 v3, 0x5

    const/16 v0, 0xc

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/FrameLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/onyx/android/sdk/ui/MediumTextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorArgsPropertyLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;Landroid/widget/FrameLayout;Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconContainer;Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/ui/MediumTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 5
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 6
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->q0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->paramsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 11
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    .line 12
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x20

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->u(Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->s(Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p2, Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->r(Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;I)Z

    move-result p0

    return p0

    :cond_3
    check-cast p2, Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->v(Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;I)Z

    move-result p0

    return p0

    :cond_4
    check-cast p2, Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t(Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s(Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->inkParams:Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->artPenParams:Lcom/onyx/galaxy/note/databinding/IncludeArtInkPenPopupParamsBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->softPaintPenParams:Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->ballpointPenParams:Lcom/onyx/galaxy/note/databinding/IncludeBallpointPenPopupParamsBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;->pencilParams:Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public final t(Lcom/onyx/galaxy/note/databinding/IncludeInkPenPopupParamsBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(Lcom/onyx/galaxy/note/databinding/IncludePencilPopupParamsBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v(Lcom/onyx/galaxy/note/databinding/IncludeSoftPaintPenPopupParamsBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBindingImpl;->t0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
