.class public final Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "eraseBean",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "split",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "hitTestPointSet",
        "Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/Set;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setSplitSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public final split(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v4}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->setTargetShapeMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2, v5, v6}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v4, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v4}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v5, v6

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v1, v4

    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setShapeErased(Z)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    return-object v0

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/note/common/utils/PenShapeSplitter;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/Set;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v2

    invoke-virtual {v1, p0, p1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapes(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isCutShape()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result p0

    invoke-virtual {v1, v3, p1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapes(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setRemoveShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    :cond_5
    return-object v0
.end method
