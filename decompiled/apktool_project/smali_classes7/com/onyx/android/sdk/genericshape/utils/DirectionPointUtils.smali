.class public final Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ(\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;",
        "",
        "()V",
        "arrowLinePoint",
        "",
        "downPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "upPoint",
        "strokeWidth",
        "",
        "rotateVector",
        "px",
        "py",
        "angle",
        "",
        "arrowLen",
        "sdk-genericshape_overseasRelease"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;->INSTANCE:Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic arrowLinePoint$default(Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;FILjava/lang/Object;)[F
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;->arrowLinePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)[F

    move-result-object p0

    return-object p0
.end method

.method private final rotateVector(FFDD)[F
    .locals 6

    float-to-double p0, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    float-to-double v2, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr p0, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr v2, p2

    add-double/2addr p0, v2

    mul-double p2, v0, v0

    mul-double v2, p0, p0

    add-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    div-double/2addr v0, p2

    mul-double/2addr v0, p5

    div-double/2addr p0, p2

    mul-double/2addr p0, p5

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p3, 0x0

    double-to-float p4, v0

    aput p4, p2, p3

    const/4 p3, 0x1

    double-to-float p0, p0

    aput p0, p2, p3

    return-object p2
.end method


# virtual methods
.method public final arrowLinePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)[F
    .locals 19
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v0, p3

    const-string v1, "downPoint"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "upPoint"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    if-lez v5, :cond_0

    sget-object v5, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    float-to-double v7, v0

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getMinArrowWidthPercent()F

    move-result v0

    float-to-double v9, v0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x3ff6db6db6db6db7L    # 1.4285714285714286

    mul-double/2addr v8, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    :goto_0
    div-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-float v0, v4, v1

    sub-float v1, v3, v2

    move-object/from16 v12, p0

    move v13, v0

    move v14, v1

    move-wide v15, v10

    move-wide/from16 v17, v5

    invoke-direct/range {v12 .. v18}, Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;->rotateVector(FFDD)[F

    move-result-object v2

    neg-double v7, v10

    move-wide v15, v7

    invoke-direct/range {v12 .. v18}, Lcom/onyx/android/sdk/genericshape/utils/DirectionPointUtils;->rotateVector(FFDD)[F

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v5, 0x0

    aget v6, v2, v5

    sub-float v6, v4, v6

    aput v6, v1, v5

    const/4 v6, 0x1

    aget v2, v2, v6

    sub-float v2, v3, v2

    aput v2, v1, v6

    aget v2, v0, v5

    sub-float/2addr v4, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    aget v0, v0, v6

    sub-float/2addr v3, v0

    const/4 v0, 0x3

    aput v3, v1, v0

    return-object v1
.end method
