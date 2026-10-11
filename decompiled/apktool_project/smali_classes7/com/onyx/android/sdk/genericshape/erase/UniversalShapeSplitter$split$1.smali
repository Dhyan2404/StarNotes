.class final synthetic Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$split$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->split$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Landroid/graphics/Path;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
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
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x3

    const-class v3, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    const-string v4, "parseSegmentGeometry"

    const-string v5, "parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

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

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->parseSegmentGeometry(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/genericshape/IGeometry;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$split$1;->invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;Ljava/util/List;I)Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object p0

    return-object p0
.end method
