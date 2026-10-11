.class public Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;
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
.field public final q0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;

.field public u0:Landroidx/databinding/InverseBindingListener;

.field public v0:Landroidx/databinding/InverseBindingListener;

.field public w0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->y0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->phoneNumberLayout:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->area_code_selector:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->clearButtonWrapper:I

    const/16 v2, 0x9

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->x0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->y0:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14

    move-object v13, p0

    const/16 v3, 0x8

    const/16 v0, 0x8

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;)V

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;)V

    iput-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->u0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance v0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;)V

    iput-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    .line 6
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->clearButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->q0:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 14
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 35

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->mModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v13, 0x111

    const-wide/16 v15, 0x109

    const-wide/16 v17, 0x105

    const-wide/16 v19, 0x101

    const-wide/16 v21, 0x103

    const/16 v23, 0x0

    if-eqz v6, :cond_1a

    and-long v26, v2, v21

    cmp-long v6, v26, v4

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getPrefixedAreaCode()Landroidx/lifecycle/LiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v26, v2, v17

    cmp-long v26, v26, v4

    if-eqz v26, :cond_5

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v26

    move-object/from16 v7, v26

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    goto :goto_4

    :cond_4
    move/from16 v9, v23

    :goto_4
    xor-int/2addr v9, v8

    goto :goto_5

    :cond_5
    move/from16 v9, v23

    const/4 v7, 0x0

    :goto_5
    and-long v29, v2, v19

    cmp-long v10, v29, v4

    if-eqz v10, :cond_7

    if-eqz v0, :cond_7

    iget-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;

    if-nez v10, :cond_6

    new-instance v10, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;

    invoke-direct {v10}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;

    :cond_6
    invoke-virtual {v10, v0}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl$OnClickListenerImpl;

    move-result-object v10

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    and-long v29, v2, v15

    cmp-long v29, v29, v4

    const/4 v8, 0x4

    const/4 v15, 0x3

    if-eqz v29, :cond_e

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v16

    move-object/from16 v11, v16

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    :goto_7
    invoke-virtual {v1, v15, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_8

    :cond_9
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    goto :goto_9

    :cond_a
    move/from16 v12, v23

    :goto_9
    if-eqz v29, :cond_c

    if-eqz v12, :cond_b

    const-wide/16 v31, 0x400

    goto :goto_a

    :cond_b
    const-wide/16 v31, 0x200

    :goto_a
    or-long v2, v2, v31

    :cond_c
    if-eqz v12, :cond_d

    move v12, v8

    goto :goto_b

    :cond_d
    move/from16 v12, v23

    goto :goto_b

    :cond_e
    move/from16 v12, v23

    const/4 v11, 0x0

    :goto_b
    and-long v31, v2, v13

    cmp-long v16, v31, v4

    if-eqz v16, :cond_11

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getMaxPhoneLength()Landroidx/lifecycle/LiveData;

    move-result-object v16

    move-object/from16 v13, v16

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v1, v8, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    :goto_d
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v8

    goto :goto_e

    :cond_11
    move/from16 v8, v23

    :goto_e
    const-wide/16 v13, 0x121

    and-long v33, v2, v13

    cmp-long v13, v33, v4

    if-eqz v13, :cond_14

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeButtonEnable()Landroidx/lifecycle/LiveData;

    move-result-object v13

    goto :goto_f

    :cond_12
    const/4 v13, 0x0

    :goto_f
    const/4 v14, 0x5

    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_10

    :cond_13
    const/4 v13, 0x0

    :goto_10
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    goto :goto_11

    :cond_14
    move/from16 v13, v23

    :goto_11
    const-wide/16 v27, 0x141

    and-long v33, v2, v27

    cmp-long v14, v33, v4

    if-eqz v14, :cond_16

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeButtonTitle()Landroidx/lifecycle/LiveData;

    move-result-object v14

    goto :goto_12

    :cond_15
    const/4 v14, 0x0

    :goto_12
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_16

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_13

    :cond_16
    const/4 v14, 0x0

    :goto_13
    const-wide/16 v24, 0x181

    and-long v33, v2, v24

    cmp-long v15, v33, v4

    if-eqz v15, :cond_19

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_14

    :cond_17
    const/4 v0, 0x0

    :goto_14
    const/4 v15, 0x7

    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

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

    const/4 v15, 0x3

    if-ne v0, v15, :cond_19

    const/16 v23, 0x1

    :cond_19
    move/from16 v0, v23

    goto :goto_16

    :cond_1a
    move/from16 v0, v23

    move v8, v0

    move v9, v8

    move v12, v9

    move v13, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_16
    and-long v15, v2, v21

    cmp-long v15, v15, v4

    if-eqz v15, :cond_1b

    iget-object v15, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v15, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1b
    and-long v15, v2, v19

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1c

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->clearButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c
    const-wide/16 v15, 0x109

    and-long/2addr v15, v2

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1d

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->clearButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v6, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    and-long v10, v2, v17

    cmp-long v6, v10, v4

    if-eqz v6, :cond_1e

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v6, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1e
    const-wide/16 v6, 0x111

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1f

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v6, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setMaxLength(Landroid/widget/TextView;I)V

    :cond_1f
    const-wide/16 v6, 0x100

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_20

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->u0:Landroidx/databinding/InverseBindingListener;

    const/4 v8, 0x0

    invoke-static {v6, v8, v8, v8, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v6, v8, v8, v8, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_20
    const-wide/16 v6, 0x121

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_21

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v6, v13}, Landroid/view/View;->setEnabled(Z)V

    :cond_21
    const-wide/16 v6, 0x141

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_22

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v6, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_22
    const-wide/16 v6, 0x181

    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_23
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->y(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->x(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->s(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->u(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->v(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->t(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;I)Z

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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

.method public setModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBinding;->mModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

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

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->setModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutPhoneVerifyItemBindingImpl;->w0:J

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
