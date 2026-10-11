.class public Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;
.source "SourceFile"


# static fields
.field public static final w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final x0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Landroidx/databinding/InverseBindingListener;

.field public u0:Landroidx/databinding/InverseBindingListener;

.field public v0:J


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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->x0:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v3, 0x6

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;)V

    .line 3
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl$a;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->t0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl$b;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->u0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->q0:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 27

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->mModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v9, 0x51

    const-wide/16 v11, 0x49

    const-wide/16 v13, 0x43

    const-wide/16 v15, 0x45

    const/16 v17, 0x0

    const/4 v7, 0x0

    if-eqz v6, :cond_e

    and-long v20, v2, v13

    cmp-long v6, v20, v4

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    goto :goto_2

    :cond_2
    move/from16 v20, v17

    :goto_2
    xor-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_3
    move-object v6, v7

    move/from16 v20, v17

    :goto_3
    and-long v21, v2, v15

    cmp-long v21, v21, v4

    if-eqz v21, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v21

    move-object/from16 v8, v21

    goto :goto_4

    :cond_4
    move-object v8, v7

    :goto_4
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v8, v7

    :goto_5
    and-long v13, v2, v11

    cmp-long v13, v13, v4

    const/4 v14, 0x3

    if-eqz v13, :cond_8

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeButtonEnable()Landroidx/lifecycle/LiveData;

    move-result-object v13

    goto :goto_6

    :cond_6
    move-object v13, v7

    :goto_6
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object v13, v7

    :goto_7
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    goto :goto_8

    :cond_8
    move/from16 v13, v17

    :goto_8
    and-long v23, v2, v9

    cmp-long v23, v23, v4

    if-eqz v23, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeButtonTitle()Landroidx/lifecycle/LiveData;

    move-result-object v23

    move-object/from16 v9, v23

    goto :goto_9

    :cond_9
    move-object v9, v7

    :goto_9
    const/4 v10, 0x4

    invoke-virtual {v1, v10, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object v9, v7

    :goto_a
    const-wide/16 v18, 0x61

    and-long v25, v2, v18

    cmp-long v10, v25, v4

    if-eqz v10, :cond_d

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_b

    :cond_b
    move-object v0, v7

    :goto_b
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object v0, v7

    :goto_c
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v14, :cond_d

    const/16 v17, 0x1

    :cond_d
    move/from16 v10, v17

    move/from16 v0, v20

    goto :goto_d

    :cond_e
    move-object v6, v7

    move-object v8, v6

    move-object v9, v8

    move/from16 v0, v17

    move v10, v0

    move v13, v10

    :goto_d
    and-long v14, v2, v15

    cmp-long v14, v14, v4

    if-eqz v14, :cond_f

    iget-object v14, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v14, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_f
    const-wide/16 v14, 0x40

    and-long/2addr v14, v2

    cmp-long v8, v14, v4

    if-eqz v8, :cond_10

    iget-object v8, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v14, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->t0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v8, v7, v7, v7, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v8, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v14, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->u0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v8, v7, v7, v7, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_10
    const-wide/16 v7, 0x43

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_11

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    and-long v6, v2, v11

    cmp-long v0, v6, v4

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    :cond_12
    const-wide/16 v6, 0x51

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    const-wide/16 v6, 0x61

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->verifyCodeEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v10}, Landroid/view/View;->setEnabled(Z)V

    :cond_14
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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

    const-wide/16 v0, 0x40

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->w(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->u(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :cond_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->t(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_5
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBinding;->mModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->setModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutEmailVerifyItemBindingImpl;->v0:J

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
