.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;->a:I

    iput p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;->b:I

    iput-boolean p3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;->c:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;->a:I

    rem-int p4, p2, p3

    iget-boolean v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;->c:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;->b:I

    mul-int v0, p4, p0

    div-int/2addr v0, p3

    sub-int v0, p0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p0

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, p3, :cond_0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGridInset;->b:I

    mul-int v0, p4, p0

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p0

    div-int/2addr p4, p3

    sub-int p4, p0, p4

    iput p4, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p3, :cond_2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
