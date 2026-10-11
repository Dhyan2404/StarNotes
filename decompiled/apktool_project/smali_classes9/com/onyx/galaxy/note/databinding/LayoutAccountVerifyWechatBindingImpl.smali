.class public Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;,
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;
    }
.end annotation


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
.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;

.field public u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;

.field public v0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->x0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->webWidget:I

    const/4 v2, 0x3

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->w0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->x0:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->mWechatViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    const-wide/16 v5, 0x7

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0x5

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    and-long v9, v0, v6

    cmp-long v9, v9, v2

    if-eqz v9, :cond_2

    if-eqz v4, :cond_2

    iget-object v9, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;

    if-nez v9, :cond_0

    new-instance v9, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;

    invoke-direct {v9}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v9, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v9, v4}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl;

    move-result-object v9

    iget-object v10, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;

    if-nez v10, :cond_1

    new-instance v10, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;

    invoke-direct {v10}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v10, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->u0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;

    :cond_1
    invoke-virtual {v10, v4}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl$OnClickListenerImpl1;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v9, v8

    move-object v10, v9

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;->isNextButtonEnable()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v8

    :goto_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Boolean;

    :cond_4
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    move-object v8, v9

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move-object v10, v8

    :goto_2
    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->qrCodeImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

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
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

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
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

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
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

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

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->setWechatViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setWechatViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBinding;->mWechatViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyWechatViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyWechatBindingImpl;->v0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

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
