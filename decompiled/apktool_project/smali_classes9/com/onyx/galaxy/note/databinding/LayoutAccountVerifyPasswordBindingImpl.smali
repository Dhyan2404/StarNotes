.class public Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;,
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;
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

.field public t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;

.field public u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->y0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->z0:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x4

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintEditText;)V

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$a;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$b;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->hidePasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->q0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->usernameEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->mPasswordViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v9, 0x16

    const-wide/16 v11, 0x15

    const-wide/16 v13, 0x14

    const/4 v15, 0x0

    if-eqz v6, :cond_c

    and-long v16, v2, v13

    cmp-long v6, v16, v4

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    if-eqz v0, :cond_2

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;

    if-nez v6, :cond_0

    new-instance v6, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;

    invoke-direct {v6}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v6, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl;

    move-result-object v6

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;

    if-nez v7, :cond_1

    new-instance v7, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;

    invoke-direct {v7}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;

    :cond_1
    invoke-virtual {v7, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl$OnClickListenerImpl1;

    move-result-object v7

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->getVerifyArgs()Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    move-result-object v17

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    :goto_0
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;->getCheckCurrentAccount()Z

    move-result v17

    goto :goto_1

    :cond_3
    move/from16 v17, v15

    :goto_1
    xor-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_4
    move/from16 v17, v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    and-long v18, v2, v11

    cmp-long v18, v18, v4

    if-eqz v18, :cond_7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->isNextEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v18

    move-object/from16 v11, v18

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v1, v15, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    move v15, v11

    :cond_7
    and-long v11, v2, v9

    cmp-long v11, v11, v4

    if-eqz v11, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v11

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    const-wide/16 v11, 0x1c

    and-long v20, v2, v11

    cmp-long v11, v20, v4

    if-eqz v11, :cond_b

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->getUsername()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    const/4 v11, 0x3

    invoke-virtual {v1, v11, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v11, v15

    move/from16 v15, v17

    goto :goto_8

    :cond_b
    move v11, v15

    move/from16 v15, v17

    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    move v11, v15

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    and-long v12, v2, v13

    cmp-long v12, v12, v4

    if-eqz v12, :cond_d

    iget-object v12, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->hidePasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v12, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->usernameEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v6, v15}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    const-wide/16 v6, 0x15

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_e

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    and-long v6, v2, v9

    cmp-long v6, v6, v4

    if-eqz v6, :cond_f

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v6, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_f
    const-wide/16 v6, 0x10

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_10

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    const/4 v8, 0x0

    invoke-static {v6, v8, v8, v8, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->usernameEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v6, v8, v8, v8, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_10
    const-wide/16 v6, 0x1c

    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->usernameEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v1, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

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

    const-wide/16 v0, 0x10

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->u(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->t(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_3
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->s(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

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

.method public setPasswordViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->mPasswordViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x9

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

    const/16 v0, 0x9

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->setPasswordViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBindingImpl;->x0:J

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
