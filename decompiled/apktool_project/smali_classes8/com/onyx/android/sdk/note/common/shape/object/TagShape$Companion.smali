.class public final Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/object/TagShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J(\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006J,\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u0013\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0014R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;",
        "createTagBean",
        "",
        "width",
        "height",
        "scale",
        "Landroid/graphics/Bitmap;",
        "createBitmap",
        "tagBean",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;",
        "renderMeasure",
        "",
        "title",
        "",
        "calculateWidth",
        "getTagHeight",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "tagModel",
        "getTagDisplayTitle",
        "Landroid/text/TextPaint;",
        "tagTextPaint$delegate",
        "Lkotlin/Lazy;",
        "a",
        "()Landroid/text/TextPaint;",
        "tagTextPaint",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/text/TextPaint;
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->access$getTagTextPaint$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;

    return-object p0
.end method

.method public final calculateWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;Ljava/lang/String;)I
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->a()Landroid/text/TextPaint;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->tag_name_text_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    sget p2, Lcom/onyx/android/sdk/note/R$dimen;->tag_width_offset_size:I

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    sget v1, Lcom/onyx/android/sdk/note/R$dimen;->link_audio_margin_end:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sget v2, Lcom/onyx/android/sdk/note/R$dimen;->link_padding:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    sget v3, Lcom/onyx/android/sdk/note/R$dimen;->tag_shape_border_width:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    int-to-float p0, p0

    add-float/2addr p0, p2

    add-float/2addr p0, v1

    add-float/2addr p0, v2

    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    add-float/2addr p0, v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final createBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;FFF)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->createBitmap(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;FFF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final createBitmap(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;FFF)Landroid/graphics/Bitmap;
    .locals 16
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3
    sget v3, Lcom/onyx/android/sdk/note/R$layout;->layout_tag_shape:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 4
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    .line 5
    sget v3, Lcom/onyx/android/sdk/note/R$id;->content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    .line 7
    sget-object v7, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 8
    sget v9, Lcom/onyx/android/sdk/note/R$layout;->item_tag_shape_text:I

    invoke-virtual {v8, v9, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 9
    instance-of v8, v6, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    check-cast v6, Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    if-nez v6, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    sget v8, Lcom/onyx/android/sdk/note/R$id;->title:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 11
    sget v9, Lcom/onyx/android/sdk/note/R$id;->iv_icon:I

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    .line 13
    sget v11, Lcom/onyx/android/sdk/note/R$integer;->tag_shape_stroke_color_alpha:I

    invoke-virtual {v7, v11}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v11

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v12

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v13

    invoke-virtual {v13}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v13

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v14

    invoke-virtual {v14}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v14

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 14
    sget-object v12, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v13

    invoke-virtual {v13}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v13

    sget v14, Lcom/onyx/android/sdk/note/R$dimen;->tag_shape_fill_white_overlay_percent:I

    invoke-virtual {v7, v14}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v14

    const/4 v15, -0x1

    invoke-virtual {v12, v13, v15, v14}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->blend(IIF)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 15
    sget v13, Lcom/onyx/android/sdk/note/R$dimen;->tag_shape_border_width:I

    invoke-virtual {v7, v13}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v13

    .line 16
    invoke-virtual {v10, v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 17
    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v10

    sget v11, Lcom/onyx/android/sdk/note/R$dimen;->tag_shape_fill_black_overlay_percent:I

    invoke-virtual {v7, v11}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v7

    const/high16 v11, -0x1000000

    invoke-virtual {v12, v10, v11, v7}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->blend(IIF)I

    move-result v7

    .line 18
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v7, p0

    .line 20
    invoke-virtual {v7, v5}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->getTagDisplayTitle(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 22
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    .line 23
    invoke-static/range {p3 .. p3}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, v1

    div-float v5, p2, v4

    int-to-float v7, v3

    div-float v8, p3, v7

    const/high16 v9, 0x40000000    # 2.0f

    .line 24
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 25
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 26
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v6, v6, v1, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    mul-float/2addr v4, v0

    .line 28
    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    mul-float/2addr v7, v0

    .line 29
    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/FloatKt;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    .line 30
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 31
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 32
    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    invoke-static {v2, v1, v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->loadBitmapWithMatrix(Landroid/view/View;IILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final createTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    return-object p0
.end method

.method public final getTagDisplayTitle(Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "tagModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTagHeight()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/note/R$dimen;->tag_shape_height:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    return p0
.end method
