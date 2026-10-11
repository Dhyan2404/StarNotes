.class public Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;
.source "SourceFile"


# static fields
.field public static final u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final v0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public t0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->v0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->seek_bar_thickness:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->seek_bar_duration:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_color_title:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->color_layout:I

    const/4 v2, 0x6

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
    sget-object v0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->u0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->v0:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->t0:J

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->dotType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->lineType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->q0:Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public executeBindings()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->t0:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->t0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->dotType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->DOT:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBinding;->lineType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;->LINE:Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
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
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->t0:J

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

    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/PopupLaserShapeBindingImpl;->t0:J

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

    const/4 p0, 0x0

    return p0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method
