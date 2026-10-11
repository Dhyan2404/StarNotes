.class public final Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;
.super Lcom/onyx/galaxy/note/ui/view/BaseDrawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0016\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016R\u0016\u0010\u000c\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000bR\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0016\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0011\u001a\u0004\u0008\u0010\u0010\u0013R\u001b\u0010\u0018\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\r\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0011\u001a\u0004\u0008\n\u0010\u0013R\u001b\u0010\u001c\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u001e\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u000bR\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u000bR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010&\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;",
        "Lcom/onyx/galaxy/note/ui/view/BaseDrawable;",
        "",
        "current",
        "total",
        "",
        "setIndicatorIndex",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "b",
        "I",
        "currentIndex",
        "c",
        "totalCount",
        "",
        "d",
        "Lkotlin/Lazy;",
        "a",
        "()F",
        "height",
        "e",
        "radius",
        "f",
        "padding",
        "g",
        "normalWidth",
        "h",
        "selectedWidth",
        "i",
        "normalColor",
        "j",
        "selectedColor",
        "Landroid/graphics/Paint;",
        "k",
        "Landroid/graphics/Paint;",
        "normalPaint",
        "l",
        "selectedPaint",
        "<init>",
        "()V",
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
.field public b:I

.field public c:I

.field public final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:I

.field public final j:I

.field public final k:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b:I

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$height$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$height$2;-><init>(Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$radius$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$radius$2;-><init>(Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$padding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$padding$2;-><init>(Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$normalWidth$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$normalWidth$2;-><init>(Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$selectedWidth$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable$selectedWidth$2;-><init>(Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->h:Lkotlin/Lazy;

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_background_color_04:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->i:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->j:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->k:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static final synthetic access$getHeight(Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;)F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->a()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final b()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final c()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final d()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b()F

    move-result v0

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c()F

    move-result v1

    iget v2, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b:I

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->e()F

    move-result v1

    add-float/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget v4, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b:I

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->e()F

    move-result v4

    add-float v8, v2, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->a()F

    move-result v4

    add-float v9, v3, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->d()F

    move-result v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->d()F

    move-result v11

    iget-object v12, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->l:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->e()F

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c()F

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b()F

    move-result v4

    add-float v8, v2, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->a()F

    move-result v4

    add-float v9, v3, v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->d()F

    move-result v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->d()F

    move-result v11

    iget-object v12, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->k:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b()F

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c()F

    move-result v5

    :goto_1
    add-float/2addr v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final setIndicatorIndex(II)V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->b:I

    iput p2, p0, Lcom/onyx/galaxy/note/ui/view/PageIndicatorDrawable;->c:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
