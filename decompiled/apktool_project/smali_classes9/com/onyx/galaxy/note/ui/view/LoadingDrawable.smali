.class public final Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;
.super Lcom/onyx/galaxy/note/ui/view/BaseDrawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u0001\u0019\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;",
        "Lcom/onyx/galaxy/note/ui/view/BaseDrawable;",
        "Landroid/graphics/Rect;",
        "bounds",
        "",
        "onBoundsChange",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "",
        "indicatorIndex",
        "a",
        "b",
        "I",
        "frameCount",
        "",
        "c",
        "J",
        "frameTime",
        "d",
        "startTime",
        "",
        "e",
        "Ljava/util/List;",
        "colorList",
        "com/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1",
        "f",
        "Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;",
        "drawArgs",
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
.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->b:I

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->d:J

    new-array v0, v0, [Ljava/lang/Integer;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_01:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_02:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_03:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_04:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_05:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_06:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_07:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v0, v4

    sget v2, Lcom/onyx/galaxy/note/R$color;->loading_anim_color_08:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->e:Ljava/util/List;

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getFrameIndex()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->b:I

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setColorIndex(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setLongIndicator(Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setRadius(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setCx(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setCy(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getCx()F

    move-result v2

    const v3, 0x3ee38e39

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setStartX(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->isLongIndicator()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getCx()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setEndX(F)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getCx()F

    move-result v2

    const v3, 0x3f471c72

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setEndX(F)V

    :goto_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getCy()F

    move-result v2

    const v3, 0x3d638e39

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setStartY(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getCy()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setEndY(F)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setCornerRadius(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    const/high16 v0, 0x42340000    # 45.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setRotation(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->c:J

    div-long/2addr v0, v3

    iget v3, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->b:I

    int-to-long v3, v3

    rem-long/2addr v0, v3

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->setFrameIndex(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->a(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getColorIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getRotation()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getCx()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getCy()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getStartX()F

    move-result v3

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getStartY()F

    move-result v4

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getEndX()F

    move-result v5

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getEndY()F

    move-result v6

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getRadius()F

    move-result v7

    iget-object v1, p0, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;->f:Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;->getRadius()F

    move-result v8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
