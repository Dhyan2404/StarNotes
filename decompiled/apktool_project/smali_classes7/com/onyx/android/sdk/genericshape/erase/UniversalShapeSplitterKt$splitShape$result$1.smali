.class final Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShape(Lcom/onyx/android/sdk/genericshape/Arc;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
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
.field final synthetic $this_splitShape:Lcom/onyx/android/sdk/genericshape/Arc;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/Arc;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;->$this_splitShape:Lcom/onyx/android/sdk/genericshape/Arc;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 8
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
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->last()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    .line 7
    sget-object p1, Lcom/onyx/android/sdk/base/data/TouchPointList;->Companion:Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;

    iget-object p2, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;->$this_splitShape:Lcom/onyx/android/sdk/genericshape/Arc;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/Arc;->loadSelectionPoints()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;->getBoundingRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->createArc$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;ZZILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/Arc;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;->$this_splitShape:Lcom/onyx/android/sdk/genericshape/Arc;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/Geometry;->getFromShapeType()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/Feature;->setFromShapeType(I)V

    .line 10
    sget-object p2, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;->$this_splitShape:Lcom/onyx/android/sdk/genericshape/Arc;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    const-class p3, Lcom/onyx/android/sdk/genericshape/Properties;

    invoke-virtual {p2, p0, p3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->clone(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/genericshape/Properties;

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/genericshape/Feature;->setProperties(Lcom/onyx/android/sdk/genericshape/Properties;)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/genericshape/IGeometry;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$result$1;->invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method
