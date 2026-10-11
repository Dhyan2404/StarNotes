.class public Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
.source "SourceFile"


# static fields
.field public static final A0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final B0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final t0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final u0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final v0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final w0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final y0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public z0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->B0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_create_note:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_create_no_bonds:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_create_file_import:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_create_pic_import:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_create_camera:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_scanner:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_create_folder:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_quickly:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_vip_container:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_vip_hint:I

    const/16 v2, 0x12

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->A0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->B0:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v15, p0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->fl:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->t0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 9
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->u0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 11
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->v0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 13
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->w0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 15
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 17
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->y0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->quicklySettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 20
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->mQuotaModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getSettingsButtonVisibility()I

    move-result v1

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getQuotaLockVisibility()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->t0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->u0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->v0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->w0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->x0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->y0:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->quicklySettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

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
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

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
    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->r(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

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

.method public setQuotaModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->mQuotaModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->z0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xb

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

    const/16 v0, 0xb

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBindingImpl;->setQuotaModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
