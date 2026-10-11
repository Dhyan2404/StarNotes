.class public Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;,
        Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;,
        Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;
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
.field public q0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;

.field public t0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;

.field public u0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;

.field public v0:Landroidx/databinding/InverseBindingListener;

.field public w0:Landroidx/databinding/InverseBindingListener;

.field public x0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->z0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_bar:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->back_button:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_text:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->verify_layout:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tipText:I

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->y0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->z0:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x5

    const/16 v4, 0x9

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v6, 0x6

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;

    const/4 v7, 0x1

    aget-object v7, p3, v7

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v8, 0x2

    aget-object v8, p3, v8

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v9, 0x7

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v10, 0x0

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v11, 0x5

    aget-object v11, p3, v11

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v12, 0x4

    aget-object v12, p3, v12

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v13, 0xc

    aget-object v13, p3, v13

    check-cast v13, Lcom/onyx/galaxy/note/ui/view/SpannableTextView;

    const/16 v14, 0x8

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/FrameLayout;

    const/16 v16, 0xa

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v15, v16

    const/16 v16, 0xb

    aget-object v16, p3, v16

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v0 .. v16}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/galaxy/note/ui/view/SpannableTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/ui/view/SpannableTextView;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$a;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$b;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    .line 6
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->confirmPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->errorText:Lcom/onyx/galaxy/note/ui/view/SpannableTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->headerText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->newPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->rootLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showConfirmPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showNewPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 14
    invoke-virtual {v1, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 29

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->mPasswordViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    const-wide/16 v6, 0x3f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x2a

    const-wide/16 v11, 0x23

    const-wide/16 v13, 0x22

    const-wide/16 v15, 0x26

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v6, :cond_12

    and-long v19, v2, v13

    cmp-long v6, v19, v4

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->q0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;

    if-nez v6, :cond_0

    new-instance v6, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;

    invoke-direct {v6}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v6, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->q0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v6, v0}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl;

    move-result-object v6

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->getTitle()Ljava/lang/String;

    move-result-object v19

    iget-object v13, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;

    if-nez v13, :cond_1

    new-instance v13, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;

    invoke-direct {v13}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v13, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;

    :cond_1
    invoke-virtual {v13, v0}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl1;

    move-result-object v13

    iget-object v14, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;

    if-nez v14, :cond_2

    new-instance v14, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;

    invoke-direct {v14}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;-><init>()V

    iput-object v14, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;

    :cond_2
    invoke-virtual {v14, v0}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl$OnClickListenerImpl2;

    move-result-object v14

    goto :goto_0

    :cond_3
    move-object v6, v10

    move-object v13, v6

    move-object v14, v13

    move-object/from16 v19, v14

    :goto_0
    and-long v21, v2, v11

    cmp-long v21, v21, v4

    if-eqz v21, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->isNextEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v21

    move-object/from16 v11, v21

    goto :goto_1

    :cond_4
    move-object v11, v10

    :goto_1
    invoke-virtual {v1, v9, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    move-object v11, v10

    :goto_2
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    goto :goto_3

    :cond_6
    move v11, v9

    :goto_3
    and-long v23, v2, v15

    cmp-long v12, v23, v4

    if-eqz v12, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->getConfirmPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    goto :goto_4

    :cond_7
    move-object v12, v10

    :goto_4
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v9, v10

    :goto_5
    and-long v24, v2, v7

    cmp-long v12, v24, v4

    if-eqz v12, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->getNewPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    goto :goto_6

    :cond_9
    move-object v12, v10

    :goto_6
    const/4 v7, 0x3

    invoke-virtual {v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object v7, v10

    :goto_7
    const-wide/16 v17, 0x32

    and-long v26, v2, v17

    cmp-long v8, v26, v4

    if-eqz v8, :cond_11

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->getErrorText()Landroidx/lifecycle/LiveData;

    move-result-object v0

    goto :goto_8

    :cond_b
    move-object v0, v10

    :goto_8
    const/4 v12, 0x4

    invoke-virtual {v1, v12, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9

    :cond_c
    move-object v0, v10

    :goto_9
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    goto :goto_a

    :cond_d
    const/16 v26, 0x0

    :goto_a
    if-eqz v8, :cond_f

    if-eqz v26, :cond_e

    const-wide/16 v27, 0x80

    goto :goto_b

    :cond_e
    const-wide/16 v27, 0x40

    :goto_b
    or-long v2, v2, v27

    :cond_f
    if-eqz v26, :cond_10

    move/from16 v23, v12

    goto :goto_c

    :cond_10
    const/16 v23, 0x0

    :goto_c
    move-object/from16 v12, v19

    move/from16 v8, v23

    goto :goto_d

    :cond_11
    move-object v0, v10

    move-object/from16 v12, v19

    const/4 v8, 0x0

    goto :goto_d

    :cond_12
    move-object v0, v10

    move-object v6, v0

    move-object v7, v6

    move-object v9, v7

    move-object v12, v9

    move-object v13, v12

    move-object v14, v13

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_d
    and-long/2addr v15, v2

    cmp-long v15, v15, v4

    if-eqz v15, :cond_13

    iget-object v15, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->confirmPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v15, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    const-wide/16 v15, 0x20

    and-long/2addr v15, v2

    cmp-long v9, v15, v4

    if-eqz v9, :cond_14

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->confirmPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v15, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->v0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v9, v10, v10, v10, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->newPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v15, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->w0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v9, v10, v10, v10, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    :cond_14
    const-wide/16 v9, 0x32

    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_15

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->errorText:Lcom/onyx/galaxy/note/ui/view/SpannableTextView;

    invoke-static {v9, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->errorText:Lcom/onyx/galaxy/note/ui/view/SpannableTextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    const-wide/16 v8, 0x22

    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->headerText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showConfirmPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showNewPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const-wide/16 v8, 0x2a

    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->newPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    const-wide/16 v6, 0x23

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    :cond_18
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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

    const-wide/16 v0, 0x20

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->t(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->v(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_3
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;I)Z

    move-result p0

    return p0

    :cond_4
    check-cast p2, Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->u(Landroidx/lifecycle/LiveData;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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

.method public setPasswordViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->mPasswordViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->setPasswordViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBindingImpl;->x0:J

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
