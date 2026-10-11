.class public final Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1855#2,2:100\n*S KotlinDebug\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt\n*L\n51#1:100,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u001a?\u0010\u0008\u001a\u00020\u0001*\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000e\u001a&\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b*\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00032\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u001a \u0010\u0016\u001a\u00020\u0017*\u00020\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000b2\u0006\u0010\u0019\u001a\u00020\u0017\u001a\n\u0010\u001a\u001a\u00020\u001b*\u00020\t\u00a8\u0006\u001c"
    }
    d2 = {
        "updateNotePageInfo",
        "",
        "globalNotePage",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "globalPageInfo",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "ensureInitReferenceShape",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "shapeList",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "notePageLoad",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "padId",
        "filterInPageRectShapeList",
        "targetNotePage",
        "shapes",
        "mergeLayers",
        "",
        "srcLayerIds",
        "targetLayerId",
        "viewportRect",
        "Landroid/graphics/RectF;",
        "sdk-note_overseasRelease"
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
        "SMAP\nNoteDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1855#2,2:100\n*S KotlinDebug\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt\n*L\n51#1:100,2\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method

.method public static final d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/graphics/RectF;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final ensureInitReferenceShape(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapeList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notePageLoad"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->filterReferenceShapes(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    instance-of v0, p1, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->getTargetShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;->getShapeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->getShapeById(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->setTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;->updateShapeRect()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static synthetic ensureInitReferenceShape$default(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$ensureInitReferenceShape$1;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$ensureInitReferenceShape$1;-><init>(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->ensureInitReferenceShape(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final filterInPageRectShapeList(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetNotePage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;

    invoke-direct {v2, v0, p0}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;-><init>(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    invoke-static {p0, p1, v2}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->ensureInitReferenceShape(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getTargetShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$notePage$1;

    invoke-direct {v5, p0}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$notePage$1;-><init>(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    new-instance v6, Lcom/sunia/HTREnginev2/fvj;

    invoke-direct {v6, v5}, Lcom/sunia/HTREnginev2/fvj;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-nez v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1;

    invoke-direct {v6, v4}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1;-><init>(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    new-instance v4, Lcom/sunia/HTREnginev2/gvj;

    invoke-direct {v4, v6}, Lcom/sunia/HTREnginev2/gvj;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "computeIfAbsent(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/graphics/RectF;

    sget-object v5, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static final mergeLayers(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;I)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
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
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcLayerIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->removeLayers(Ljava/util/List;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerInfoExist(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result p0

    return p0
.end method

.method public static final updateNotePageInfo(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    :cond_1
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->updateNotePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-void
.end method

.method public static final updateNotePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerCount()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->mergePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerInfoExist(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setLayerList(Ljava/util/List;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method

.method public static final viewportRect(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getViewSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
