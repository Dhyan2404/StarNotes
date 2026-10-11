.class public Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field public static final v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final w0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;

.field public u0:J


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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->w0:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBinding;->mHuaweiViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->t0:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v1, v4}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;->setValue(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl$OnClickListenerImpl;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

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

    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

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

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

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

.method public setHuaweiViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBinding;->mHuaweiViewModel:Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

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

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyHuaweiBindingImpl;->setHuaweiViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyHuaweiViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
