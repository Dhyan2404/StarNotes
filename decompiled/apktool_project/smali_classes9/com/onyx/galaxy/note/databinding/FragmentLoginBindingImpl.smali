.class public Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;


# static fields
.field public static final C0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final D0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public A0:Landroidx/databinding/InverseBindingListener;

.field public B0:J

.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final t0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final u0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final v0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final w0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final x0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public y0:Landroidx/databinding/InverseBindingListener;

.field public z0:Landroidx/databinding/InverseBindingListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->D0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->login_content_container:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->btn_back:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->imageView:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_login_type:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->view:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_edt_bg:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_area_code_mark:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_area_code_arrow:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_divider:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->view3:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->textView:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->view4:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_logins:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_login_google:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_login_microsoft:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_login_wechat:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_login_huawei:I

    const/16 v2, 0x20

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->C0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->D0:Landroid/util/SparseIntArray;

    const/16 v2, 0x21

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 36

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x7

    const/16 v4, 0x11

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v5, 0xc

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v6, 0xb

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v7, 0x9

    aget-object v7, p3, v7

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v8, 0x8

    aget-object v8, p3, v8

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v9, 0xa

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    const/4 v14, 0x3

    aget-object v10, p3, v14

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v13, 0x4

    aget-object v11, p3, v13

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/16 v12, 0x12

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v16, 0x17

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v13, v16

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v14, v16

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v15, v16

    const/16 v16, 0x1c

    aget-object v16, p3, v16

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v17, 0x10

    aget-object v17, p3, v17

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v18, 0x0

    aget-object v18, p3, v18

    check-cast v18, Landroidx/core/widget/NestedScrollView;

    const/16 v19, 0x1a

    aget-object v19, p3, v19

    check-cast v19, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v20, 0x7

    aget-object v20, p3, v20

    check-cast v20, Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    const/16 v21, 0x6

    aget-object v21, p3, v21

    check-cast v21, Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    const/16 v22, 0x16

    aget-object v22, p3, v22

    check-cast v22, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v23, 0xf

    aget-object v23, p3, v23

    check-cast v23, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v24, 0x1d

    aget-object v24, p3, v24

    check-cast v24, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v25, 0x20

    aget-object v25, p3, v25

    check-cast v25, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v26, 0x1e

    aget-object v26, p3, v26

    check-cast v26, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v27, 0x13

    aget-object v27, p3, v27

    check-cast v27, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v3, 0x1

    aget-object v28, p3, v3

    check-cast v28, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v29, 0x1f

    aget-object v29, p3, v29

    check-cast v29, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v30, 0x18

    aget-object v30, p3, v30

    check-cast v30, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v31, 0x15

    aget-object v31, p3, v31

    check-cast v31, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v32, 0x14

    aget-object v32, p3, v32

    check-cast v32, Landroid/view/View;

    const/4 v3, 0x2

    aget-object v33, p3, v3

    check-cast v33, Landroid/view/View;

    const/16 v34, 0x19

    aget-object v34, p3, v34

    check-cast v34, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v35, 0x1b

    aget-object v35, p3, v35

    check-cast v35, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/4 v3, 0x7

    invoke-direct/range {v0 .. v35}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroidx/core/widget/NestedScrollView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintEditText;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;)V

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$a;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$a;-><init>(Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->y0:Landroidx/databinding/InverseBindingListener;

    .line 4
    new-instance v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$b;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$b;-><init>(Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->z0:Landroidx/databinding/InverseBindingListener;

    .line 5
    new-instance v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$c;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl$c;-><init>(Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->A0:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v2, -0x1

    .line 6
    iput-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    .line 7
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnForgetPassword:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->cbPolicy:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtAreaCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginEmail:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginPhone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 16
    aget-object v3, p3, v0

    check-cast v3, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 17
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tilPwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginAccount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginTypeHint:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->view2:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 24
    invoke-virtual {v1, v2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 25
    new-instance v2, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;-><init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V

    iput-object v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->t0:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v2, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;

    invoke-direct {v2, v1, v0}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;-><init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V

    iput-object v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->u0:Landroid/view/View$OnClickListener;

    .line 27
    new-instance v0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;-><init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->v0:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;-><init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->w0:Landroid/view/View$OnClickListener;

    .line 29
    new-instance v0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;-><init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->x0:Landroid/view/View$OnClickListener;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    if-eqz p0, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_a

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->changeLoginType(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    if-eqz p0, :cond_3

    move p2, v0

    :cond_3
    if-eqz p2, :cond_a

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->changeLoginType(I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    if-eqz p0, :cond_5

    move p2, v0

    :cond_5
    if-eqz p2, :cond_a

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->changeLoginType(I)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    if-eqz p0, :cond_7

    move p2, v0

    :cond_7
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->togglePwdVisible()V

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    if-eqz p0, :cond_9

    move p2, v0

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->clearPhoneOrEmail()V

    :cond_a
    :goto_0
    return-void
.end method

.method public executeBindings()V
    .locals 33

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v9, 0xc8

    const-wide/16 v11, 0xc2

    const/4 v13, 0x2

    const-wide/16 v16, 0xc1

    const-wide/16 v18, 0xc4

    const/4 v7, 0x6

    const/4 v8, 0x0

    if-eqz v6, :cond_1b

    and-long v22, v2, v16

    cmp-long v6, v22, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPhoneLengthLimit()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v8

    :goto_2
    and-long v22, v2, v11

    cmp-long v22, v22, v4

    const/16 v23, 0x8

    const/4 v8, 0x1

    if-eqz v22, :cond_9

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPhoneOrEmail()Landroidx/databinding/ObservableField;

    move-result-object v25

    move-object/from16 v15, v25

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v1, v8, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    goto :goto_5

    :cond_5
    const/16 v26, 0x0

    :goto_5
    if-eqz v22, :cond_7

    if-eqz v26, :cond_6

    const-wide/16 v27, 0x200

    goto :goto_6

    :cond_6
    const-wide/16 v27, 0x100

    :goto_6
    or-long v2, v2, v27

    :cond_7
    if-eqz v26, :cond_8

    move/from16 v22, v23

    goto :goto_7

    :cond_8
    const/16 v22, 0x0

    :goto_7
    xor-int/lit8 v26, v26, 0x1

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    :goto_8
    and-long v27, v2, v18

    cmp-long v27, v27, v4

    if-eqz v27, :cond_11

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v25

    move-object/from16 v11, v25

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v1, v13, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    :goto_a
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v11

    if-ne v11, v7, :cond_c

    move v12, v8

    goto :goto_b

    :cond_c
    const/4 v12, 0x0

    :goto_b
    if-eqz v27, :cond_e

    if-eqz v12, :cond_d

    const-wide/16 v29, 0x800

    or-long v2, v2, v29

    const-wide/16 v29, 0x2000

    goto :goto_c

    :cond_d
    const-wide/16 v29, 0x400

    or-long v2, v2, v29

    const-wide/16 v29, 0x1000

    :goto_c
    or-long v2, v2, v29

    :cond_e
    if-eqz v12, :cond_f

    iget-object v14, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v13, Lcom/onyx/android/sdk/device/R$dimen;->dp_60:I

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    goto :goto_d

    :cond_f
    iget-object v13, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/onyx/android/sdk/device/R$dimen;->dp_150:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    :goto_d
    if-eqz v12, :cond_10

    const/16 v23, 0x0

    :cond_10
    move/from16 v25, v13

    goto :goto_e

    :cond_11
    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    :goto_e
    and-long v12, v2, v9

    cmp-long v12, v12, v4

    if-eqz v12, :cond_14

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isAgreed()Landroidx/databinding/ObservableField;

    move-result-object v12

    goto :goto_f

    :cond_12
    const/4 v12, 0x0

    :goto_f
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_10

    :cond_13
    const/4 v12, 0x0

    :goto_10
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    goto :goto_11

    :cond_14
    const/4 v12, 0x0

    :goto_11
    const-wide/16 v13, 0xd0

    and-long v30, v2, v13

    cmp-long v13, v30, v4

    if-eqz v13, :cond_18

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getPwdOrVerification()Landroidx/databinding/ObservableField;

    move-result-object v13

    goto :goto_12

    :cond_15
    const/4 v13, 0x0

    :goto_12
    const/4 v14, 0x4

    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_16

    invoke-virtual {v13}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_13

    :cond_16
    const/4 v13, 0x0

    :goto_13
    if-eqz v13, :cond_17

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    move/from16 v24, v14

    goto :goto_14

    :cond_17
    const/16 v24, 0x0

    :goto_14
    xor-int/lit8 v8, v24, 0x1

    goto :goto_15

    :cond_18
    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_15
    const-wide/16 v20, 0xe0

    and-long v30, v2, v20

    cmp-long v14, v30, v4

    if-eqz v14, :cond_1a

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_16

    :cond_19
    const/4 v0, 0x0

    :goto_16
    const/4 v14, 0x5

    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v14, v12

    move-object/from16 v32, v13

    move-object v10, v15

    move/from16 v13, v22

    move/from16 v9, v25

    move/from16 v12, v26

    goto :goto_17

    :cond_1a
    move v14, v12

    move-object/from16 v32, v13

    move-object v10, v15

    move/from16 v13, v22

    move/from16 v9, v25

    move/from16 v12, v26

    const/4 v0, 0x0

    :goto_17
    move v15, v6

    move v6, v8

    move/from16 v8, v23

    goto :goto_18

    :cond_1b
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v32, 0x0

    :goto_18
    and-long v18, v2, v18

    cmp-long v18, v18, v4

    if-eqz v18, :cond_1c

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnForgetPassword:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v7, v11}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setVisibility(Landroid/view/View;II)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginEmail:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v5, 0x2

    invoke-static {v4, v5, v11}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setVisibility(Landroid/view/View;II)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v4, v9}, Landroidx/databinding/adapters/ViewBindingAdapter;->setPaddingEnd(Landroid/view/View;F)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginAccount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v7, v11}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setVisibility(Landroid/view/View;II)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginTypeHint:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v7, v11}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setVisibility(Landroid/view/View;II)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->view2:Landroid/view/View;

    invoke-static {v4, v7, v11}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setVisibility(Landroid/view/View;II)V

    :cond_1c
    const-wide/16 v4, 0xd0

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    move-object/from16 v5, v32

    invoke-static {v4, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    const-wide/16 v4, 0x80

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1e

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->t0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->cbPolicy:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->y0:Landroidx/databinding/InverseBindingListener;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->z0:Landroidx/databinding/InverseBindingListener;

    invoke-static {v4, v6, v6, v6, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginEmail:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->w0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginPhone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->x0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->v0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->A0:Landroidx/databinding/InverseBindingListener;

    const/4 v6, 0x0

    invoke-static {v4, v6, v6, v6, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginAccount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->u0:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    const-wide/16 v4, 0xc2

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1f

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnVerificationCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v12}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tilPwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    invoke-virtual {v4, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    :cond_1f
    const-wide/16 v4, 0xc8

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_20

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->cbPolicy:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-static {v4, v14}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_20
    const-wide/16 v4, 0xe0

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_21

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtAreaCode:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_21
    and-long v2, v2, v16

    cmp-long v0, v2, v6

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->edtPhoneOrEmail:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setMaxLength(Landroid/widget/TextView;I)V

    :cond_22
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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
    check-cast p2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->r(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->x(Landroidx/databinding/ObservableField;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->t(Landroidx/databinding/ObservableField;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->u(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->w(Landroidx/databinding/ObservableField;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->v(Landroidx/lifecycle/MutableLiveData;I)Z

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

.method public final r(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->setViewModel(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setViewModel(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->mViewModel:Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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

.method public final t(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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

.method public final w(Landroidx/databinding/ObservableField;I)Z
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
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBindingImpl;->B0:J

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
