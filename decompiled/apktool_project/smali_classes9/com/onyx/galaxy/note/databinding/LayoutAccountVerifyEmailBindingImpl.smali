.class public Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;,
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;
    }
.end annotation


# static fields
.field public static final y0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final z0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;

.field public u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;

.field public v0:Landroidx/databinding/InverseBindingListener;

.field public w0:Landroidx/databinding/InverseBindingListener;

.field public x0:J


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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->y0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->z0:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x7

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$a;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$b;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->q0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 31

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->mEmailViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v9, 0x98

    const-wide/16 v11, 0x94

    const-wide/16 v13, 0x92

    const-wide/16 v15, 0xb0

    const-wide/16 v17, 0x91

    const-wide/16 v19, 0x90

    const/4 v7, 0x0

    if-eqz v6, :cond_14

    and-long v23, v2, v17

    cmp-long v6, v23, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->isNextEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v7, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    and-long v23, v2, v13

    cmp-long v23, v23, v4

    const/4 v7, 0x1

    if-eqz v23, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getVerificationCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v23

    move-object/from16 v13, v23

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v1, v7, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    and-long v25, v2, v11

    cmp-long v14, v25, v4

    if-eqz v14, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getVerifyCodeButtonTitle()Landroidx/lifecycle/LiveData;

    move-result-object v14

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    const/4 v11, 0x2

    invoke-virtual {v1, v11, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    :goto_6
    and-long v27, v2, v9

    cmp-long v12, v27, v4

    if-eqz v12, :cond_9

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->isVerifyCodeEditEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v12

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    const/4 v14, 0x3

    invoke-virtual {v1, v14, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    and-long v27, v2, v19

    cmp-long v14, v27, v4

    if-eqz v14, :cond_e

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    move-result-object v14

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;

    if-nez v9, :cond_a

    new-instance v9, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;

    invoke-direct {v9}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;

    :cond_a
    invoke-virtual {v9, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl;

    move-result-object v9

    iget-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;

    if-nez v10, :cond_b

    new-instance v10, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;

    invoke-direct {v10}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;

    :cond_b
    invoke-virtual {v10, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl$OnClickListenerImpl1;

    move-result-object v10

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_a
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->getCheckCurrentAccount()Z

    move-result v14

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    :goto_b
    xor-int/2addr v7, v14

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_c
    and-long v29, v2, v15

    cmp-long v14, v29, v4

    if-eqz v14, :cond_10

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->getEmail()Landroidx/lifecycle/MutableLiveData;

    move-result-object v14

    goto :goto_d

    :cond_f
    const/4 v14, 0x0

    :goto_d
    const/4 v8, 0x5

    invoke-virtual {v1, v8, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_e

    :cond_10
    const/4 v8, 0x0

    :goto_e
    const-wide/16 v21, 0xd0

    and-long v29, v2, v21

    cmp-long v14, v29, v4

    if-eqz v14, :cond_13

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;->isVerifyCodeButtonEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v0

    goto :goto_f

    :cond_11
    const/4 v0, 0x0

    :goto_f
    const/4 v14, 0x6

    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_10

    :cond_12
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    goto :goto_11

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :cond_14
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_11
    and-long v19, v2, v19

    cmp-long v14, v19, v4

    if-eqz v14, :cond_15

    iget-object v14, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v14, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    and-long v9, v2, v15

    cmp-long v7, v9, v4

    if-eqz v7, :cond_16

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v7, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    const-wide/16 v7, 0x80

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_17

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v8, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    const/4 v9, 0x0

    invoke-static {v7, v9, v9, v9, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v8, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v7, v9, v9, v9, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_17
    and-long v7, v2, v17

    cmp-long v7, v7, v4

    if-eqz v7, :cond_18

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_18
    const-wide/16 v6, 0x98

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_19

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v6, v12}, Landroid/view/View;->setEnabled(Z)V

    :cond_19
    const-wide/16 v6, 0x92

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1a

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verificationCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v6, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1a
    const-wide/16 v6, 0xd0

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_1b

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1b
    const-wide/16 v6, 0x94

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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

    const-wide/16 v0, 0x80

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->u(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->v(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->w(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->t(Landroidx/lifecycle/LiveData;I)Z

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

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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

.method public final s(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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

.method public setEmailViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBinding;->mEmailViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

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

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->setEmailViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyEmailViewModel;)V

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyEmailBindingImpl;->x0:J

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
