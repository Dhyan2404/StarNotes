.class final Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShape(Lcom/onyx/android/sdk/genericshape/BidirectionalLine;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/onyx/android/sdk/genericshape/IGeometry;",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        ">;",
        "Ljava/lang/Integer;",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "<anonymous parameter 0>",
        "Lcom/onyx/android/sdk/genericshape/IGeometry;",
        "splitSegmentList",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "index",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $srcFirst:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field final synthetic $srcLast:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field final synthetic $this_splitShape:Lcom/onyx/android/sdk/genericshape/BidirectionalLine;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/genericshape/BidirectionalLine;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;->$srcFirst:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p2, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;->$srcLast:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p3, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;->$this_splitShape:Lcom/onyx/android/sdk/genericshape/BidirectionalLine;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
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
            "Lcom/onyx/android/sdk/genericshape/IGeometry;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;I)",
            "Lcom/onyx/android/sdk/genericshape/Geometry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "splitSegmentList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;->$srcFirst:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;->$srcLast:Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    .line 5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p3

    if-nez p3, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->last()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    const/4 v3, 0x2

    .line 7
    invoke-static {p3, p1, v0, v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXYApproximately$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result p1

    .line 8
    invoke-static {v2, v1, v0, v3, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->equalXYApproximately$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v0

    new-array v1, v3, [[F

    new-array v4, v3, [F

    .line 9
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p3

    const/4 v5, 0x1

    aput p3, v4, v5

    aput-object v4, v1, v6

    new-array p3, v3, [F

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    aput v3, p3, v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    aput v2, p3, v5

    aput-object p3, v1, v5

    .line 10
    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;->$this_splitShape:Lcom/onyx/android/sdk/genericshape/BidirectionalLine;

    invoke-static {p0, p2, v1, p1, v0}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->access$createSplitArrowSegment(Lcom/onyx/android/sdk/genericshape/Geometry;Lcom/onyx/android/sdk/base/data/TouchPointList;[[FZZ)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/genericshape/IGeometry;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$2;->invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method
