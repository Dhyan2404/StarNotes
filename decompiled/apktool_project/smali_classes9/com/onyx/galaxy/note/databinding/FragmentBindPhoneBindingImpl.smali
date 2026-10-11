.class public Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field public static final x0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final y0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;

.field public u0:Landroidx/databinding/InverseBindingListener;

.field public v0:Landroidx/databinding/InverseBindingListener;

.field public w0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->y0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->root_layout:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_bar:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->back_button:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->skip_button:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->verify_layout:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->area_code_selector:I

    const/16 v2, 0xf

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->x0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->y0:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x8

    const/16 v4, 0xf

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v5, 0x4

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v6, 0xc

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v7, 0x6

    aget-object v7, p3, v7

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v8, 0x3

    aget-object v8, p3, v8

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v9, 0x2

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v10, 0x9

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v11, 0x5

    aget-object v11, p3, v11

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/16 v12, 0xa

    aget-object v12, p3, v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v13, 0xd

    aget-object v13, p3, v13

    check-cast v13, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v14, 0xb

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/FrameLayout;

    const/16 v16, 0x1

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v15, v16

    const/16 v16, 0x8

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v17, 0x7

    aget-object v17, p3, v17

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/16 v18, 0xe

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/LinearLayout;

    invoke-direct/range {v0 .. v18}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Landroid/widget/LinearLayout;)V

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$a;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->u0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance v0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$b;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    .line 6
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->clearButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->headerTipText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->headerTitleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 17
    invoke-virtual {v1, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 41

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->mVerifyCodeViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v9, 0x128

    const-wide/16 v11, 0x10c

    const-wide/16 v13, 0x118

    const-wide/16 v17, 0x108

    const-wide/16 v19, 0x109

    const-wide/16 v21, 0x10a

    const/4 v7, 0x0

    if-eqz v6, :cond_1b

    and-long v25, v2, v19

    cmp-long v6, v25, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeButtonTitle()Landroidx/lifecycle/LiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v7, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v25, v2, v21

    cmp-long v25, v25, v4

    const/4 v7, 0x1

    if-eqz v25, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getPrefixedAreaCode()Landroidx/lifecycle/LiveData;

    move-result-object v25

    move-object/from16 v8, v25

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v1, v7, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-long v27, v2, v17

    cmp-long v27, v27, v4

    if-eqz v27, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getBindFragmentTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getBindFragmentHeaderTitle()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getBindFragmentHeaderTipText()Ljava/lang/String;

    move-result-object v29

    iget-object v15, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;

    if-nez v15, :cond_4

    new-instance v15, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;

    invoke-direct {v15}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v15, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;

    :cond_4
    invoke-virtual {v15, v0}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl$OnClickListenerImpl;

    move-result-object v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_4
    and-long v32, v2, v11

    cmp-long v16, v32, v4

    if-eqz v16, :cond_8

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getMaxPhoneLength()Landroidx/lifecycle/LiveData;

    move-result-object v16

    move-object/from16 v11, v16

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    const/4 v12, 0x2

    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v11

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    and-long v34, v2, v13

    cmp-long v12, v34, v4

    const/4 v13, 0x4

    if-eqz v12, :cond_c

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    goto :goto_a

    :cond_b
    const/4 v14, 0x0

    :goto_a
    xor-int/2addr v14, v7

    goto :goto_b

    :cond_c
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_b
    and-long v36, v2, v9

    cmp-long v16, v36, v4

    if-eqz v16, :cond_f

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeButtonEnable()Landroidx/lifecycle/LiveData;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_c

    :cond_d
    const/4 v7, 0x0

    :goto_c
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_d

    :cond_e
    const/4 v7, 0x0

    :goto_d
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    goto :goto_e

    :cond_f
    const/4 v7, 0x0

    :goto_e
    const-wide/16 v30, 0x148

    and-long v37, v2, v30

    cmp-long v13, v37, v4

    if-eqz v13, :cond_15

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v37

    move-object/from16 v9, v37

    goto :goto_f

    :cond_10
    const/4 v9, 0x0

    :goto_f
    const/4 v10, 0x6

    invoke-virtual {v1, v10, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_10

    :cond_11
    const/4 v9, 0x0

    :goto_10
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    goto :goto_11

    :cond_12
    const/4 v10, 0x0

    :goto_11
    if-eqz v13, :cond_14

    if-eqz v10, :cond_13

    const-wide/16 v39, 0x400

    goto :goto_12

    :cond_13
    const-wide/16 v39, 0x200

    :goto_12
    or-long v2, v2, v39

    :cond_14
    if-eqz v10, :cond_16

    const/4 v13, 0x4

    goto :goto_13

    :cond_15
    const/4 v9, 0x0

    :cond_16
    const/4 v13, 0x0

    :goto_13
    const-wide/16 v23, 0x188

    and-long v39, v2, v23

    cmp-long v10, v39, v4

    if-eqz v10, :cond_1a

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_14

    :cond_17
    const/4 v0, 0x0

    :goto_14
    const/4 v10, 0x7

    invoke-virtual {v1, v10, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_15

    :cond_18
    const/4 v0, 0x0

    :goto_15
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v0

    const/4 v10, 0x3

    if-ne v0, v10, :cond_19

    const/16 v16, 0x1

    goto :goto_16

    :cond_19
    const/16 v16, 0x0

    :goto_16
    move-object/from16 v26, v6

    move v0, v7

    move-object v10, v9

    move v7, v13

    move-object/from16 v13, v27

    move-object/from16 v6, v29

    goto :goto_17

    :cond_1a
    move-object/from16 v26, v6

    move v0, v7

    move-object v10, v9

    move v7, v13

    move-object/from16 v13, v27

    move-object/from16 v6, v29

    const/16 v16, 0x0

    :goto_17
    move-object v9, v8

    move-object/from16 v8, v28

    goto :goto_18

    :cond_1b
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    :goto_18
    and-long v21, v2, v21

    cmp-long v21, v21, v4

    if-eqz v21, :cond_1c

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    and-long v4, v2, v17

    const-wide/16 v17, 0x0

    cmp-long v4, v4, v17

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->clearButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->headerTipText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->headerTitleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    const-wide/16 v4, 0x148

    and-long/2addr v4, v2

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1e

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->clearButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1e
    const-wide/16 v4, 0x118

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1f

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v14}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v4, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1f
    const-wide/16 v4, 0x10c

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-eqz v4, :cond_20

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v4, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setMaxLength(Landroid/widget/TextView;I)V

    :cond_20
    const-wide/16 v4, 0x100

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-eqz v4, :cond_21

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->u0:Landroidx/databinding/InverseBindingListener;

    const/4 v6, 0x0

    invoke-static {v4, v6, v6, v6, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v4, v6, v6, v6, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_21
    const-wide/16 v4, 0x128

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-eqz v4, :cond_22

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_22
    and-long v4, v2, v19

    cmp-long v0, v4, v8

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v6, v26

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_23
    const-wide/16 v4, 0x188

    and-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_24
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->y(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->u(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->v(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->s(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->t(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->x(Landroidx/lifecycle/LiveData;I)Z

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

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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

.method public final s(Landroidx/lifecycle/LiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0xe

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->setVerifyCodeViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setVerifyCodeViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBinding;->mVerifyCodeViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xe

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

.method public final t(Landroidx/lifecycle/LiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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

.method public final w(Landroidx/lifecycle/LiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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

.method public final x(Landroidx/lifecycle/LiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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

.method public final y(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentBindPhoneBindingImpl;->w0:J

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
