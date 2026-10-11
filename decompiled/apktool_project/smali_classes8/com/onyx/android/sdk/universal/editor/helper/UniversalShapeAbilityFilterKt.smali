.class public final Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0002\u001a\u001a\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c\u001a\n\u0010\r\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "drawSingleAngleOnly",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "isCurveSerialShape",
        "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;",
        "isLineSerialShape",
        "shouldDrawAligns",
        "editMode",
        "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;",
        "shouldDrawAngle",
        "shouldDrawParallel",
        "transformAction",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "shouldPurifyAngles",
        "supportStraightCorner",
        "sdk-universal_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final drawSingleAngleOnly(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "hexagon"

    const-string v1, "octagon"

    const-string v2, "pentagon"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isCurveSerialShape(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)Z
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "curvy_arrow"

    const-string v1, "bidirectional_curvy_arrow"

    const-string v2, "curve"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isLineSerialShape(Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;)Z
    .locals 5
    .param p0    # Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidirectional_line"

    const-string v1, "dash_line"

    const-string v2, "line"

    const-string v3, "direction_line"

    const-string v4, "wave_line"

    .line 4
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isLineSerialShape(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z
    .locals 5
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "wave_line"

    const-string v1, "dash_line"

    const-string v2, "line"

    const-string v3, "direction_line"

    const-string v4, "bidirectional_line"

    .line 2
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final shouldDrawAligns(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "editMode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->EDIT:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shouldDrawAngle(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z
    .locals 13
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "angle"

    const-string v1, "triangle"

    const-string v2, "right_triangle"

    const-string v3, "isosceles_triangle"

    const-string v4, "regular_triangle"

    const-string v5, "trapezoid"

    const-string v6, "right_trapezoid"

    const-string v7, "isosceles_trapezoid"

    const-string v8, "rhombus"

    const-string v9, "parallelogram"

    const-string v10, "pentagon"

    const-string v11, "hexagon"

    const-string v12, "octagon"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final shouldDrawParallel(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Z
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;->ADD:Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->isLineSerialShape(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z

    move-result p0

    return p0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleXY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleX:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->ScaleY:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    filled-new-array {p1, v0, v1, v2}, [Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const-string p1, "circle"

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    const-string p0, ""

    :cond_3
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const-string p1, "bracket"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_6

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Rotation:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    if-ne p2, p0, :cond_5

    move v0, p1

    :cond_5
    return v0

    :cond_6
    return p1
.end method

.method public static final shouldPurifyAngles(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "isosceles_triangle"

    const-string v1, "right_triangle"

    const-string v2, "triangle"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final supportStraightCorner(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z
    .locals 4
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getFeatureCollection()Lcom/onyx/android/sdk/genericshape/FeatureCollection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->getUniversalShapeType()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "curve"

    const-string v1, "wave_line"

    const-string v2, "line"

    const-string v3, "dash_line"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
