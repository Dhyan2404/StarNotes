.class public final Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0017J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\rR\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0016\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001eR\u0014\u0010#\u001a\u00020\r8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001b\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "draw",
        "",
        "alpha",
        "setAlpha",
        "Landroid/graphics/ColorFilter;",
        "colorFilter",
        "setColorFilter",
        "getOpacity",
        "",
        "widthInPx",
        "setProgressWidth",
        "color",
        "setBackgroundArcColor",
        "setProgressArcColor",
        "progress",
        "setProgress",
        "Landroid/graphics/Paint;",
        "a",
        "Lkotlin/Lazy;",
        "()Landroid/graphics/Paint;",
        "paint",
        "b",
        "F",
        "sweepAngle",
        "c",
        "I",
        "backgroundArcColor",
        "d",
        "progressArcColor",
        "e",
        "startAngle",
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
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:F

.field public c:I

.field public d:I

.field public final e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable$paint$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable$paint$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$color;->primary_50:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->c:I

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->d:I

    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->e:F

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "getBounds(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v4, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v5, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v6, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v7, v2, v1

    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object v11

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v4, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v5, v2, v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v6, v2, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v7, v0, v1

    iget v8, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->e:F

    iget v9, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->b:F

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object v11

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PixelFormat.TRANSPARENT"
            imports = {
                "android.graphics.PixelFormat"
            }
        .end subannotation
    .end annotation

    const/4 p0, -0x2

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setBackgroundArcColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->c:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setProgress(F)V
    .locals 1

    const/16 v0, 0x168

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->b:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setProgressArcColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->d:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setProgressWidth(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/CircleProgressDrawable;->a()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
