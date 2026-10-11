.class public Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;,
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;,
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;
    }
.end annotation


# static fields
.field public static final A0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final z0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;

.field public u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;

.field public v0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;

.field public w0:Landroidx/databinding/InverseBindingListener;

.field public x0:Landroidx/databinding/InverseBindingListener;

.field public y0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->z0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->A0:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/16 v3, 0x9

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$a;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$b;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->x0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->q0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->phoneLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 39

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->mPhoneViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    const-wide/16 v6, 0x3ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v13, 0x214

    const-wide/16 v17, 0x212

    const-wide/16 v19, 0x310

    const-wide/16 v21, 0x211

    const-wide/16 v23, 0x210

    const/4 v15, 0x0

    if-eqz v6, :cond_1a

    and-long v29, v2, v21

    cmp-long v6, v29, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getVerifyCodeButtonTitle()Landroidx/lifecycle/LiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v15, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v29, v2, v17

    cmp-long v12, v29, v4

    const/4 v15, 0x1

    if-eqz v12, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->isVerifyCodeEditEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v1, v15, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    and-long v29, v2, v23

    cmp-long v29, v29, v4

    if-eqz v29, :cond_a

    if-eqz v0, :cond_8

    iget-object v11, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;

    if-nez v11, :cond_5

    new-instance v11, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;

    invoke-direct {v11}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;

    :cond_5
    invoke-virtual {v11, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl;

    move-result-object v11

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;

    if-nez v7, :cond_6

    new-instance v7, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;

    invoke-direct {v7}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;

    :cond_6
    invoke-virtual {v7, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl1;

    move-result-object v7

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    move-result-object v8

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->v0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;

    if-nez v9, :cond_7

    new-instance v9, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;

    invoke-direct {v9}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;-><init>()V

    iput-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->v0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;

    :cond_7
    invoke-virtual {v9, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl$OnClickListenerImpl2;

    move-result-object v9

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_5
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->getCheckCurrentAccount()Z

    move-result v8

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    xor-int/2addr v8, v15

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_7
    and-long v33, v2, v13

    cmp-long v10, v33, v4

    if-eqz v10, :cond_d

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getMaxPhoneLength()Landroidx/lifecycle/LiveData;

    move-result-object v10

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_8
    const/4 v15, 0x2

    invoke-virtual {v1, v15, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    goto :goto_9

    :cond_c
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v10

    goto :goto_a

    :cond_d
    const/4 v10, 0x0

    :goto_a
    const-wide/16 v31, 0x218

    and-long v33, v2, v31

    cmp-long v15, v33, v4

    if-eqz v15, :cond_10

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->isVerifyCodeButtonEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v15

    goto :goto_b

    :cond_e
    const/4 v15, 0x0

    :goto_b
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    goto :goto_d

    :cond_10
    const/4 v13, 0x0

    :goto_d
    const-wide/16 v14, 0x230

    and-long v35, v2, v14

    cmp-long v14, v35, v4

    if-eqz v14, :cond_12

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getVerificationCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v14

    goto :goto_e

    :cond_11
    const/4 v14, 0x0

    :goto_e
    const/4 v15, 0x5

    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_f

    :cond_12
    const/4 v14, 0x0

    :goto_f
    const-wide/16 v27, 0x250

    and-long v35, v2, v27

    cmp-long v15, v35, v4

    if-eqz v15, :cond_14

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getPhone()Landroidx/lifecycle/MutableLiveData;

    move-result-object v15

    goto :goto_10

    :cond_13
    const/4 v15, 0x0

    :goto_10
    const/4 v4, 0x6

    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_14

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    const-wide/16 v25, 0x290

    and-long v37, v2, v25

    const-wide/16 v35, 0x0

    cmp-long v5, v37, v35

    if-eqz v5, :cond_17

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->isNextEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v5

    goto :goto_12

    :cond_15
    const/4 v5, 0x0

    :goto_12
    const/4 v15, 0x7

    invoke-virtual {v1, v15, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    :goto_13
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v15

    goto :goto_14

    :cond_17
    const/4 v15, 0x0

    :goto_14
    and-long v37, v2, v19

    const-wide/16 v35, 0x0

    cmp-long v5, v37, v35

    if-eqz v5, :cond_19

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;->getPrefixedAreaCode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    goto :goto_15

    :cond_18
    const/4 v0, 0x0

    :goto_15
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v5, v15

    goto :goto_16

    :cond_19
    move v5, v15

    const/4 v0, 0x0

    :goto_16
    move v15, v8

    goto :goto_17

    :cond_1a
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_17
    and-long v23, v2, v23

    const-wide/16 v35, 0x0

    cmp-long v8, v23, v35

    if-eqz v8, :cond_1b

    iget-object v8, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v8, v15}, Landroid/view/View;->setEnabled(Z)V

    iget-object v8, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v7, v15}, Landroid/view/View;->setEnabled(Z)V

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->phoneLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v7, v15}, Landroid/view/View;->setEnabled(Z)V

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    and-long v7, v2, v19

    const-wide/16 v15, 0x0

    cmp-long v7, v7, v15

    if-eqz v7, :cond_1c

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->areaCodeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    const-wide/16 v7, 0x290

    and-long/2addr v7, v2

    cmp-long v0, v7, v15

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_1d
    const-wide/16 v7, 0x214

    and-long/2addr v7, v2

    cmp-long v0, v7, v15

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setMaxLength(Landroid/widget/TextView;I)V

    :cond_1e
    const-wide/16 v7, 0x250

    and-long/2addr v7, v2

    cmp-long v0, v7, v15

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1f
    const-wide/16 v4, 0x200

    and-long/2addr v4, v2

    cmp-long v0, v4, v15

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->phoneEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    const/4 v5, 0x0

    invoke-static {v0, v5, v5, v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->x0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v0, v5, v5, v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_20
    and-long v4, v2, v17

    cmp-long v0, v4, v15

    if-eqz v0, :cond_21

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v12}, Landroid/view/View;->setEnabled(Z)V

    :cond_21
    const-wide/16 v4, 0x230

    and-long/2addr v4, v2

    cmp-long v0, v4, v15

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_22
    const-wide/16 v4, 0x218

    and-long/2addr v4, v2

    cmp-long v0, v4, v15

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    :cond_23
    and-long v2, v2, v21

    cmp-long v0, v2, v15

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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

    const-wide/16 v0, 0x200

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->x(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->s(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->w(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->t(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->v(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->u(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->z(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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

.method public setPhoneViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBinding;->mPhoneViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

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

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->setPhoneViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPhoneViewModel;)V

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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

.method public final u(Landroidx/lifecycle/LiveData;I)Z
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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

.method public final v(Landroidx/lifecycle/LiveData;I)Z
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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

.method public final z(Landroidx/lifecycle/LiveData;I)Z
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPhoneBindingImpl;->y0:J

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
