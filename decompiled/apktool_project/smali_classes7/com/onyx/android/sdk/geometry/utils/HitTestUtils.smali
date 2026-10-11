.class public final Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J>\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004JF\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J.\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;",
        "",
        "()V",
        "distance",
        "",
        "x1",
        "y1",
        "x2",
        "y2",
        "x",
        "y",
        "hitTest",
        "",
        "limit",
        "hitTestLine",
        "x3",
        "y3",
        "x4",
        "y4",
        "isPointInsideCircle",
        "pointX",
        "pointY",
        "centerX",
        "centerY",
        "radius",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final distance(FFFFFF)F
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    sget-object v6, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpg-double v11, v7, v9

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_1

    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    return v0

    :cond_1
    sub-float v11, v2, v0

    sub-float v12, v4, v0

    mul-float/2addr v12, v11

    sub-float v13, v3, v1

    sub-float v14, v5, v1

    mul-float/2addr v14, v13

    add-float/2addr v12, v14

    float-to-double v14, v12

    mul-double v16, v7, v7

    div-double v14, v14, v16

    mul-double/2addr v14, v7

    cmpg-double v9, v14, v9

    if-gez v9, :cond_2

    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v0

    goto :goto_1

    :cond_2
    cmpl-double v9, v14, v7

    if-lez v9, :cond_3

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v0

    goto :goto_1

    :cond_3
    float-to-double v2, v0

    float-to-double v9, v11

    mul-double/2addr v9, v14

    div-double/2addr v9, v7

    add-double/2addr v2, v9

    float-to-double v0, v1

    float-to-double v9, v13

    mul-double/2addr v14, v9

    div-double/2addr v14, v7

    add-double/2addr v0, v14

    double-to-float v2, v2

    double-to-float v0, v0

    invoke-virtual {v6, v2, v0, v4, v5}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v0

    goto :goto_1
.end method

.method public final hitTest(FFFFFFF)Z
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/onyx/android/sdk/geometry/utils/HitTestUtils;->distance(FFFFFF)F

    move-result p0

    cmpg-float p0, p0, p7

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hitTestLine(FFFFFFFF)Z
    .locals 7

    sub-float p0, p4, p2

    sub-float v0, p1, p3

    mul-float v1, p3, p2

    mul-float v2, p1, p4

    sub-float/2addr v1, v2

    mul-float v2, p0, p5

    mul-float v3, v0, p6

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    mul-float v3, p0, p7

    mul-float v4, v0, p8

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    const/4 v1, 0x0

    cmpg-float v4, v2, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-nez v4, :cond_3

    cmpg-float v4, v3, v1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-nez v4, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v6

    :goto_2
    if-eqz v2, :cond_3

    return v6

    :cond_3
    sub-float v2, p8, p6

    sub-float v3, p5, p7

    mul-float/2addr p7, p6

    mul-float/2addr p5, p8

    sub-float/2addr p7, p5

    mul-float/2addr p1, v2

    mul-float/2addr p2, v3

    add-float/2addr p1, p2

    add-float/2addr p1, p7

    mul-float/2addr p3, v2

    mul-float/2addr p4, v3

    add-float/2addr p3, p4

    add-float/2addr p3, p7

    cmpg-float p2, p1, v1

    if-nez p2, :cond_4

    move p2, v5

    goto :goto_3

    :cond_4
    move p2, v6

    :goto_3
    if-nez p2, :cond_7

    cmpg-float p2, p3, v1

    if-nez p2, :cond_5

    move p2, v5

    goto :goto_4

    :cond_5
    move p2, v6

    :goto_4
    if-nez p2, :cond_7

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-nez p1, :cond_6

    move p1, v5

    goto :goto_5

    :cond_6
    move p1, v6

    :goto_5
    if-eqz p1, :cond_7

    return v6

    :cond_7
    mul-float/2addr p0, v3

    mul-float/2addr v2, v0

    sub-float/2addr p0, v2

    cmpg-float p0, p0, v1

    if-nez p0, :cond_8

    move v6, v5

    :cond_8
    xor-int/lit8 p0, v6, 0x1

    return p0
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
