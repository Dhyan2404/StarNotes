.class public final Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPopupWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PopupWindow.kt\ncom/onyx/galaxy/note/common/extension/PopupWindowKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n344#2,3:120\n1#3:123\n*S KotlinDebug\n*F\n+ 1 PopupWindow.kt\ncom/onyx/galaxy/note/common/extension/PopupWindowKt\n*L\n48#1:120,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a8\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u001a\n\u0010\u000b\u001a\u00020\u000c*\u00020\u0002\u001a>\u0010\r\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u001a\u0012\u0010\u0018\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "getWindowLocationSmartly",
        "Lcom/onyx/android/sdk/base/data/WindowLocation;",
        "Landroid/widget/PopupWindow;",
        "selectionRect",
        "Landroid/graphics/Rect;",
        "activityRect",
        "requiredMinWidth",
        "",
        "requiredMinHeight",
        "margin",
        "",
        "setDefaultAttribute",
        "",
        "showAtShapeTop",
        "anchor",
        "Landroid/view/View;",
        "rootView",
        "hitTestShape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "hitTestVirtualPage",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "extraOffsetX",
        "",
        "extraOffsetY",
        "updateOutsideTouchable",
        "touchable",
        "",
        "note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPopupWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PopupWindow.kt\ncom/onyx/galaxy/note/common/extension/PopupWindowKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n344#2,3:120\n1#3:123\n*S KotlinDebug\n*F\n+ 1 PopupWindow.kt\ncom/onyx/galaxy/note/common/extension/PopupWindowKt\n*L\n48#1:120,3\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a(Landroid/widget/PopupWindow;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->b(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public static final b(Landroid/widget/PopupWindow;Z)V
    .locals 1

    const-string v0, "$this_updateOutsideTouchable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public static final getWindowLocationSmartly(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLjava/lang/Number;)Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 21
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "selectionRect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activityRect"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "margin"

    move-object/from16 v3, p5

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v3, v4

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    sget-object v15, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_RIGHT:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v16, Lcom/onyx/android/sdk/base/data/DockPoint;->CENTER_LEFT:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v11, Lcom/onyx/android/sdk/base/data/WindowLocation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1b

    const/16 v17, 0x0

    move-object v2, v11

    move v5, v1

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Lcom/onyx/android/sdk/base/data/WindowLocation;-><init>(IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-object v2, v11

    move-object/from16 v8, v16

    move-object v9, v15

    move-object v15, v11

    move-object/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Lcom/onyx/android/sdk/base/data/WindowLocation;-><init>(IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v16, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    sget-object v17, Lcom/onyx/android/sdk/base/data/DockPoint;->TOP_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    new-instance v11, Lcom/onyx/android/sdk/base/data/WindowLocation;

    const/4 v5, 0x0

    const/16 v10, 0x17

    const/16 v19, 0x0

    move-object v2, v11

    move v6, v1

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v20, v11

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/onyx/android/sdk/base/data/WindowLocation;-><init>(IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-object v2, v11

    move-object/from16 v8, v17

    move-object/from16 v9, v16

    move-object v1, v11

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/onyx/android/sdk/base/data/WindowLocation;-><init>(IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    filled-new-array {v15, v3, v1, v4}, [Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_0

    move v7, v8

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/onyx/android/sdk/base/data/WindowLocation;

    int-to-float v2, v13

    cmpl-float v2, v2, p3

    if-lez v2, :cond_2

    move-object v11, v3

    goto :goto_1

    :cond_2
    int-to-float v2, v12

    cmpl-float v2, v2, p3

    if-lez v2, :cond_3

    move-object v11, v15

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_4

    move-object v11, v4

    goto :goto_1

    :cond_4
    int-to-float v0, v14

    cmpl-float v0, v0, p4

    if-lez v0, :cond_5

    move-object v11, v1

    :cond_5
    :goto_1
    return-object v11

    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static synthetic getWindowLocationSmartly$default(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLjava/lang/Number;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p4, Lcom/onyx/android/sdk/device/R$dimen;->dp_20:I

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->getWindowLocationSmartly(Landroid/widget/PopupWindow;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLjava/lang/Number;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p0

    return-object p0
.end method

.method public static final setDefaultAttribute(Landroid/widget/PopupWindow;)V
    .locals 3
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->popup_shadow_bg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/onyx/galaxy/note/R$style;->popupWindowAnimation:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public static final showAtShapeTop(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;II)V
    .locals 4
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestShape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestVirtualPage"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, v2, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getMeasureSize$default(Landroid/view/View;IIILjava/lang/Object;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v3, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object p3, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    sget-object p4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_15:I

    invoke-virtual {p4, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr v0, p4

    if-gez v1, :cond_0

    move v1, v2

    :cond_0
    if-gez v0, :cond_1

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    add-int v0, p2, p4

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p5

    add-int/2addr v1, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p6

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public static synthetic showAtShapeTop$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IIILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->showAtShapeTop(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;II)V

    return-void
.end method

.method public static final updateOutsideTouchable(Landroid/widget/PopupWindow;Z)V
    .locals 1
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/j5l;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/j5l;-><init>(Landroid/widget/PopupWindow;Z)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method
