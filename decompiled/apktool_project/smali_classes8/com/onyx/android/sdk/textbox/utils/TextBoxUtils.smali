.class public final Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J.\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0010J\u001e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 J\u000e\u0010\"\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u001eJ\u000e\u0010#\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010$\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010%\u001a\u00020\u0010J(\u0010$\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u0010J\u0018\u0010(\u001a\u00020\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010\u000c2\u0006\u0010%\u001a\u00020\u0010J\u001e\u0010*\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 \u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;",
        "",
        "()V",
        "drawTextRun",
        "",
        "context",
        "Landroid/content/Context;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "textStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "rect",
        "Landroid/graphics/RectF;",
        "args",
        "Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;",
        "getEditorMinWidth",
        "",
        "getLocationInParent",
        "",
        "view",
        "Landroid/view/View;",
        "getOffsetXYOnFirstSave",
        "Landroid/graphics/PointF;",
        "shapeTextStyle",
        "width",
        "height",
        "layoutWidth",
        "layoutHeight",
        "getTextBoxOffset",
        "textBoxView",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "lastPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "getTextBoxRect",
        "normalizeRotation",
        "rotatePoint",
        "angle",
        "cx",
        "cy",
        "rotateRect",
        "rectF",
        "updateTextBoxPosition",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final drawTextRun(Landroid/content/Context;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Landroid/graphics/RectF;Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "canvas"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "textStyle"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rect"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    new-instance p0, Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p5}, Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;->getRichTextRun()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getChar()C

    move-result v2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isVertical()Z

    move-result v3

    const/16 v4, 0x5a

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isCJK(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->getColor()I

    move-result v2

    iput v2, p0, Landroid/text/TextPaint;->underlineColor:I

    const/high16 v2, 0x41a00000    # 20.0f

    iput v2, p0, Landroid/text/TextPaint;->underlineThickness:F

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->getFontSize(F)F

    move-result v2

    invoke-virtual {p5}, Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;->getScaleX()F

    move-result v6

    mul-float/2addr v2, v6

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->getColor()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->isUnderline()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->isBold()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->isItalic()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, -0x41b33333    # -0.2f

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getX()F

    move-result v6

    invoke-virtual {p5}, Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v2, p1, v6}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget v7, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    if-eqz v3, :cond_4

    if-ne v5, v4, :cond_4

    iget v3, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getY()F

    move-result v4

    invoke-virtual {p5}, Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;->getScaleY()F

    move-result v7

    mul-float/2addr v4, v7

    invoke-virtual {v2, p1, v4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    goto :goto_3

    :cond_4
    iget v3, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getBaseline()F

    move-result v4

    invoke-virtual {p5}, Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;->getScaleY()F

    move-result v7

    mul-float/2addr v4, v7

    invoke-virtual {v2, p1, v4}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    :goto_3
    int-to-float v2, v2

    add-float/2addr v3, v2

    int-to-float v2, v5

    invoke-virtual {p2, v2, v6, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v6, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    neg-float v1, v2

    invoke-virtual {p2, v1, v6, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getEditorMinWidth()F
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/textbox/R$dimen;->move_selection_handler_icon_width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sget v1, Lcom/onyx/android/sdk/textbox/R$dimen;->textbox_selection_handler_icon_size:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final getLocationInParent(Landroid/view/View;)[I
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p1, p0, v0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    aget p1, p0, v2

    sub-int/2addr v3, p1

    aput v3, p0, v2

    return-object p0
.end method

.method public final getOffsetXYOnFirstSave(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;FFFF)Landroid/graphics/PointF;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shapeTextStyle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isVertical()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getAlignType()I

    move-result p1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    add-float/2addr p1, p3

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p5

    add-float/2addr p1, p3

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getAlignType()I

    move-result p1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_4
    iget p1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p4

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/PointF;->x:F

    :goto_0
    return-object p0
.end method

.method public final getTextBoxOffset(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textBoxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidthInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeightInt()I

    move-result v1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    sub-float/2addr p3, p2

    new-instance p2, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->rotateRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->getTextBoxRect(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)Landroid/graphics/RectF;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getTouchLimitRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->translate(Landroid/graphics/RectF;FF)V

    iget v4, p0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/graphics/RectF;->top:F

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->adjustTranslateOffsetValue(FFIILandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final getTextBoxRect(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)Landroid/graphics/RectF;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->getLocationInParent(Landroid/view/View;)[I

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->normalizeRotation(Landroid/view/View;)F

    move-result p0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, p0, v1

    const/16 v2, 0x5a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v1, :cond_0

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    sub-float/2addr v2, p0

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float p0, v5

    mul-float/2addr v4, p0

    sub-float/2addr v1, v4

    aget p0, v0, v3

    int-to-float p0, p0

    goto/16 :goto_1

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v1, p0, v1

    const/16 v5, 0xb4

    if-gez v1, :cond_1

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v5

    sub-float/2addr v5, p0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    sub-float/2addr p0, v2

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float p0, v7

    mul-float/2addr v4, p0

    sub-float/2addr v1, v4

    aget p0, v0, v3

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    :goto_0
    double-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p0, v0

    goto :goto_1

    :cond_1
    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_2

    aget v1, v0, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, v5

    sub-float/2addr p0, v4

    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p0, v6

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    aget p0, v0, v3

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    goto :goto_0

    :cond_2
    aget v1, v0, v4

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x168

    int-to-float v3, v3

    sub-float/2addr v3, p0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p0, v3

    mul-float/2addr v2, p0

    sub-float p0, v0, v2

    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, p0

    invoke-direct {p1, v1, p0, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public final normalizeRotation(Landroid/view/View;)F
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p0

    const/16 p1, 0x168

    int-to-float p1, p1

    add-float/2addr p0, p1

    rem-float/2addr p0, p1

    return p0
.end method

.method public final rotatePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3
    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 4
    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p2
.end method

.method public final rotatePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 6
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final rotateRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p0
.end method

.method public final updateTextBoxPosition(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBoxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->getTextBoxOffset(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p0

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updatePosition(FF)V

    return-void
.end method
