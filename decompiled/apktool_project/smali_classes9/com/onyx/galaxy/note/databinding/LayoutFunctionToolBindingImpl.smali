.class public Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;


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
.field public final q0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->v0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_back:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_tab_indicator:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_custom_shortcut:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_title_cloud:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->progress_sync:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_sync_status:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_layout:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->play_layout:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->btn_audio_close:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->btn_audio_more:I

    const/16 v2, 0xe

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->v0:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v5, 0xd

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v6, 0xe

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v14, 0x1

    aget-object v7, p3, v14

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v8, 0x5

    aget-object v8, p3, v8

    check-cast v8, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/4 v9, 0x7

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v10, 0xa

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/4 v11, 0x6

    aget-object v11, p3, v11

    check-cast v11, Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const/16 v12, 0x8

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/FrameLayout;

    const/16 v13, 0xc

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/FrameLayout;

    const/16 v16, 0x3

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v14, v16

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    move-object/from16 v15, v16

    const/16 v16, 0x2

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;

    const/16 v17, 0xb

    aget-object v17, p3, v17

    check-cast v17, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    const/16 v18, 0x4

    aget-object v18, p3, v18

    check-cast v18, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-direct/range {v0 .. v18}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->autoLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioPlay:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playProgressTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->tvPlaySpeed:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 9
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 10
    new-instance v0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;-><init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->q0:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->mAudioViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->onPlay()V

    :cond_1
    return-void
.end method

.method public executeBindings()V
    .locals 30

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->mAudioViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x12c

    const-wide/16 v9, 0x168

    const-wide/16 v11, 0x12a

    const-wide/16 v13, 0x128

    const-wide/16 v17, 0x129

    const-wide/16 v19, 0x138

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v6, :cond_11

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, v16

    :goto_0
    const/4 v6, 0x3

    invoke-virtual {v1, v6, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    and-long v23, v2, v17

    cmp-long v6, v23, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getAudioDataSet()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object/from16 v6, v16

    :goto_1
    invoke-virtual {v1, v15, v6}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    goto :goto_2

    :cond_2
    move-object/from16 v6, v16

    :goto_2
    and-long v23, v2, v13

    cmp-long v23, v23, v4

    if-eqz v23, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getOnMediaSeekChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v23

    goto :goto_3

    :cond_3
    move-object/from16 v23, v16

    :goto_3
    and-long v24, v2, v11

    cmp-long v24, v24, v4

    if-eqz v24, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getCurrentPosition()Landroidx/databinding/ObservableInt;

    move-result-object v24

    move-object/from16 v15, v24

    goto :goto_4

    :cond_4
    move-object/from16 v15, v16

    :goto_4
    const/4 v11, 0x1

    invoke-virtual {v1, v11, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    and-long v11, v2, v7

    cmp-long v11, v11, v4

    if-eqz v11, :cond_8

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getPlaySpeed()Landroidx/databinding/ObservableField;

    move-result-object v11

    goto :goto_6

    :cond_6
    move-object/from16 v11, v16

    :goto_6
    const/4 v12, 0x2

    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;

    goto :goto_7

    :cond_7
    move-object/from16 v11, v16

    :goto_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;->getText()Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_8
    move-object/from16 v11, v16

    :goto_8
    and-long v26, v2, v19

    cmp-long v12, v26, v4

    if-eqz v12, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getPlayIcon()Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_9

    :cond_9
    move-object/from16 v12, v16

    :goto_9
    const/4 v7, 0x4

    invoke-virtual {v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    goto :goto_a

    :cond_a
    move-object/from16 v12, v16

    :cond_b
    :goto_a
    and-long v7, v2, v9

    cmp-long v7, v7, v4

    if-eqz v7, :cond_d

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getDuration()Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_b

    :cond_c
    move-object/from16 v7, v16

    :goto_b
    const/4 v8, 0x6

    invoke-virtual {v1, v8, v7}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    goto :goto_c

    :cond_d
    move-object/from16 v7, v16

    :cond_e
    :goto_c
    const-wide/16 v21, 0x1a8

    and-long v28, v2, v21

    cmp-long v8, v28, v4

    if-eqz v8, :cond_10

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->getPlayingTime()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_d

    :cond_f
    move-object/from16 v0, v16

    :goto_d
    const/4 v8, 0x7

    invoke-virtual {v1, v8, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    :cond_10
    move-object v8, v6

    move-object/from16 v0, v16

    move-object/from16 v6, v23

    goto :goto_e

    :cond_11
    move-object/from16 v0, v16

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    const/4 v15, 0x0

    :goto_e
    and-long v19, v2, v19

    cmp-long v16, v19, v4

    if-eqz v16, :cond_12

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioPlay:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v9, v12}, Lcom/onyx/android/sdk/extension/BindingAdapterUtils;->setTintImageIcon(Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroidx/databinding/ObservableInt;)V

    :cond_12
    const-wide/16 v9, 0x100

    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_13

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioPlay:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->q0:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const-wide/16 v9, 0x1a8

    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_14

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playProgressTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v9, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_14
    and-long v9, v2, v13

    cmp-long v0, v9, v4

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;

    invoke-static {v0, v6}, Lcom/onyx/android/sdk/extension/BindingAdapterUtils;->setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_15
    const-wide/16 v9, 0x168

    and-long/2addr v9, v2

    cmp-long v0, v9, v4

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;

    invoke-static {v0, v7}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setTSBMax(Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;Landroidx/databinding/ObservableInt;)V

    :cond_16
    and-long v6, v2, v17

    cmp-long v0, v6, v4

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;

    invoke-static {v0, v8}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setTSBTicks(Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V

    :cond_17
    const-wide/16 v6, 0x12a

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->seekBar:Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/SeekBarBindingAdapter;->setProgress(Landroid/widget/SeekBar;I)V

    :cond_18
    const-wide/16 v6, 0x12c

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->tvPlaySpeed:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_19
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

    const-wide/16 v0, 0x100

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->y(Landroidx/databinding/ObservableField;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->v(Landroidx/databinding/ObservableInt;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->r(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->w(Landroidx/databinding/ObservableInt;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->s(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->x(Landroidx/databinding/ObservableField;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->u(Landroidx/databinding/ObservableInt;I)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t(Landroidx/databinding/ObservableField;I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

.method public final s(Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->mAudioViewModel:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

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

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->setAudioViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

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
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

.method public final u(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

.method public final v(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

.method public final w(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

.method public final x(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Lcom/onyx/galaxy/note/editor/data/PlaySpeedType;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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

.method public final y(Landroidx/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBindingImpl;->t0:J

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
