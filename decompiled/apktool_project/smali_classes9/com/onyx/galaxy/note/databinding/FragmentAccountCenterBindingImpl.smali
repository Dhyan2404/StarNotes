.class public Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;,
        Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;,
        Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;
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
.field public final q0:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final t0:Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final u0:Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public v0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;

.field public w0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;

.field public x0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;

.field public y0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->z0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "layout_user_info"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    filled-new-array {v2}, [I

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$layout;->layout_user_info:I

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->A0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_bar:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->back_button:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_text:I

    const/16 v2, 0xb

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->z0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->A0:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14

    move-object v13, p0

    const/4 v3, 0x2

    const/16 v0, 0xa

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/FrameLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Lcom/onyx/android/sdk/ui/MediumTextView;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/ui/MediumTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

    .line 4
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->disagreeProtocolButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->exitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->logOffButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->logOutButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->q0:Landroid/widget/ScrollView;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 10
    aget-object v0, p3, v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;

    const/4 v0, 0x7

    .line 11
    aget-object v0, p3, v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAdaptiveDividerBinding;

    .line 12
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->rootLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v13, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    .line 14
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->mViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    const-wide/16 v5, 0x6

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->v0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->v0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->w0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;

    if-nez v2, :cond_1

    new-instance v2, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->w0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;

    :cond_1
    invoke-virtual {v2, v4}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl1;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->x0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;

    if-nez v3, :cond_2

    new-instance v3, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;

    invoke-direct {v3}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;-><init>()V

    iput-object v3, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->x0:Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;

    :cond_2
    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl$OnClickListenerImpl2;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->disagreeProtocolButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->logOffButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->logOutButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;->setViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)V

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

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

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

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
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->s(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->r(Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

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

.method public final s(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->scrollLayout:Lcom/onyx/galaxy/note/databinding/LayoutUserInfoBinding;

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

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->setViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;)V

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBinding;->mViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentAccountCenterBindingImpl;->y0:J

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
