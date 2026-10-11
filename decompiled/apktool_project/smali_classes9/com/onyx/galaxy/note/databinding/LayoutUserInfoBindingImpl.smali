.class public Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;,
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;,
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;,
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;,
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;,
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;,
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;,
        Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;
    }
.end annotation


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
.field public A0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;

.field public B0:J

.field public final q0:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;

.field public u0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;

.field public v0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;

.field public w0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;

.field public x0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;

.field public y0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;

.field public z0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->D0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->personal_info_text:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->personal_layout:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->copy_button:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->account_info_text:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->card_list:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->account_layout:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_phone_divider:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_email_divider:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_wechat_divider:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->password_set_layout:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->password_text:I

    const/16 v2, 0x1a

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->C0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->D0:Landroid/util/SparseIntArray;

    const/16 v2, 0x1b

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x5

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v5, 0x6

    aget-object v5, p3, v5

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v6, 0x13

    aget-object v6, p3, v6

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v7, 0x15

    aget-object v7, p3, v7

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v8, 0x2

    aget-object v8, p3, v8

    check-cast v8, Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v9, 0x1

    aget-object v9, p3, v9

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v10, 0x14

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintCardView;

    const/16 v11, 0x12

    aget-object v11, p3, v11

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v12, 0x9

    aget-object v12, p3, v12

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v13, 0xa

    aget-object v13, p3, v13

    check-cast v13, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v14, 0xd

    aget-object v14, p3, v14

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v15, v16

    const/16 v16, 0x3

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v17, 0x4

    aget-object v17, p3, v17

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v18, 0xf

    aget-object v18, p3, v18

    check-cast v18, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v19, 0x19

    aget-object v19, p3, v19

    check-cast v19, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v20, 0x1a

    aget-object v20, p3, v20

    check-cast v20, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v21, 0x10

    aget-object v21, p3, v21

    check-cast v21, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v22, 0x11

    aget-object v22, p3, v22

    check-cast v22, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v23, 0x7

    aget-object v23, p3, v23

    check-cast v23, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v24, 0x8

    aget-object v24, p3, v24

    check-cast v24, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v25, 0x17

    aget-object v25, p3, v25

    check-cast v25, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v26, 0x16

    aget-object v26, p3, v26

    check-cast v26, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v27, 0x18

    aget-object v27, p3, v27

    check-cast v27, Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/16 v28, 0xb

    aget-object v28, p3, v28

    check-cast v28, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v29, 0xc

    aget-object v29, p3, v29

    check-cast v29, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-direct/range {v0 .. v29}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lde/hdodenhof/circleimageview/CircleImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintCardView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->accountIdLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->accountIdText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->avatarLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->emailLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->emailText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->huaweiLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->huaweiText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 12
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->q0:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->nicknameLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->nicknameText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->passwordLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->phoneLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->phoneText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->wechatLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->wechatText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 21
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 26

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->mViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    const-wide/16 v6, 0x7

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x6

    if-eqz v6, :cond_e

    and-long v10, v2, v7

    cmp-long v10, v10, v4

    if-eqz v10, :cond_8

    if-eqz v0, :cond_8

    iget-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;

    if-nez v10, :cond_0

    new-instance v10, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;

    invoke-direct {v10}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v10, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl;

    move-result-object v10

    iget-object v11, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;

    if-nez v11, :cond_1

    new-instance v11, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;

    invoke-direct {v11}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v11, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;

    :cond_1
    invoke-virtual {v11, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl1;

    move-result-object v11

    iget-object v12, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->v0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;

    if-nez v12, :cond_2

    new-instance v12, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;

    invoke-direct {v12}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;-><init>()V

    iput-object v12, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->v0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;

    :cond_2
    invoke-virtual {v12, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl2;

    move-result-object v12

    iget-object v13, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->w0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;

    if-nez v13, :cond_3

    new-instance v13, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;

    invoke-direct {v13}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;-><init>()V

    iput-object v13, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->w0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;

    :cond_3
    invoke-virtual {v13, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl3;

    move-result-object v13

    iget-object v14, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->x0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;

    if-nez v14, :cond_4

    new-instance v14, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;

    invoke-direct {v14}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;-><init>()V

    iput-object v14, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->x0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;

    :cond_4
    invoke-virtual {v14, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl4;

    move-result-object v14

    iget-object v15, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->y0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;

    if-nez v15, :cond_5

    new-instance v15, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;

    invoke-direct {v15}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;-><init>()V

    iput-object v15, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->y0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;

    :cond_5
    invoke-virtual {v15, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl5;

    move-result-object v15

    iget-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->z0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;

    if-nez v9, :cond_6

    new-instance v9, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;

    invoke-direct {v9}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;-><init>()V

    iput-object v9, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->z0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;

    :cond_6
    invoke-virtual {v9, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl6;

    move-result-object v9

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->A0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;

    if-nez v4, :cond_7

    new-instance v4, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;

    invoke-direct {v4}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;-><init>()V

    iput-object v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->A0:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;

    :cond_7
    invoke-virtual {v4, v0}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl$OnClickListenerImpl7;

    move-result-object v4

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getDisplayId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getHuawei()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;

    move-result-object v16

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getNickname()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getWechat()Lcom/onyx/android/sdk/data/account/model/WechatModel;

    move-result-object v0

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/onyx/android/sdk/data/account/model/HuaweiModel;->getNickname()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_c
    const/16 v16, 0x0

    :goto_4
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/WechatModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    move-object v0, v9

    move-object v9, v14

    move-object/from16 v22, v16

    move-object/from16 v24, v17

    move-object/from16 v14, v18

    move-object/from16 v23, v19

    move-object/from16 v21, v20

    goto :goto_6

    :cond_d
    move-object v0, v9

    move-object v9, v14

    move-object/from16 v22, v16

    move-object/from16 v24, v17

    move-object/from16 v14, v18

    move-object/from16 v23, v19

    move-object/from16 v21, v20

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_5
    const/16 v25, 0x0

    :goto_6
    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->accountIdLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->avatarLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->emailLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v2, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->huaweiLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->nicknameLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->passwordLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->phoneLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->wechatLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    if-eqz v6, :cond_10

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->accountIdText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v0, v14}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->loadIntoImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->emailText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v2, v21

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->huaweiText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v2, v22

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->nicknameText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v2, v23

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->phoneText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v2, v24

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->wechatText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_10
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

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

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

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
            "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

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

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->setViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->mViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBindingImpl;->B0:J

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
