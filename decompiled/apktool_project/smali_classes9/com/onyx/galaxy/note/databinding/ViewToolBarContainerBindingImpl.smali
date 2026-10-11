.class public Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;
.source "SourceFile"


# static fields
.field public static final t0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final u0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public q0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->u0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->tl_drag_tool_mask:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_tool_container:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_undo_redo_container:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->undo_redo_divider:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->rl_shape_tool_view_auto:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->params_container:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->scroll_params_container:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->image_shape_params_container:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->lasso_type_params_container:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->excerpt_type_params_container:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->eraser_type_params_container:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->sticker_params_container:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_full_screen:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tool_container_divider_top:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tool_container_divider_bottom:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_drag_holder_icon:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->guide_view:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->guide_line:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->guide_divider:I

    const/16 v2, 0x15

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->t0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->u0:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/16 v5, 0xd

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;

    const/16 v6, 0xc

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;

    const/16 v7, 0x15

    aget-object v7, p3, v7

    check-cast v7, Landroid/view/View;

    const/16 v8, 0x14

    aget-object v8, p3, v8

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/16 v9, 0x13

    aget-object v9, p3, v9

    check-cast v9, Landroid/view/View;

    const/16 v10, 0xa

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;

    const/16 v11, 0x12

    aget-object v11, p3, v11

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v12, 0xf

    aget-object v12, p3, v12

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v13, 0xb

    aget-object v13, p3, v13

    check-cast v13, Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;

    const/4 v14, 0x4

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v15, v16

    const/16 v16, 0x8

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/FrameLayout;

    const/16 v17, 0x2

    aget-object v17, p3, v17

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v18, 0x7

    aget-object v18, p3, v18

    check-cast v18, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    const/16 v19, 0x9

    aget-object v19, p3, v19

    check-cast v19, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    const/16 v20, 0xe

    aget-object v20, p3, v20

    check-cast v20, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    const/16 v21, 0x3

    aget-object v21, p3, v21

    check-cast v21, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v22, 0x11

    aget-object v22, p3, v22

    check-cast v22, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v23, 0x10

    aget-object v23, p3, v23

    check-cast v23, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v24, 0x1

    aget-object v24, p3, v24

    check-cast v24, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v25, 0x6

    aget-object v25, p3, v25

    check-cast v25, Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-direct/range {v0 .. v25}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/editor/view/toolbar/EraserTypeParamsContainer;Lcom/onyx/galaxy/note/editor/view/toolbar/ExcerptTypeParamsContainer;Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/ImageShapeParamsContainer;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/toolbar/LassoTypeParamsContainer;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->clDragContainer:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->redo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->undo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 7
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->mCommandDataInfo:Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x1e

    const-wide/16 v9, 0x1d

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v6, :cond_9

    and-long v13, v2, v9

    cmp-long v6, v13, v4

    if-eqz v6, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->getCanUndo()Landroidx/databinding/ObservableBoolean;

    move-result-object v13

    goto :goto_0

    :cond_0
    move-object v13, v11

    :goto_0
    invoke-virtual {v1, v12, v13}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v13

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v13, :cond_2

    const-wide/16 v14, 0x100

    goto :goto_2

    :cond_2
    const-wide/16 v14, 0x80

    :goto_2
    or-long/2addr v2, v14

    goto :goto_3

    :cond_3
    move v13, v12

    :cond_4
    :goto_3
    and-long v14, v2, v7

    cmp-long v6, v14, v4

    if-eqz v6, :cond_8

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->getCanRedo()Landroidx/databinding/ObservableBoolean;

    move-result-object v14

    goto :goto_4

    :cond_5
    move-object v14, v11

    :goto_4
    const/4 v15, 0x1

    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v14

    goto :goto_5

    :cond_6
    move v14, v12

    :goto_5
    if-eqz v6, :cond_a

    if-eqz v14, :cond_7

    const-wide/16 v15, 0x40

    goto :goto_6

    :cond_7
    const-wide/16 v15, 0x20

    :goto_6
    or-long/2addr v2, v15

    goto :goto_7

    :cond_8
    move v14, v12

    goto :goto_7

    :cond_9
    move v13, v12

    move v14, v13

    :cond_a
    :goto_7
    const-wide/16 v15, 0x140

    and-long/2addr v15, v2

    cmp-long v6, v15, v4

    if-eqz v6, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;->getEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v11

    :cond_b
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v11}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_8

    :cond_c
    move v0, v12

    :goto_8
    and-long v6, v2, v7

    cmp-long v6, v6, v4

    if-eqz v6, :cond_d

    if-eqz v14, :cond_d

    move v7, v0

    goto :goto_9

    :cond_d
    move v7, v12

    :goto_9
    and-long/2addr v2, v9

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    if-eqz v13, :cond_e

    move v12, v0

    :cond_e
    if-eqz v6, :cond_f

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->redo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    :cond_f
    if-eqz v2, :cond_10

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->undo:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setEnabled(Z)V

    :cond_10
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x10

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->t(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->r(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->s(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p0

    return p0
.end method

.method public final r(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

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

.method public final s(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

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

.method public setCommandDataInfo(Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBinding;->mCommandDataInfo:Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->setCommandDataInfo(Lcom/onyx/android/sdk/universal/editor/data/CommandDataInfo;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/ViewToolBarContainerBindingImpl;->q0:J

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
