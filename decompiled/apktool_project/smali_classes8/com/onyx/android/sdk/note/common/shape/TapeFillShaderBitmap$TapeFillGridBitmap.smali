.class public final Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillGridBitmap;
.super Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapeFillGridBitmap"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000bH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$TapeFillGridBitmap;",
        "Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;",
        "()V",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "init",
        "color",
        "",
        "scale",
        "",
        "setHeight",
        "height",
        "sdk-note_overseasRelease"
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
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->TAPE_FILL_STYLE_GRID:Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;-><init>(Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/note/R$color;->tape_bias_line_color:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p1

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move v3, v0

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move v2, v0

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public init(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->init(IF)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$dimen;->tape_shape_shader_grid_line_stroke_width:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->setStrokeLineWidth(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getStrokeLineWidth()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getType()Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillStyle;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    mul-float/2addr p0, p2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setHeight(F)V
    .locals 3

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->setHeight(F)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$integer;->tape_shape_shader_grid_num:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getScale()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToHeight(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getStrokeLineWidth()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/TapeFillShaderBitmap$BaseTapeFillShaderBitmapCreator;->getScale()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
