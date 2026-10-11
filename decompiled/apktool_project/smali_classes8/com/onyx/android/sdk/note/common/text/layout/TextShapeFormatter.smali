.class public final Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextShapeFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapeFormatter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,220:1\n1045#2:221\n1549#2:222\n1620#2,2:223\n1549#2:225\n1620#2,2:226\n1549#2:228\n1620#2,3:229\n1622#2:232\n1622#2:233\n1549#2:234\n1620#2,3:235\n819#2:238\n847#2,2:239\n1855#2,2:241\n1855#2,2:243\n1864#2,2:245\n1549#2:247\n1620#2,3:248\n3464#2,10:251\n1864#2,3:266\n1866#2:269\n1864#2,2:270\n1864#2,3:272\n1866#2:275\n703#3,5:261\n*S KotlinDebug\n*F\n+ 1 TextShapeFormatter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter\n*L\n16#1:221\n18#1:222\n18#1:223,2\n19#1:225\n19#1:226,2\n20#1:228\n20#1:229,3\n19#1:232\n18#1:233\n30#1:234\n30#1:235,3\n34#1:238\n34#1:239,2\n36#1:241,2\n55#1:243,2\n92#1:245,2\n97#1:247\n97#1:248,3\n108#1:251,10\n126#1:266,3\n92#1:269\n185#1:270,2\n186#1:272,3\n185#1:275\n122#1:261,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J0\u0010\u0008\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00022\u0010\u0010\u0005\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\u0006\u0010\u0007\u001a\u00020\u0006J2\u0010\r\u001a\u00020\u000c2 \u0010\u000b\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\t0\u0002j\u0002`\n0\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J,\u0010\u000f\u001a\u00020\u000c2\u001a\u0010\u000e\u001a\u0016\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\t0\u0002j\u0002`\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002JU\u0010\u0016\u001a\u00020\u00102\u001a\u0010\u000e\u001a\u0016\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\t0\u0002j\u0002`\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;",
        "",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeList;",
        "shapes",
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "args",
        "format",
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegment;",
        "Lcom/onyx/android/sdk/note/common/text/layout/TextShapeLine;",
        "lines",
        "",
        "c",
        "line",
        "a",
        "",
        "blockAngle",
        "Landroid/graphics/Matrix;",
        "normalMatrix",
        "rotateMatrix",
        "lastBaseLine",
        "b",
        "(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;FLandroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Float;)F",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextShapeFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextShapeFormatter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,220:1\n1045#2:221\n1549#2:222\n1620#2,2:223\n1549#2:225\n1620#2,2:226\n1549#2:228\n1620#2,3:229\n1622#2:232\n1622#2:233\n1549#2:234\n1620#2,3:235\n819#2:238\n847#2,2:239\n1855#2,2:241\n1855#2,2:243\n1864#2,2:245\n1549#2:247\n1620#2,3:248\n3464#2,10:251\n1864#2,3:266\n1866#2:269\n1864#2,2:270\n1864#2,3:272\n1866#2:275\n703#3,5:261\n*S KotlinDebug\n*F\n+ 1 TextShapeFormatter.kt\ncom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter\n*L\n16#1:221\n18#1:222\n18#1:223,2\n19#1:225\n19#1:226,2\n20#1:228\n20#1:229,3\n19#1:232\n18#1:233\n30#1:234\n30#1:235,3\n34#1:238\n34#1:239,2\n36#1:241,2\n55#1:243,2\n92#1:245,2\n97#1:247\n97#1:248,3\n108#1:251,10\n126#1:266,3\n92#1:269\n185#1:270,2\n186#1:272,3\n185#1:275\n122#1:261,5\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;->Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;

    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v4, 0x45

    invoke-virtual {v2, v3, v4, v1}, Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative$Companion;->loadGlyphPathOnce(Ljava/lang/String;IF)Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPath;->getAdvance()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getCharSpacing()Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getCharSpacing()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    sget-object v3, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;->Companion:Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;->calculateAvgLineAngle(Ljava/util/List;)F

    move-result v4

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;->calculateLineCenter(Ljava/util/List;)Landroid/graphics/PointF;

    move-result-object v3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v4, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-float v4, v4

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v4, v7, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v8, 0x1

    if-gez v8, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 p2, v0

    move-object/from16 v23, v1

    goto/16 :goto_d

    :cond_2
    check-cast v12, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v12, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual/range {v16 .. v16}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v18

    div-float v18, v18, v17

    invoke-virtual/range {v16 .. v16}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v19

    div-float v19, v19, v17

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {v16 .. v16}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 p2, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {v3, v7, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v5, v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    new-instance v3, Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v9

    sub-float v9, v7, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v20, v10

    sub-float v10, v0, v19

    add-float v7, v7, v18

    add-float v0, v0, v19

    invoke-direct {v3, v9, v10, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v14, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    move/from16 v9, v16

    move/from16 v10, v20

    goto :goto_2

    :cond_3
    move-object/from16 p2, v0

    move/from16 v16, v9

    move/from16 v20, v10

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    move/from16 v22, v11

    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move/from16 v22, v11

    const/4 v15, 0x0

    goto :goto_4

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    const/4 v15, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v18

    check-cast v19, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    check-cast v10, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    sget-object v7, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKCharacter(I)Z

    move-result v10

    move/from16 v22, v11

    invoke-virtual/range {v19 .. v19}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKCharacter(I)Z

    move-result v3

    if-nez v10, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    add-int/lit8 v15, v15, 0x1

    :cond_7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v18

    move-object/from16 v3, v21

    move/from16 v11, v22

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    move/from16 v22, v11

    :goto_4
    move v3, v15

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_6
    const/4 v7, 0x0

    goto :goto_8

    :cond_9
    if-nez v3, :cond_a

    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_7

    :cond_b
    sub-float/2addr v0, v9

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    :goto_8
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v10, v20

    move/from16 v11, v22

    const/4 v9, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v14, v9, 0x1

    if-gez v9, :cond_c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_c
    check-cast v12, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v8, :cond_d

    if-nez v9, :cond_d

    const/4 v15, 0x1

    goto :goto_a

    :cond_d
    const/4 v15, 0x0

    :goto_a
    if-nez v9, :cond_e

    const/4 v9, 0x1

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v12}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->loadRenderPath()Lcom/onyx/android/sdk/base/data/FontPathRectList;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {v12}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual {v12}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v20

    div-float v21, v19, v17

    div-float v20, v20, v17

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {v12}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v23, v1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v12}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v22

    move-object/from16 v24, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {v7, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v5, v7}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v15, :cond_f

    iget v3, v1, Landroid/graphics/PointF;->y:F

    add-float v3, v3, v20

    invoke-virtual/range {v18 .. v18}, Lcom/onyx/android/sdk/base/data/FontPathRect;->getGlyphRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float v11, v3, v7

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v16, v1, v21

    goto :goto_c

    :cond_f
    if-eqz v9, :cond_10

    add-float v3, v16, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v1, v21

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :cond_10
    :goto_c
    sget-object v1, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->Companion:Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;

    invoke-virtual {v12}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine$Companion;->isCJKCharacter(I)Z

    move-result v1

    if-nez v9, :cond_12

    if-nez v1, :cond_11

    if-eqz v10, :cond_12

    :cond_11
    add-float v16, v16, v0

    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/onyx/android/sdk/base/data/FontPathRect;->getGlyphRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v11, v3

    add-float v9, v16, v19

    new-instance v10, Landroid/graphics/PointF;

    add-float v15, v16, v21

    sub-float v3, v3, v20

    invoke-direct {v10, v15, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v6, v10}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    new-instance v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v15, v3, Landroid/graphics/PointF;->x:F

    sub-float v15, v15, v21

    iget v7, v3, Landroid/graphics/PointF;->y:F

    sub-float v7, v7, v20

    invoke-direct {v10, v15, v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v15, v3, Landroid/graphics/PointF;->x:F

    add-float v15, v15, v21

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/PointF;->y:F

    add-float v0, v0, v20

    invoke-direct {v7, v15, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v12, v10, v7}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->updateShapeRect(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v7, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v12, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v12}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    move v10, v1

    move/from16 v16, v9

    move v9, v14

    move/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v3, v24

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_13
    move-object/from16 v23, v1

    move/from16 v9, v16

    :goto_d
    move-object/from16 v0, p2

    move v8, v13

    move-object/from16 v1, v23

    goto/16 :goto_1

    :cond_14
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;FLandroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Float;)F
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            "F",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/Matrix;",
            "Ljava/lang/Float;",
            ")F"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getLineSpacing()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v1

    mul-float/2addr v0, v1

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v8, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->loadRenderPath()Lcom/onyx/android/sdk/base/data/FontPathRectList;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/base/data/FontPathRect;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    div-float/2addr v12, v13

    new-instance v13, Landroid/graphics/PointF;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v14, p4

    invoke-static {v14, v13}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v13

    if-nez v4, :cond_3

    if-nez v7, :cond_3

    if-nez p6, :cond_2

    iget v2, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v12

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/FontPathRect;->getGlyphRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v7

    goto :goto_2

    :cond_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    :cond_3
    :goto_2
    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/FontPathRect;->getGlyphRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v2, v7

    new-instance v10, Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v12

    invoke-direct {v10, v13, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v7, p5

    invoke-static {v7, v10}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v10

    new-instance v13, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v15, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v15, v11

    iget v3, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v12

    invoke-direct {v13, v15, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v15, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v11

    iget v11, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    invoke-direct {v3, v15, v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v8, v13, v3}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->updateShapeRect(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v11, p3

    neg-float v12, v11

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v12, v13, v10}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v8, v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->updateShapeRect()V

    move v7, v9

    goto/16 :goto_1

    :cond_4
    move/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v7, p5

    move v4, v6

    goto/16 :goto_0

    :cond_5
    return v2
.end method

.method public final c(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;>;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            ")V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;->a(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getLineSpacing()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v1, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;->Companion:Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;->calculateAvgLineAngle(Ljava/util/List;)F

    move-result p1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter$Companion;->calculateLinesCenter(Ljava/util/List;)Landroid/graphics/PointF;

    move-result-object v1

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, p1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    neg-float v2, p1

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v2, v3, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v8, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    move-object v2, p0

    move-object v4, p2

    move v5, p1

    move-object v6, v9

    move-object v7, v10

    invoke-virtual/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;->b(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;FLandroid/graphics/Matrix;Landroid/graphics/Matrix;Ljava/lang/Float;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final format(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeSegmenter;->segmentLines(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter$format$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter$format$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v6, p2}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->clone(Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    move-result-object v7

    invoke-virtual {v6}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeUniqueId(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/text/layout/TextShapeFormatter;->c(Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object p0
.end method
