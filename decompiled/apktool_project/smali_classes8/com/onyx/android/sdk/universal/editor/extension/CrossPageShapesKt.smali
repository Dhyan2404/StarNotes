.class public final Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossPageShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossPageShapes.kt\ncom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,87:1\n766#2:88\n857#2,2:89\n1549#2:91\n1620#2,3:92\n1855#2:95\n1856#2:98\n766#2:102\n857#2,2:103\n215#3,2:96\n125#3:99\n152#3,2:100\n154#3:105\n*S KotlinDebug\n*F\n+ 1 CrossPageShapes.kt\ncom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt\n*L\n34#1:88\n34#1:89,2\n35#1:91\n35#1:92,3\n38#1:95\n38#1:98\n84#1:102\n84#1:103,2\n43#1:96,2\n82#1:99\n82#1:100,2\n82#1:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a6\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u0004\u001a\u00020\u0005\u001a4\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u000b0\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "createCrossPageShape",
        "Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;",
        "targetShape",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "createCrossPageShapeMap",
        "",
        "shapeList",
        "",
        "visibleBoxList",
        "filterUnCrossPageShapes",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCrossPageShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossPageShapes.kt\ncom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,87:1\n766#2:88\n857#2,2:89\n1549#2:91\n1620#2,3:92\n1855#2:95\n1856#2:98\n766#2:102\n857#2,2:103\n215#3,2:96\n125#3:99\n152#3,2:100\n154#3:105\n*S KotlinDebug\n*F\n+ 1 CrossPageShapes.kt\ncom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt\n*L\n34#1:88\n34#1:89,2\n35#1:91\n35#1:92,3\n38#1:95\n38#1:98\n84#1:102\n84#1:103,2\n43#1:96,2\n82#1:99\n82#1:100,2\n82#1:105\n*E\n"
    }
.end annotation


# direct methods
.method public static final createCrossPageShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "targetShape"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.ReferenceShape"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->ensureShapeUniqueId()V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;-><init>()V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setShapeId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setPageId(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setMatrixValues([F)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setLayerId(I)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->setTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCreatedAt(Ljava/util/Date;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->updateShapeRect()V

    return-object v0
.end method

.method public static final createCrossPageShapeMap(Ljava/util/List;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/Map;
    .locals 9
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    check-cast p0, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt$createCrossPageShapeMap$shapeScreenRectMap$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt$createCrossPageShapeMap$shapeScreenRectMap$1;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt$createCrossPageShapeMap$shapeScreenRectMap$2;

    invoke-direct {v2, p2}, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt$createCrossPageShapeMap$shapeScreenRectMap$2;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-static {p0, v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->union(Ljava/util/Collection;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;

    invoke-virtual {v3, p2, v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo$Companion;->getCrossPageMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v6, p2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt;->createCrossPageShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    move-result-object v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setPageUniqueId(Ljava/lang/String;)V

    new-instance v7, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    invoke-direct {v7}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;-><init>()V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setShapeId(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPageUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->setPageId(Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->ensureShapeSourceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;->addShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public static final filterUnCrossPageShapes(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibleBoxList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt$filterUnCrossPageShapes$boxInfoMap$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/CrossPageShapesKt$filterUnCrossPageShapes$boxInfoMap$1;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->toPageShapeMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v7

    sget-object v8, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
