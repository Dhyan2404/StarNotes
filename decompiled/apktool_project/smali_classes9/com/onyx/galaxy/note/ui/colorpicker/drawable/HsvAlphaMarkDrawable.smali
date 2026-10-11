.class public final Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;
.super Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;",
        "()V",
        "drawContent",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getCornerRadius",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v7, 0x2

    int-to-float v1, v7

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    float-to-int v8, v1

    invoke-static {v4, v8}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v10

    if-lez v10, :cond_0

    if-le v2, v9, :cond_1

    :cond_0
    if-gez v10, :cond_2

    if-gt v9, v2, :cond_2

    :cond_1
    move v11, v2

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    int-to-float v3, v11

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    add-float v4, v2, v0

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eq v11, v9, :cond_2

    add-int/2addr v11, v10

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-static {v1, v8}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-lez v8, :cond_3

    if-le v2, v7, :cond_4

    :cond_3
    if-gez v8, :cond_5

    if-gt v7, v2, :cond_5

    :cond_4
    move v9, v2

    :goto_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    int-to-float v3, v9

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    add-float v4, v2, v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eq v9, v7, :cond_5

    add-int/2addr v9, v8

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getCornerRadius()F
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method
