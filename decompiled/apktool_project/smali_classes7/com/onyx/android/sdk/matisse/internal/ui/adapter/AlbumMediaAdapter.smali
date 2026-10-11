.class public Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;
.super Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;,
        Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;,
        Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;,
        Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;,
        Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;"
    }
.end annotation


# static fields
.field public static final m:I = 0x1

.field public static final n:I = 0x2


# instance fields
.field public final f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public h:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

.field public i:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

.field public j:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

.field public k:Landroidx/recyclerview/widget/RecyclerView;

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;-><init>(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->h:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p2, Lcom/onyx/android/sdk/imagepicker/R$attr;->item_placeholder:I

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->k:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->isAcceptable(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;->handleCause(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;)V

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$dimen;->media_grid_spacing:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->l:I

    int-to-float p1, v1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->h:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->thumbnailScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->l:I

    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->l:I

    return p0
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->i:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;->onUpdate()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/matisse/internal/entity/Item;Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->h:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckedNum(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    const/high16 p0, -0x80000000

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckedNum(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckedNum(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->maxSelectableReached()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setChecked(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setCheckEnabled(Z)V

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->h:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->c(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->add(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->e()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->remove(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->remove(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->e()V

    goto :goto_0

    :cond_2
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->c(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f:Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/matisse/internal/model/SelectedItemCollection;->add(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getItemViewType(ILandroid/database/Cursor;)I
    .locals 0

    invoke-static {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    move-result-object p0

    const/4 p1, 0x2

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->isCapture()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .locals 6

    instance-of v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;

    if-eqz v0, :cond_3

    move-object p0, p1

    check-cast p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$attr;->capture_textColor:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v0

    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_2

    aget-object v2, p2, p1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    aput-object v3, p2, p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;)Landroid/widget/TextView;

    move-result-object p0

    aget-object p1, p2, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    const/4 v1, 0x2

    aget-object v1, p2, v1

    const/4 v2, 0x3

    aget-object p2, p2, v2

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;

    invoke-static {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->d(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->g:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->h:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean v5, v5, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->countable:Z

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;-><init>(ILandroid/graphics/drawable/Drawable;ZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->preBindMedia(Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->bindMedia(Lcom/onyx/android/sdk/matisse/internal/entity/Item;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;->setOnMediaGridClickListener(Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$OnMediaGridClickListener;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f(Lcom/onyx/android/sdk/matisse/internal/entity/Item;Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCheckViewClicked(Lcom/onyx/android/sdk/matisse/internal/ui/widget/CheckView;Lcom/onyx/android/sdk/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->g(Lcom/onyx/android/sdk/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$layout;->photo_capture_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;-><init>(Landroid/view/View;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$a;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$a;-><init>(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/onyx/android/sdk/imagepicker/R$layout;->media_grid_item:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onThumbnailClicked(Landroid/widget/ImageView;Lcom/onyx/android/sdk/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->h:Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    iget-boolean p1, p1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->showPreview:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->j:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;->onMediaClick(Lcom/onyx/android/sdk/matisse/internal/entity/Album;Lcom/onyx/android/sdk/matisse/internal/entity/Item;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->g(Lcom/onyx/android/sdk/matisse/internal/entity/Item;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshSelection()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    move v3, v1

    :goto_0
    if-gt v3, v0, :cond_2

    iget-object v4, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    instance-of v5, v4, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;

    if-eqz v5, :cond_1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Item;

    move-result-object v5

    check-cast v4, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;

    invoke-static {v4}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->f(Lcom/onyx/android/sdk/matisse/internal/entity/Item;Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public registerCheckStateListener(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->i:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    return-void
.end method

.method public registerOnMediaClickListener(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->j:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    return-void
.end method

.method public unregisterCheckStateListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->i:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    return-void
.end method

.method public unregisterOnMediaClickListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->j:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    return-void
.end method
