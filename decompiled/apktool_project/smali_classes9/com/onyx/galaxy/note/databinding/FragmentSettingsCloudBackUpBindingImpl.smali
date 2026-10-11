.class public Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;
.source "SourceFile"


# static fields
.field public static final v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final w0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final t0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public u0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "layout_wifi_and_mobile_container"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    filled-new-array {v2}, [I

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$layout;->layout_wifi_and_mobile_container:I

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->w0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_backup_path:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_last_cloud_back_time:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->switch_auto_backup:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_backup_now:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_baidu_import:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_google_import:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_onedrive_import:I

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->w0:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v15, p0

    const/4 v3, 0x7

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;Lcom/onyx/galaxy/note/ui/view/ManualSwitchCompat;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v15, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    .line 4
    iget-object v0, v15, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    invoke-virtual {v15, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iput-object v0, v15, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->t0:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v15, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBaiduBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v15, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvGoogleBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v15, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvOnedriveBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 12
    invoke-virtual {v15, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 28

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->mViewModel:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    const-wide/16 v6, 0xf7

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0xb0

    const-wide/16 v9, 0xa4

    const-wide/16 v11, 0xa1

    const-wide/16 v13, 0xa2

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v6, :cond_1e

    and-long v19, v2, v11

    cmp-long v6, v19, v4

    if-eqz v6, :cond_5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthGoogleDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v19

    move-object/from16 v11, v19

    goto :goto_0

    :cond_0
    move-object/from16 v11, v16

    :goto_0
    invoke-virtual {v1, v15, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object/from16 v11, v16

    :goto_1
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v6, :cond_3

    if-eqz v11, :cond_2

    const-wide/16 v21, 0x2000

    goto :goto_2

    :cond_2
    const-wide/16 v21, 0x1000

    :goto_2
    or-long v2, v2, v21

    :cond_3
    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvGoogleBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v11, :cond_4

    sget v11, Lcom/onyx/galaxy/note/R$string;->cloud_backup_unbind:I

    goto :goto_3

    :cond_4
    sget v11, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind:I

    :goto_3
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object/from16 v6, v16

    :goto_4
    and-long v11, v2, v13

    cmp-long v11, v11, v4

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isWifiOnly()Landroidx/lifecycle/MutableLiveData;

    move-result-object v11

    goto :goto_5

    :cond_6
    move-object/from16 v11, v16

    :goto_5
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_6

    :cond_7
    move-object/from16 v11, v16

    :goto_6
    and-long v21, v2, v9

    cmp-long v21, v21, v4

    const/16 v22, 0x8

    if-eqz v21, :cond_d

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthOneDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v23

    move-object/from16 v12, v23

    goto :goto_7

    :cond_8
    move-object/from16 v12, v16

    :goto_7
    const/4 v15, 0x2

    invoke-virtual {v1, v15, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_8

    :cond_9
    move-object/from16 v12, v16

    :goto_8
    if-nez v12, :cond_a

    const/4 v12, 0x1

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    :goto_9
    if-eqz v21, :cond_c

    if-eqz v12, :cond_b

    const-wide/16 v24, 0x800

    goto :goto_a

    :cond_b
    const-wide/16 v24, 0x400

    :goto_a
    or-long v2, v2, v24

    :cond_c
    if-eqz v12, :cond_d

    move/from16 v12, v22

    goto :goto_b

    :cond_d
    const/4 v12, 0x0

    :goto_b
    and-long v24, v2, v7

    cmp-long v15, v24, v4

    if-eqz v15, :cond_13

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthOneDrive()Landroidx/lifecycle/MutableLiveData;

    move-result-object v21

    move-object/from16 v9, v21

    goto :goto_c

    :cond_e
    move-object/from16 v9, v16

    :goto_c
    const/4 v10, 0x4

    invoke-virtual {v1, v10, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_d

    :cond_f
    move-object/from16 v9, v16

    :goto_d
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v15, :cond_11

    if-eqz v9, :cond_10

    const-wide/32 v26, 0x20000

    goto :goto_e

    :cond_10
    const-wide/32 v26, 0x10000

    :goto_e
    or-long v2, v2, v26

    :cond_11
    if-eqz v9, :cond_12

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvOnedriveBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/onyx/galaxy/note/R$string;->cloud_backup_unbind:I

    goto :goto_f

    :cond_12
    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvOnedriveBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind:I

    :goto_f
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_10

    :cond_13
    move-object/from16 v9, v16

    :goto_10
    const-wide/16 v17, 0xe0

    and-long v26, v2, v17

    cmp-long v10, v26, v4

    if-eqz v10, :cond_1d

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;->isAuthBaidu()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_11

    :cond_14
    move-object/from16 v0, v16

    :goto_11
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Boolean;

    :cond_15
    if-nez v16, :cond_16

    const/16 v23, 0x1

    goto :goto_12

    :cond_16
    const/16 v23, 0x0

    :goto_12
    invoke-static/range {v16 .. v16}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v10, :cond_18

    if-eqz v23, :cond_17

    const-wide/16 v15, 0x200

    goto :goto_13

    :cond_17
    const-wide/16 v15, 0x100

    :goto_13
    or-long/2addr v2, v15

    :cond_18
    const-wide/16 v15, 0xe0

    and-long v26, v2, v15

    cmp-long v10, v26, v4

    if-eqz v10, :cond_1a

    if-eqz v0, :cond_19

    const-wide/32 v15, 0x8000

    goto :goto_14

    :cond_19
    const-wide/16 v15, 0x4000

    :goto_14
    or-long/2addr v2, v15

    :cond_1a
    if-eqz v23, :cond_1b

    move/from16 v15, v22

    goto :goto_15

    :cond_1b
    const/4 v15, 0x0

    :goto_15
    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBaiduBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v10, Lcom/onyx/galaxy/note/R$string;->cloud_backup_unbind:I

    goto :goto_16

    :cond_1c
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBaiduBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v10, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind:I

    :goto_16
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    goto :goto_18

    :cond_1d
    move-object/from16 v0, v16

    goto :goto_17

    :cond_1e
    move-object/from16 v0, v16

    move-object v6, v0

    move-object v9, v6

    move-object v11, v9

    const/4 v12, 0x0

    :goto_17
    const/4 v15, 0x0

    :goto_18
    and-long/2addr v13, v2

    cmp-long v10, v13, v4

    if-eqz v10, :cond_1f

    iget-object v10, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    invoke-virtual {v10, v11}, Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;->setIsWifiOnly(Ljava/lang/Boolean;)V

    :cond_1f
    const-wide/16 v10, 0xe0

    and-long/2addr v10, v2

    cmp-long v10, v10, v4

    if-eqz v10, :cond_20

    iget-object v10, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBaiduBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v10, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvBaiduBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvGoogleBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    const-wide/16 v10, 0xa1

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvGoogleBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_21
    and-long v6, v2, v7

    cmp-long v0, v6, v4

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvOnedriveBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_22
    const-wide/16 v6, 0xa4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->tvOnedriveBindState:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
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

    const-wide/16 v0, 0x80

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

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
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->t(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->s(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->w(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->r(Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->v(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->x(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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

.method public final s(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->flWifiAndMobile:Lcom/onyx/galaxy/note/databinding/LayoutWifiAndMobileContainerBinding;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->setViewModel(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setViewModel(Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBinding;->mViewModel:Lcom/onyx/galaxy/note/settings/viewmodel/SettingsCloudBackupViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

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

.method public final t(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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

.method public final u(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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

.method public final v(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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

.method public final w(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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

.method public final x(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsCloudBackUpBindingImpl;->u0:J

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
