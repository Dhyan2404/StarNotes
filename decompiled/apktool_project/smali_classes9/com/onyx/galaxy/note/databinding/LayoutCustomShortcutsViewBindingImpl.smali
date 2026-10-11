.class public Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;
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
.field public final q0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->v0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->left_scroll_view:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->left_shortcut_container:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_camera:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_screen_shot:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->record_layout:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_audio_set:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_audio_set_normal:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_audio_set_preview:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_audio_set_new_record:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_title_more:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_slide:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_add_page:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_title_layer:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_touch_mode:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_touch_mode_stylus:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_touch_mode_finger:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_adjust_page_whitespace:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_doc_overview_full:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_export_doc:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_realtime_beautify:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_realtime_mode:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_realtime_mode_inner:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_realtime_settings:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_non_realtime_mode:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_reading_mode:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_reading_mode_note:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_reading_mode_reading:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_counter:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_encryption:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_encryption_lock:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_encryption_unlock:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_overview:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_mode:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_full_screen:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->left_side_divider:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->right_scroll_view:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->right_shortcut_container:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->right_side_divider:I

    const/16 v2, 0x28

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->v0:Landroid/util/SparseIntArray;

    const/16 v2, 0x29

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 44

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v5, 0xe

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v6, 0x13

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v7, 0x8

    aget-object v7, p3, v7

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/16 v8, 0xb

    aget-object v8, p3, v8

    check-cast v8, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v9, 0x9

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v10, 0xa

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/4 v11, 0x5

    aget-object v11, p3, v11

    check-cast v11, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v12, 0x1e

    aget-object v12, p3, v12

    check-cast v12, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v13, 0x14

    aget-object v13, p3, v13

    check-cast v13, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v14, 0x1f

    aget-object v14, p3, v14

    check-cast v14, Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const/16 v16, 0x20

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v15, v16

    const/16 v16, 0x21

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v17, 0x15

    aget-object v17, p3, v17

    check-cast v17, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v18, 0x24

    aget-object v18, p3, v18

    check-cast v18, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v19, 0x1a

    aget-object v19, p3, v19

    check-cast v19, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v20, 0x23

    aget-object v20, p3, v20

    check-cast v20, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v21, 0x22

    aget-object v21, p3, v21

    check-cast v21, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v22, 0x1b

    aget-object v22, p3, v22

    check-cast v22, Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const/16 v23, 0x1c

    aget-object v23, p3, v23

    check-cast v23, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v24, 0x1d

    aget-object v24, p3, v24

    check-cast v24, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v25, 0x16

    aget-object v25, p3, v25

    check-cast v25, Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const/16 v26, 0x17

    aget-object v26, p3, v26

    check-cast v26, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/16 v27, 0x18

    aget-object v27, p3, v27

    check-cast v27, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v28, 0x19

    aget-object v28, p3, v28

    check-cast v28, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v29, 0x1

    aget-object v29, p3, v29

    check-cast v29, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v30, 0x6

    aget-object v30, p3, v30

    check-cast v30, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v31, 0xd

    aget-object v31, p3, v31

    check-cast v31, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v32, 0xf

    aget-object v32, p3, v32

    check-cast v32, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v33, 0xc

    aget-object v33, p3, v33

    check-cast v33, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v34, 0x10

    aget-object v34, p3, v34

    check-cast v34, Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const/16 v35, 0x12

    aget-object v35, p3, v35

    check-cast v35, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v36, 0x11

    aget-object v36, p3, v36

    check-cast v36, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v37, 0x3

    aget-object v37, p3, v37

    check-cast v37, Landroid/widget/HorizontalScrollView;

    const/16 v38, 0x4

    aget-object v38, p3, v38

    check-cast v38, Landroid/widget/LinearLayout;

    const/16 v39, 0x25

    aget-object v39, p3, v39

    check-cast v39, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v40, 0x7

    aget-object v40, p3, v40

    check-cast v40, Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const/16 v41, 0x26

    aget-object v41, p3, v41

    check-cast v41, Landroid/widget/HorizontalScrollView;

    const/16 v42, 0x27

    aget-object v42, p3, v42

    check-cast v42, Landroid/widget/LinearLayout;

    const/16 v43, 0x28

    aget-object v43, p3, v43

    check-cast v43, Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-direct/range {v0 .. v43}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;Landroid/widget/HorizontalScrollView;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRecord:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->q0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 8
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->mAudioViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    const-wide/16 v5, 0xf

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    and-long v10, v0, v6

    cmp-long v10, v10, v2

    if-eqz v10, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isRecording()Z

    move-result v10

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    xor-int/lit8 v11, v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v8

    move v11, v10

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v9

    :goto_2
    invoke-virtual {p0, v8, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->getTime()Landroidx/databinding/ObservableField;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v9

    :goto_3
    const/4 v8, 0x2

    invoke-virtual {p0, v8, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    :cond_4
    move v8, v10

    goto :goto_4

    :cond_5
    move v11, v8

    :goto_4
    if-eqz v5, :cond_6

    iget-object v4, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v8}, Lcom/onyx/android/sdk/extension/BindingAdapterUtils;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRecord:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p0, v11}, Lcom/onyx/android/sdk/extension/BindingAdapterUtils;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :cond_7
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

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

    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

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
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t(Landroidx/databinding/ObservableField;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->r(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p2, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->s(Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

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

.method public final s(Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

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

.method public setAudioViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->mAudioViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

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

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->setAudioViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBindingImpl;->t0:J

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
