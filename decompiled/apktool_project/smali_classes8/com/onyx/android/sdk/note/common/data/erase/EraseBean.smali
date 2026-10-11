.class public final Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEraseBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseBean\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,162:1\n41#2,5:163\n1549#3:168\n1620#3,3:169\n1855#3,2:174\n37#4,2:172\n*S KotlinDebug\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseBean\n*L\n70#1:163,5\n77#1:168\n77#1:169,3\n97#1:174,2\n78#1:172,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\t\u001a\u00020\u00002\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000f\u001a\u00020\u000cJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0015\u001a\u00020\u0014J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\u0014\u0010\u001a\u001a\u00020\u00102\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nJ\u0018\u0010\u001d\u001a\u00020\u00102\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001c\u001a\u00020\u0007J\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "eraseShape",
        "setEraseShape",
        "getEraseShape",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "erasePoints",
        "setErasePoints",
        "",
        "getErasePoints",
        "",
        "eraseRadius",
        "setEraseRadius",
        "getEraseRadius",
        "",
        "cutShape",
        "setCutShape",
        "isCutShape",
        "Landroid/graphics/Path;",
        "getErasePath",
        "Landroid/graphics/Matrix;",
        "targetShapeMatrix",
        "setTargetShapeMatrix",
        "points",
        "isAllPointHitTest",
        "lastPoint",
        "currentPoint",
        "isPointHitTest",
        "point",
        "a",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "b",
        "Ljava/util/List;",
        "c",
        "F",
        "d",
        "Z",
        "e",
        "Landroid/graphics/Matrix;",
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
        "SMAP\nEraseBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseBean\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,162:1\n41#2,5:163\n1549#3:168\n1620#3,3:169\n1855#3,2:174\n37#4,2:172\n*S KotlinDebug\n*F\n+ 1 EraseBean.kt\ncom/onyx/android/sdk/note/common/data/erase/EraseBean\n*L\n70#1:163,5\n77#1:168\n77#1:169,3\n97#1:174,2\n78#1:172,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:F

.field public d:Z

.field public e:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->c:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->e:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->isNullOrEmpty(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->e:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final getErasePath()Landroid/graphics/Path;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_2
    invoke-static {p0, v2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->asPath(Ljava/util/List;Z)Landroid/graphics/Path;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getFillStrokePath(Landroid/graphics/Path;Ljava/lang/Number;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseRadius()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createHitTestPath(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Landroid/graphics/Path;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-array p0, v1, [Landroid/graphics/Path;

    invoke-interface {v2, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Path;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Path;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->concat([Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final getErasePoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getEraseRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->c:F

    return p0
.end method

.method public final getEraseShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final isAllPointHitTest(Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isCutShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->d:Z

    return p0
.end method

.method public final isPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 17
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "currentPoint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    iget-object v4, v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eqz v5, :cond_2

    sget-object v8, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v11

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v12

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v13

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v14

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v15

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v16

    invoke-virtual/range {v8 .. v16}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v5

    if-eqz v5, :cond_2

    return v7

    :cond_2
    sget-object v8, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v11

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v12

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v13

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v14

    iget v15, v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->c:F

    invoke-virtual/range {v8 .. v15}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTest(FFFFFFF)Z

    move-result v5

    if-eqz v5, :cond_4

    return v7

    :cond_3
    sget-object v8, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v11

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v12

    iget v13, v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->c:F

    invoke-virtual/range {v8 .. v13}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->isPointInsideCircle(FFFFF)Z

    move-result v5

    if-eqz v5, :cond_4

    return v7

    :cond_4
    move-object v5, v6

    goto/16 :goto_0

    :cond_5
    return v2

    :cond_6
    iget-object v0, v0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    sget-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v4, "FLOAT_ONE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-interface {v0, v2, v1, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->hitTest(FFF)Z

    move-result v0

    return v0

    :cond_7
    return v2
.end method

.method public final setCutShape(Z)Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->d:Z

    return-object p0
.end method

.method public final setErasePoints(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    return-object p0
.end method

.method public final setEraseRadius(F)Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->c:F

    return-object p0
.end method

.method public final setEraseShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final setTargetShapeMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->e:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->isNullOrEmpty(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->invertMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->b:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
