.class final Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$splitResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShape(Lcom/onyx/android/sdk/genericshape/Oval;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
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
        "segmentList",
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
.field final synthetic $splitSegmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$splitResult$1;->$splitSegmentList:Ljava/util/List;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;
    .locals 1
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

    const-string p1, "segmentList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$splitResult$1;->$splitSegmentList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt$splitShape$splitResult$1;->invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method
