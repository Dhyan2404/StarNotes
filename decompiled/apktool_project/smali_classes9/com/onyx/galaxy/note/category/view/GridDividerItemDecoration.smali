.class public final Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B;\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0017\u0012\u0008\u0008\u0003\u0010$\u001a\u00020\u000f\u00a2\u0006\u0004\u0008,\u0010-J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J \u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J(\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J(\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J(\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J(\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u001e\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u001dR\u0016\u0010!\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010 R\u0016\u0010\"\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010 R\u0016\u0010$\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001dR\u001b\u0010(\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010&\u001a\u0004\u0008#\u0010\'R\u001b\u0010+\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010&\u001a\u0004\u0008\r\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroid/graphics/Rect;",
        "outRect",
        "Landroid/view/View;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "",
        "getItemOffsets",
        "Landroid/graphics/Canvas;",
        "c",
        "onDraw",
        "",
        "d",
        "b",
        "canvas",
        "a",
        "pos",
        "spanCount",
        "childCount",
        "",
        "g",
        "i",
        "j",
        "h",
        "f",
        "I",
        "dividerWidth",
        "firstRowTopMargin",
        "Z",
        "isNeedSpace",
        "isLastRowNeedSpace",
        "e",
        "dividerColor",
        "Landroid/graphics/Paint;",
        "Lkotlin/Lazy;",
        "()Landroid/graphics/Paint;",
        "paint",
        "",
        "()F",
        "defaultDividerWidth",
        "<init>",
        "(IIZZI)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:I

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 5
    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIZZI)V
    .locals 0
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 8
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    .line 9
    iput p2, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->b:I

    .line 10
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->c:Z

    .line 11
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->d:Z

    .line 12
    iput p5, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->e:I

    .line 13
    new-instance p1, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$paint$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$paint$2;-><init>(Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->f:Lkotlin/Lazy;

    .line 14
    sget-object p1, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$defaultDividerWidth$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration$defaultDividerWidth$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->g:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    const/4 p5, -0x1

    .line 6
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZI)V

    return-void
.end method

.method public static final synthetic access$getDividerColor$p(Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->e:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    add-int/2addr v9, v8

    int-to-float v11, v6

    int-to-float v12, v8

    int-to-float v13, v7

    int-to-float v14, v9

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->e()Landroid/graphics/Paint;

    move-result-object v15

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    add-int/2addr v5, v4

    int-to-float v9, v4

    int-to-float v10, v6

    int-to-float v11, v5

    int-to-float v12, v7

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->e()Landroid/graphics/Paint;

    move-result-object v13

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->f(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    div-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->c()F

    move-result p0

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final c()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->f(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v3

    mul-int v4, v0, v3

    sub-int v4, v2, v4

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->c:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, -0x1

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    mul-int/2addr v0, v1

    if-gt v4, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr p0, v3

    sub-int v4, v2, p0

    :cond_1
    return v4
.end method

.method public final e()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public final f(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    rem-int/2addr p2, p3

    if-nez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->f(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p2

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    div-int v4, p2, p4

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr p2, v5

    add-int/lit8 v5, p4, -0x1

    div-int/2addr p2, v5

    invoke-virtual {p0, p3, v0, p4, v1}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->h(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result v5

    invoke-virtual {p0, p3, v0, p4, v1}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->j(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result p3

    rem-int/2addr v0, p4

    sub-int/2addr p2, v4

    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    sub-int/2addr v4, v0

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a:I

    iget p4, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->b:I

    if-lez p4, :cond_2

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move p4, v3

    :goto_1
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->d:Z

    if-nez p0, :cond_3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v3, p2

    :goto_2
    invoke-virtual {p1, v0, p4, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    div-int/2addr p2, p3

    const/4 p0, 0x1

    add-int/2addr p2, p0

    if-ne p2, p0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    add-int/2addr p2, p0

    rem-int/2addr p2, p3

    if-nez p2, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public final j(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    rem-int p0, p4, p3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    div-int/2addr p4, p3

    goto :goto_0

    :cond_0
    div-int/2addr p4, p3

    add-int/2addr p4, v0

    :goto_0
    div-int/2addr p2, p3

    add-int/2addr p2, v0

    if-ne p4, p2, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
