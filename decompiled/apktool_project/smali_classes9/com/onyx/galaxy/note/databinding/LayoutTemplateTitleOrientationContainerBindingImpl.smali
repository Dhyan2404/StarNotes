.class public Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;
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

    sput-object v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->u0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_cover_container:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_title_thumb_cover:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_cover_type:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_paper_container:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_title_thumb_paper:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_paper_type:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_note_setting_container:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_params_container:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->et_note_name:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_params_tag_container:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_bench_mark_title:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->cl_tag_container:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_bench_mark_add:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->view_params_tag_divider:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_params_cover_container:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->switch_cover:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->view_params_cover_divider:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_params_format_container:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_orientation_size_container:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_orientation_size:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_format_arrow:I

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->t0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->u0:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v5, 0x9

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    const/16 v6, 0xd

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v7, 0x15

    aget-object v7, p3, v7

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v8, 0x2

    aget-object v8, p3, v8

    check-cast v8, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    const/4 v9, 0x5

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    const/4 v10, 0x1

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v12, 0x13

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    aget-object v13, p3, v13

    check-cast v13, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v14, 0x8

    aget-object v14, p3, v14

    check-cast v14, Lcom/onyx/galaxy/note/common/view/MaxWidthLinearLayout;

    const/16 v16, 0xf

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/FrameLayout;

    move-object/from16 v15, v16

    const/16 v16, 0x12

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/FrameLayout;

    const/16 v17, 0xa

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x10

    aget-object v18, p3, v18

    check-cast v18, Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    const/16 v19, 0x0

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0xb

    aget-object v20, p3, v20

    check-cast v20, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v21, 0x3

    aget-object v21, p3, v21

    check-cast v21, Lcom/onyx/android/sdk/ui/MediumTextView;

    const/16 v22, 0x14

    aget-object v22, p3, v22

    check-cast v22, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v23, 0x6

    aget-object v23, p3, v23

    check-cast v23, Lcom/onyx/android/sdk/ui/MediumTextView;

    const/16 v24, 0x11

    aget-object v24, p3, v24

    check-cast v24, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v25, 0xe

    aget-object v25, p3, v25

    check-cast v25, Landroid/view/View;

    invoke-direct/range {v0 .. v25}, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/galaxy/note/common/view/MaxWidthLinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/ui/MediumTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/ui/MediumTextView;Lcom/onyx/android/sdk/theme/widgets/TintView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->q0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->templateCreateLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 5
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->q0:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->q0:J

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

    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBindingImpl;->q0:J

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method
