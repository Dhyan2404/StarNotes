.class public final Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;
.super Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0008\u0007*\u0002\u0013\u0017\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002R\u0014\u0010\u000c\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "drawContent",
        "b",
        "a",
        "",
        "c",
        "e",
        "I",
        "argb",
        "",
        "f",
        "Z",
        "selected",
        "g",
        "isAddButton",
        "com/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1",
        "h",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;",
        "rects",
        "com/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1",
        "i",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;",
        "paints",
        "<init>",
        "(IZZ)V",
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
.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;-><init>()V

    iput p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->e:I

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->f:Z

    iput-boolean p3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->g:Z

    new-instance p1, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    new-instance p1, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    return-void
.end method

.method public static final synthetic access$getArgb$p(Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->e:I

    return p0
.end method

.method public static final synthetic access$getCellColor(Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->c()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v3, 0x3

    int-to-float v7, v3

    div-float/2addr v1, v7

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v7

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAddButtonIcon()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v7

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v7

    sub-float v11, v0, v1

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAddButtonIcon()Landroid/graphics/Paint;

    move-result-object v13

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->e:I

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ColorKt;->hasTransparent(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x3

    int-to-float v1, v1

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getOpaquePreview()Landroid/graphics/RectF;

    move-result-object v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getOpaqueFill()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->g:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$color;->gray02:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->e:I

    :goto_0
    return p0
.end method

.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/16 v3, 0x14

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;->bounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v2

    int-to-float v0, v0

    add-float/2addr v6, v0

    iget v7, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v2

    add-float/2addr v7, v0

    iget v8, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v2

    sub-float/2addr v8, v0

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v2

    sub-float/2addr v5, v0

    invoke-direct {v4, v6, v7, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->setColorFill(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x2

    int-to-float v7, v6

    div-float v8, v1, v7

    sub-float/2addr v5, v8

    iget-object v9, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v8

    iget-object v10, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v10}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v8

    iget-object v11, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v11}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v8

    invoke-direct {v4, v5, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->setSlimBorder(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    div-float v8, v2, v7

    sub-float/2addr v5, v8

    sub-float/2addr v5, v0

    iget-object v9, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v8

    sub-float/2addr v9, v0

    iget-object v10, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v10}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v8

    add-float/2addr v10, v0

    iget-object v11, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v11}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v11, v8

    add-float/2addr v11, v0

    invoke-direct {v4, v5, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->setThickBorder(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v8}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    iget-object v7, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->setOpaquePreview(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v3, 0x3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getThickBorder()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getSlimBorder()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getThickBorder()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAddButtonBorder()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAddButtonBorderBg()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAddButtonIcon()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v0, v0, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getBgFill()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v3, 0x5

    int-to-float v5, v3

    div-float/2addr v1, v5

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_4

    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    :goto_1
    invoke-static {v7, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v8

    invoke-virtual {v7}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v7}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v7

    if-lez v7, :cond_1

    if-le v8, v9, :cond_2

    :cond_1
    if-gez v7, :cond_3

    if-gt v9, v8, :cond_3

    :cond_2
    :goto_2
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    iget-object v11, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v11}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->left:F

    int-to-float v12, v8

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v11}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->top:F

    int-to-float v12, v5

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    iget v12, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v1

    iput v12, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v1

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v11}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAlphaFill()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eq v8, v9, :cond_3

    add-int/2addr v8, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getColorFill()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getColorFill()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->b(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->f:Z

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getThickBorder()Landroid/graphics/RectF;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getThickBorder()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v4, v4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    iget-boolean v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->g:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getSlimBorder()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAddButtonBorderBg()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getSlimBorder()Landroid/graphics/RectF;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getAddButtonBorder()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->h:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;->getSlimBorder()Landroid/graphics/RectF;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;->i:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;->getSlimBorder()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method
