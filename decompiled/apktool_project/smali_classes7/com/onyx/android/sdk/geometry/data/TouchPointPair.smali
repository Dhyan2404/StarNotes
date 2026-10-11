.class public Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchPointPair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPair\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n1855#2,2:268\n1855#2,2:270\n*S KotlinDebug\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPair\n*L\n101#1:268,2\n117#1:270,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0011\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0000J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\u000e\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J\u0014\u0010\u0019\u001a\u00020\u00032\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001bJ\u0014\u0010\u001c\u001a\u00020\u00002\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001bJ\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0000J\u0016\u0010 \u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0003J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00142\u0008\u0008\u0002\u0010#\u001a\u00020\u0003J\u0006\u0010$\u001a\u00020\u0000J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0003J\u000e\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u0003J\u0016\u0010(\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010)\u001a\u00020\u0014J\u0006\u0010*\u001a\u00020\u0014J\u0016\u0010+\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010,\u001a\u00020-J\u000e\u0010.\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\u0008\u0010/\u001a\u000200H\u0016J\u000e\u00101\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "",
        "p1",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "p2",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "getP1",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setP1",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "getP2",
        "setP2",
        "center",
        "componentAlongLineDirection",
        "line",
        "componentAlongPerpendicularDirection",
        "containsEndPoint",
        "",
        "p",
        "direction",
        "",
        "directionTo",
        "distance",
        "dx",
        "dy",
        "farthestPoint",
        "points",
        "",
        "farthestPoints",
        "findCrossPoint",
        "outPoint",
        "other",
        "findPointByDistance",
        "crossPoint",
        "findPointOnVector",
        "start",
        "getCentralVerticalLine",
        "getVerticalLine",
        "isCrossPointOnVector",
        "point",
        "isSameSide",
        "length",
        "reversedDirection",
        "rotate",
        "rad",
        "",
        "signedDistance",
        "toString",
        "",
        "translate",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTouchPointPair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPair\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,267:1\n1855#2,2:268\n1855#2,2:270\n*S KotlinDebug\n*F\n+ 1 TouchPointPair.kt\ncom/onyx/android/sdk/geometry/data/TouchPointPair\n*L\n101#1:268,2\n117#1:270,2\n*E\n"
    }
.end annotation


# instance fields
.field private p1:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p2:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static synthetic findPointOnVector$default(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;FLcom/onyx/android/sdk/base/data/TouchPoint;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: findPointOnVector"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final center()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->center(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final componentAlongLineDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object v0
.end method

.method public final componentAlongPerpendicularDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object v0
.end method

.method public final containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_4

    move p0, v1

    goto :goto_3

    :cond_4
    move p0, v2

    :goto_3
    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    return v1
.end method

.method public final direction()F
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x40490fdb    # (float)Math.PI

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->slope(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    cmpg-float v3, v0, v2

    if-gez v3, :cond_3

    add-float/2addr v0, v1

    :cond_3
    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    cmpg-float p0, v3, p0

    if-gez p0, :cond_4

    cmpl-float p0, v0, v2

    if-lez p0, :cond_4

    sub-float/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final directionTo(Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    return p0
.end method

.method public final distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->signedDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public final dx()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final dy()F
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final farthestPoint(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final farthestPoints(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->signedDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v6

    cmpg-float v7, v6, v2

    if-gez v7, :cond_1

    cmpg-float v7, v6, v3

    if-gez v7, :cond_1

    move-object v0, v5

    move v3, v6

    :cond_1
    cmpl-float v7, v6, v2

    if-lez v7, :cond_0

    cmpl-float v7, v6, v4

    if-lez v7, :cond_0

    move-object v1, v5

    move v4, v6

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p0
.end method

.method public final findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "outPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v1

    sub-float/2addr p1, v1

    .line 6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    float-to-double v2, p1

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr v0, p1

    .line 8
    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr p1, v3

    .line 9
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    .line 10
    new-instance v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v11, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    .line 12
    invoke-virtual {v11, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object v11
.end method

.method public final findCrossPoint(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result v7

    .line 14
    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v1, p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result v0

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 15
    sget-object p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v7, :cond_4

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 16
    :cond_1
    iget-object v0, p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 17
    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 18
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 19
    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    mul-float/2addr p0, v1

    sub-float/2addr v2, p0

    .line 20
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    sub-float/2addr p0, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    div-float/2addr p0, p1

    .line 21
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    mul-float/2addr v0, p0

    sub-float/2addr p1, v0

    cmpg-float v0, v1, p0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 22
    sget-object p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0

    :cond_3
    sub-float/2addr p1, v2

    sub-float p0, v1, p0

    div-float/2addr p1, p0

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    .line 23
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    .line 25
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object p0

    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    move-object v0, p0

    goto :goto_2

    :cond_5
    move-object v0, p1

    :goto_2
    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, p1

    .line 26
    :goto_3
    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    .line 27
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    .line 28
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    sub-float/2addr p0, p1

    .line 29
    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v0, v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p1
.end method

.method public final findPointByDistance(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 12
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "crossPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    new-instance v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p0, v3

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    invoke-virtual {v11, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p2, v0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    invoke-virtual {v11, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object v11
.end method

.method public final findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr p1, v0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p0
.end method

.method public final getCentralVerticalLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getVerticalLine(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    return-object p0
.end method

.method public final getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getVerticalLine(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "crossPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3fc90fdb

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->rotate(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    return-object p0
.end method

.method public final isCrossPointOnVector(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    sget-object v9, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v0, v9

    invoke-static/range {v0 .. v8}, Lcom/onyx/android/sdk/base/utils/MathUtils;->inRange$default(Lcom/onyx/android/sdk/base/utils/MathUtils;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZZZILjava/lang/Object;)Z

    move-result v10

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static/range {v0 .. v8}, Lcom/onyx/android/sdk/base/utils/MathUtils;->inRange$default(Lcom/onyx/android/sdk/base/utils/MathUtils;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZZZILjava/lang/Object;)Z

    move-result p0

    if-eqz v10, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSameSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->signedDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->signedDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    mul-float/2addr p1, p0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final length()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final reversedDirection()F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    if-lez v0, :cond_0

    sub-float/2addr p0, v1

    return p0

    :cond_0
    add-float/2addr p0, v1

    return p0
.end method

.method public final rotate(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "center"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rad"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p1, v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p1
.end method

.method public final setP1(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setP2(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final signedDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    sub-float/2addr p1, p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")->("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final translate(F)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p1:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointByDistance(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->p2:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointByDistance(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p1
.end method
