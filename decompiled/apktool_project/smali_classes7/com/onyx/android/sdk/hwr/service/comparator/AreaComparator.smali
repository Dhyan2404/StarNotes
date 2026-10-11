.class public final Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000cH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;",
        "Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;",
        "()V",
        "compare",
        "",
        "firstShape",
        "",
        "nextShape",
        "firstShapeArgs",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "nextShapeArgs",
        "originPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getSupportedShapes",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;Ljava/util/List;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)I"
        }
    .end annotation

    const-string p0, "firstShape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nextShape"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "firstShapeArgs"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nextShapeArgs"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "originPoints"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x2

    invoke-static {p5, p0, v0, p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createPathFrom$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->area(Landroid/graphics/Path;)I

    move-result p0

    sget-object p5, Lcom/onyx/android/sdk/geometry/utils/ShapeAreaUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/ShapeAreaUtils;

    invoke-virtual {p5, p1, p3}, Lcom/onyx/android/sdk/geometry/utils/ShapeAreaUtils;->getShapeArea(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p5, p2, p4}, Lcom/onyx/android/sdk/geometry/utils/ShapeAreaUtils;->getShapeArea(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getSupportedShapes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Pentagon"

    const-string v0, "Pentagram"

    const-string v1, "Ellipse"

    const-string v2, "Triangle"

    const-string v3, "Rectangle"

    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
