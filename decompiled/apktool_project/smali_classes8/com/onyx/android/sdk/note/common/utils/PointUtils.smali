.class public final Lcom/onyx/android/sdk/note/common/utils/PointUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointUtils.kt\ncom/onyx/android/sdk/note/common/utils/PointUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J)\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\rJ.\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006J\u0018\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0014\u001a\u00020\u0006J \u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/PointUtils;",
        "",
        "()V",
        "createTouchPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "x",
        "",
        "y",
        "isPointInPolygon",
        "",
        "pts",
        "",
        "Landroid/graphics/PointF;",
        "([Landroid/graphics/PointF;FF)Z",
        "isPointInsideCircle",
        "pointX",
        "pointY",
        "centerX",
        "centerY",
        "radius",
        "scale",
        "",
        "point",
        "scaleX",
        "scaleY",
        "toRectTouchPointList",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "srcPointList",
        "sdk-note_overseasRelease"
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
        "SMAP\nPointUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointUtils.kt\ncom/onyx/android/sdk/note/common/utils/PointUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTouchPoint(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v0

    const/16 v1, 0x400

    int-to-float v1, v1

    mul-float v3, v0, v1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFJ)V

    return-object p0
.end method

.method public final isPointInPolygon([Landroid/graphics/PointF;FF)Z
    .locals 8
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pts"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v3, p1, v0

    iget v4, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v4, p3

    if-gtz v5, :cond_0

    aget-object v5, p1, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v5, p3, v5

    if-ltz v5, :cond_1

    :cond_0
    aget-object v5, p1, v2

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v5, p3

    if-gtz v5, :cond_2

    cmpg-float v5, p3, v4

    if-gez v5, :cond_2

    :cond_1
    aget-object v2, p1, v2

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    sub-float v6, p3, v4

    mul-float/2addr v5, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    div-float/2addr v5, v2

    add-float/2addr v5, v3

    cmpg-float v2, p2, v5

    if-gez v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final isPointInsideCircle(FFFFF)Z
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final scale(Landroid/graphics/PointF;F)V
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget p0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->x:F

    .line 2
    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method public final scale(Landroid/graphics/PointF;FF)V
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 3
    iget p0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->x:F

    .line 4
    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p3

    iput p0, p1, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method public final toRectTouchPointList(Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "srcPointList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p0
.end method
