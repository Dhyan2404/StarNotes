.class public Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;
.super Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
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
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->v0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->editor_container:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->touch_container:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->btn_move:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->iv_move:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->iv_left:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->iv_right:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->iv_top:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/android/sdk/textbox/R$id;->iv_bottom:I

    const/16 v2, 0x10

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
    sget-object v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->v0:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/16 v4, 0xb

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/FrameLayout;

    const/16 v5, 0x9

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;

    const/16 v6, 0x10

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const/16 v7, 0xd

    aget-object v7, p3, v7

    check-cast v7, Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const/16 v8, 0xc

    aget-object v8, p3, v8

    check-cast v8, Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const/16 v9, 0xe

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const/16 v10, 0xf

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/android/sdk/textbox/widget/TintImageView;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/FrameLayout;

    const/4 v12, 0x5

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/FrameLayout;

    const/16 v13, 0x8

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/4 v14, 0x6

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/FrameLayout;

    const/16 v16, 0x4

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/FrameLayout;

    move-object/from16 v15, v16

    const/16 v16, 0x1

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/FrameLayout;

    const/16 v17, 0x2

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/FrameLayout;

    const/16 v18, 0x3

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/FrameLayout;

    const/16 v19, 0xa

    aget-object v19, p3, v19

    check-cast v19, Landroid/view/View;

    invoke-direct/range {v0 .. v19}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/onyx/android/sdk/textbox/widget/TintLinearLayout;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Lcom/onyx/android/sdk/textbox/widget/TintImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->t0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftBottomHandle:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftTopHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->q0:Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightBottomHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightTopHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionBottomHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionLeftHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionRightHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionTopHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 14
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->t0:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->mIsAdaptiveMode:Ljava/lang/Boolean;

    const-wide/16 v5, 0x5

    and-long v7, v0, v5

    cmp-long v7, v7, v2

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v7, :cond_1

    if-eqz v4, :cond_0

    const-wide/16 v9, 0x10

    or-long/2addr v0, v9

    const-wide/16 v9, 0x40

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x8

    or-long/2addr v0, v9

    const-wide/16 v9, 0x20

    :goto_0
    or-long/2addr v0, v9

    :cond_1
    const/16 v7, 0x8

    if-eqz v4, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    if-eqz v4, :cond_4

    move v8, v7

    goto :goto_2

    :cond_3
    move v9, v8

    :cond_4
    :goto_2
    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftBottomHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->leftTopHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightBottomHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->rightTopHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionBottomHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionLeftHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionRightHandle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionTopHandle:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
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
    iget-wide v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->t0:J

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

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->t0:J

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
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setIsAdaptiveMode(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->mIsAdaptiveMode:Ljava/lang/Boolean;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->t0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lcom/onyx/android/sdk/textbox/BR;->isAdaptiveMode:I

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

.method public setResizeIconRes(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->mResizeIconRes:Ljava/lang/Integer;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/onyx/android/sdk/textbox/BR;->isAdaptiveMode:I

    if-ne v0, p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->setIsAdaptiveMode(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/android/sdk/textbox/BR;->resizeIconRes:I

    if-ne v0, p1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBindingImpl;->setResizeIconRes(Ljava/lang/Integer;)V

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
