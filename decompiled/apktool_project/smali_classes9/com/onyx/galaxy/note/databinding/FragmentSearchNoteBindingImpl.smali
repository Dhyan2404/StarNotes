.class public Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;
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
.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->v0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->searchScopeBinding:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_bg:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_ops:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_expand:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_setting:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_library:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_title:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->text_input_layout_name:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->text_input_edit_text_view_name:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->loadingLayout:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->loadingView:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->progressText:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->countText:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->closeSearchButton:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_search:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->rv_search:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->empty_view:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->hwr_switch_button:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->btn_cancel:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_history_title:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->btn_clear:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_divider:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->sv_history:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->cg_history:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->guideline1:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->barrier1:I

    const/16 v2, 0x1b

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->v0:Landroid/util/SparseIntArray;

    const/16 v2, 0x1c

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 32

    move-object/from16 v15, p0

    const/4 v3, 0x2

    const/16 v0, 0x1b

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    const/16 v0, 0x14

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0x16

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0x19

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/chip/ChipGroup;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const/16 v0, 0x1a

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0x13

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ImageView;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    const/4 v0, 0x2

    .line 3
    aget-object v0, p3, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_0

    :cond_0
    move-object/from16 v31, v2

    :goto_0
    const/16 v0, 0x18

    aget-object v0, p3, v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/widget/ScrollView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v26, v0

    check-cast v26, Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    const/16 v0, 0x15

    aget-object v0, p3, v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object/from16 v29, v0

    check-cast v29, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v0, 0x17

    aget-object v0, p3, v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v31

    .line 4
    invoke-direct/range {v0 .. v30}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/google/android/material/chip/ChipGroup;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/category/view/CommonEmptyView;Landroidx/constraintlayout/widget/Guideline;Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/LinearLayout;Lcom/onyx/galaxy/note/ui/view/ShadowLayout;Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;Lcom/onyx/galaxy/note/databinding/LayoutSearchScopeBinding;Landroid/widget/ScrollView;Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 5
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

    .line 6
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->cls:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 9
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

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
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->s(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->r(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

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

.method public final s(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->t0:J

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

.method public setNoteViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->mNoteViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-void
.end method

.method public setSearchViewModel(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->mSearchViewModel:Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->setNoteViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    if-ne v0, p1, :cond_1

    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBindingImpl;->setSearchViewModel(Lcom/onyx/galaxy/note/category/viewmodel/SearchNoteViewModel;)V

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
