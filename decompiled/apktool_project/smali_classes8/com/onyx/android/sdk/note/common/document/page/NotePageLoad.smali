.class public final Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0002J\u0012\u0010\u0008\u001a\u00020\u0003*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;",
        "",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "",
        "ensurePageLoaded",
        "loadPage",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "checkShapePoints",
        "notePage",
        "b",
        "a",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    instance-of p0, p2, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;->migrate(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    instance-of p0, p2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->updateHWRTextShapeChange(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :cond_2
    return-void
.end method

.method public final checkShapePoints(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isTextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getSHAPE_DEFAULT_POSITION()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getSHAPE_DEFAULT_POSITION()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {p2, p0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v0

    add-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    :cond_1
    invoke-interface {p2, p1, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->updatePoints()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ensurePageLoaded(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->loadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-void
.end method

.method public final loadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getNewAddedShapeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemovedShapeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->loadShapeListQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad$loadPage$1;

    invoke-direct {v2, p1, v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad$loadPage$1;-><init>(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Benchmark;->reportDebug(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPointLoader()Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;->loadShapePointList()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    sget-object v9, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->shapeFromModel(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v9

    sget-object v10, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteLinkProvider()Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;

    move-result-object v11

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getLinkMap()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v10, v11, v7, v12}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->loadShapeLinkModel(Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Ljava/util/Map;)V

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    sget-object v11, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v11, v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->needLoadTouchPoints(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->getTinyPointList()Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v7, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v7}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v11

    invoke-virtual {v11}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getMaxPressure()F

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/onyx/android/sdk/base/data/TouchPointList;->addAll(Ljava/util/List;F)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v7

    invoke-interface {v9, v7}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->addPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getRevisionId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->add(Ljava/util/Collection;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, p1, v9}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->checkShapePoints(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v7

    const/4 v10, 0x2

    if-lt v7, v10, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v9}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->b(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p1, v9, v8}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->updateTagShapeChange(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    invoke-virtual {p0, p1, v9}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->sortShapeList()V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v6, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "empty shape repo documentId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", pageId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "revisionId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v1, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load page:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shape count: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shapeRepoCount: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modelCount: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->setLoaded(Z)V

    return-void
.end method
