.class public final Lcom/onyx/android/sdk/base/utils/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathUtils.kt\ncom/onyx/android/sdk/base/utils/MathUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,353:1\n1#2:354\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u001d\n\u0002\u0010\u000f\n\u0002\u0008\u0014\n\u0002\u0010\u0015\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004J%\u0010\u001d\u001a\u0002H\u001e\"\u0008\u0008\u0000\u0010\u001e*\u00020\u001f2\u0006\u0010 \u001a\u0002H\u001e2\u0006\u0010!\u001a\u0002H\u001e\u00a2\u0006\u0002\u0010\"J\u001e\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020%J&\u0010#\u001a\u00020\u00042\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020)J&\u0010-\u001a\u00020%2\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020)J\u0016\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u001fJ\u0016\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0004J\u0016\u00108\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0004J&\u00109\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004J&\u0010:\u001a\u00020)2\u0006\u0010;\u001a\u00020)2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020)2\u0006\u0010>\u001a\u00020)J\u0016\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\u0007J\u001e\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020%J5\u0010F\u001a\u0002H\u001e\"\u0010\u0008\u0000\u0010\u001e*\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010G2\u0006\u0010H\u001a\u0002H\u001e2\u0006\u0010I\u001a\u0002H\u001e2\u0006\u0010J\u001a\u0002H\u001e\u00a2\u0006\u0002\u0010KJ\u001e\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010J\u001a\u00020\u0004J\u000e\u0010N\u001a\u00020\u00072\u0006\u0010O\u001a\u00020\u0007J\u0016\u0010P\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J\u0016\u0010R\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001fJ&\u0010S\u001a\u00020)2\u0006\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u0004J\u0016\u0010T\u001a\u00020\u00192\u0006\u0010U\u001a\u00020\u00042\u0006\u0010V\u001a\u00020\u0004J\u0016\u0010W\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u001fJ\u001e\u0010X\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u0007J\u0012\u0010J\u001a\u00020\u00072\n\u0010[\u001a\u00020\\\"\u00020\u0007J\u0012\u0010J\u001a\u00020]2\n\u0010[\u001a\u00020^\"\u00020]J\u000e\u0010_\u001a\u00020\u00042\u0006\u0010`\u001a\u00020aJ\u000e\u0010b\u001a\u00020\u00072\u0006\u0010`\u001a\u00020aJ\u000e\u0010c\u001a\u00020]2\u0006\u0010`\u001a\u00020aJ\u000e\u0010d\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u0004J\u0016\u0010e\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J\u0016\u0010f\u001a\u00020\u00072\u0006\u0010H\u001a\u00020a2\u0006\u0010g\u001a\u00020\u0007J\u001e\u0010h\u001a\u00020\u00192\u0006\u0010i\u001a\u00020\u00072\u0006\u0010j\u001a\u00020\u00072\u0006\u0010k\u001a\u00020\u0007J\u001e\u0010l\u001a\u00020\u00192\u0006\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0007J\n\u0010m\u001a\u00020)*\u00020\u001fJ\'\u0010n\u001a\u0002H\u001e\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0G*\u0002H\u001e2\u0006\u0010I\u001a\u0002H\u001e\u00a2\u0006\u0002\u0010oJ\'\u0010p\u001a\u0002H\u001e\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0G*\u0002H\u001e2\u0006\u0010J\u001a\u0002H\u001e\u00a2\u0006\u0002\u0010oJ\u0012\u0010q\u001a\u00020\u0007*\u00020\u00072\u0006\u0010r\u001a\u00020\u0007J3\u0010F\u001a\u0002H\u001e\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0G*\u0002H\u001e2\u0006\u0010I\u001a\u0002H\u001e2\u0006\u0010J\u001a\u0002H\u001eH\u0007\u00a2\u0006\u0004\u0008s\u0010KJ\u0012\u0010t\u001a\u00020\u0004*\u00020\u001f2\u0006\u0010u\u001a\u00020\u001fJ8\u0010v\u001a\u00020\u0019*\u00020\u001f2\u0006\u0010j\u001a\u00020\u001f2\u0006\u0010k\u001a\u00020\u001f2\u0008\u0008\u0002\u0010w\u001a\u00020\u00192\u0008\u0008\u0002\u0010x\u001a\u00020\u00192\u0008\u0008\u0002\u0010y\u001a\u00020\u0019J\u0012\u0010z\u001a\u00020\u0004*\u00020\u001f2\u0006\u0010{\u001a\u00020\u001fJ\u0012\u0010|\u001a\u00020\u0019*\u00020\u001f2\u0006\u0010u\u001a\u00020\u001fJ\n\u0010}\u001a\u00020\u0007*\u00020\u001fJ\n\u0010~\u001a\u00020\u0007*\u00020\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/MathUtils;",
        "",
        "()V",
        "ANGLE_180",
        "",
        "ARE_APPROXIMATELY_EQUAL_EPSILON",
        "DEGREE_0",
        "",
        "DEGREE_180",
        "DEGREE_30",
        "DEGREE_360",
        "DEGREE_45",
        "DEGREE_60",
        "DEGREE_90",
        "ONE_HALF",
        "PI_FLOAT",
        "PI_HALF_FLOAT",
        "PI_TWICE_FLOAT",
        "RAD_15_DEG",
        "RAD_1_DEG",
        "RAD_30_DEG",
        "RAD_60_DEG",
        "angleToRadian",
        "angle",
        "areApproximatelyEqual",
        "",
        "num1",
        "num2",
        "epsilon",
        "average",
        "T",
        "",
        "a",
        "b",
        "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;",
        "calculateAngle",
        "center",
        "Landroid/graphics/PointF;",
        "current",
        "previous",
        "startX",
        "",
        "startY",
        "endX",
        "endY",
        "calculateMiddlePointFromTwoPoint",
        "p1X",
        "p1Y",
        "p2X",
        "p2Y",
        "calculatePercent",
        "used",
        "total",
        "calculatePerpendicularX",
        "radian",
        "hypotenuseLength",
        "calculatePerpendicularY",
        "calculateRadian",
        "calculateRotationAngle",
        "x1",
        "y1",
        "x2",
        "y2",
        "calculateRow",
        "size",
        "col",
        "calculateTriangleCentroidPoint",
        "p1",
        "p2",
        "p3",
        "clamp",
        "",
        "value",
        "min",
        "max",
        "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;",
        "clampFloat",
        "target",
        "closestPowerOfTwo",
        "n",
        "cos",
        "radius",
        "differRateToShorter",
        "distance",
        "floatCompare",
        "f1",
        "f2",
        "getIntPercent",
        "getLimitedValue",
        "increaseDiff",
        "maxLimit",
        "numbers",
        "",
        "",
        "",
        "parseFloat",
        "str",
        "",
        "parseInt",
        "parseLong",
        "radianToAngle",
        "sin",
        "tryParseInt",
        "defValue",
        "withinRange",
        "number",
        "start",
        "end",
        "withinRangeIncluded",
        "absolute",
        "atLeast",
        "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;",
        "atMost",
        "ceilToInt",
        "divisor",
        "limit",
        "differRateTo",
        "another",
        "inRange",
        "includeStart",
        "includeEnd",
        "autoSwap",
        "roundByStep",
        "step",
        "sameSignWith",
        "signFactor",
        "signOneFactor",
        "sdk-base_release"
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
        "SMAP\nMathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathUtils.kt\ncom/onyx/android/sdk/base/utils/MathUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,353:1\n1#2:354\n*E\n"
    }
.end annotation


# static fields
.field public static final ANGLE_180:F = 180.0f

.field public static final ARE_APPROXIMATELY_EQUAL_EPSILON:F = 0.001f

.field public static final DEGREE_0:I = 0x0

.field public static final DEGREE_180:I = 0xb4

.field public static final DEGREE_30:I = 0x1e

.field public static final DEGREE_360:I = 0x168

.field public static final DEGREE_45:I = 0x2d

.field public static final DEGREE_60:I = 0x3c

.field public static final DEGREE_90:I = 0x5a

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ONE_HALF:F = 0.5f

.field public static final PI_FLOAT:F = 3.1415927f

.field public static final PI_HALF_FLOAT:F = 1.5707964f

.field public static final PI_TWICE_FLOAT:F = 6.2831855f

.field public static final RAD_15_DEG:F = 0.2617994f

.field public static final RAD_1_DEG:F = 0.017453292f

.field public static final RAD_30_DEG:F = 0.5235988f

.field public static final RAD_60_DEG:F = 1.0471976f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x3a83126f    # 0.001f

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual(FFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic inRange$default(Lcom/onyx/android/sdk/base/utils/MathUtils;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZZZILjava/lang/Object;)Z
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/onyx/android/sdk/base/utils/MathUtils;->inRange(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZZZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final absolute(Ljava/lang/Number;)D
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final angleToRadian(F)F
    .locals 0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final areApproximatelyEqual(FFF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "min"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "max"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final average(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "a"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    add-double/2addr p0, v0

    const/4 p2, 0x2

    int-to-double v0, p2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type T of com.onyx.android.sdk.base.utils.MathUtils.average"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final calculateAngle(DDDD)F
    .locals 4

    sub-double v0, p7, p3

    sub-double v2, p5, p1

    div-double/2addr v0, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    .line 10
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->radianToAngle(F)F

    move-result p0

    cmpl-double v0, p5, p1

    if-ltz v0, :cond_1

    cmpl-double v1, p7, p3

    if-ltz v1, :cond_1

    neg-float p0, p0

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    cmpg-double v0, p7, p3

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    cmpg-double p1, p5, p1

    const/high16 p2, 0x43340000    # 180.0f

    if-gtz p1, :cond_3

    cmpl-double p1, p7, p3

    if-ltz p1, :cond_3

    sub-float/2addr p0, p2

    goto :goto_0

    :cond_3
    sub-float p0, p2, p0

    :goto_0
    return p0
.end method

.method public final calculateAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 5
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "center"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "current"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "previous"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    .line 2
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    mul-float v0, p0, p0

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr p0, v0

    div-float/2addr p2, v0

    .line 4
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 5
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    mul-float p1, v0, v0

    mul-float v1, p3, p3

    add-float/2addr p1, v1

    float-to-double v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    div-float/2addr v0, p1

    div-float/2addr p3, p1

    float-to-double v1, p3

    float-to-double v3, v0

    .line 7
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    float-to-double p1, p2

    float-to-double v2, p0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sub-double/2addr v0, p0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43b40000    # 360.0f

    add-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public final calculateMiddlePointFromTwoPoint(DDDD)Landroid/graphics/PointF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Landroid/graphics/PointF;

    add-double/2addr p1, p5

    const/4 p5, 0x2

    int-to-double v0, p5

    div-double/2addr p1, v0

    double-to-float p1, p1

    add-double/2addr p3, p7

    double-to-float p2, p3

    int-to-float p3, p5

    div-float/2addr p2, p3

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final calculatePercent(Ljava/lang/Number;Ljava/lang/Number;)F
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "used"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "total"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float v0, p0, p1

    :goto_0
    return v0
.end method

.method public final calculatePerpendicularX(FF)F
    .locals 0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    neg-float p0, p0

    mul-float/2addr p0, p2

    return p0
.end method

.method public final calculatePerpendicularY(FF)F
    .locals 0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr p0, p2

    return p0
.end method

.method public final calculateRadian(FFFF)F
    .locals 2

    sub-float/2addr p4, p2

    float-to-double v0, p4

    sub-float/2addr p3, p1

    float-to-double p0, p3

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final calculateRotationAngle(DDDD)D
    .locals 0

    sub-double/2addr p7, p3

    sub-double/2addr p5, p1

    invoke-static {p7, p8, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, p2

    const-wide/16 p2, 0x0

    cmpg-double p2, p0, p2

    if-gez p2, :cond_0

    const/16 p2, 0x168

    int-to-double p2, p2

    add-double/2addr p0, p2

    :cond_0
    return-wide p0
.end method

.method public final calculateRow(II)I
    .locals 0

    if-gtz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    div-int p0, p1, p2

    rem-int/2addr p1, p2

    if-eqz p1, :cond_1

    add-int/lit8 p0, p0, 0x1

    :cond_1
    return p0
.end method

.method public final calculateTriangleCentroidPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p3"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    const/4 v1, 0x3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    iget p2, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    div-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final ceilToInt(II)I
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p2

    return p1
.end method

.method public final clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    return-object p2
.end method

.method public final clampFloat(FFF)F
    .locals 0

    invoke-static {p3, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    invoke-static {p2, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public final closestPowerOfTwo(I)I
    .locals 0

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int/2addr p0, p1

    return p0
.end method

.method public final cos(FF)F
    .locals 2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->angleToRadian(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    float-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public final differRateTo(Ljava/lang/Number;Ljava/lang/Number;)F
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "another"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p0

    return p0
.end method

.method public final differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F
    .locals 4
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "num1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "num2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double v2, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    double-to-float p0, v2

    :catchall_0
    :cond_1
    :goto_0
    return p0
.end method

.method public final distance(FFFF)D
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public final floatCompare(FF)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getIntPercent(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "current"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "total"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    const/16 p2, 0x64

    int-to-float p2, p2

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p1, p0, p2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final getLimitedValue(III)I
    .locals 0

    add-int/2addr p1, p2

    if-lt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    return p3
.end method

.method public final inRange(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZZZ)Z
    .locals 6
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "start"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "end"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    if-eqz p6, :cond_0

    cmpg-double p0, p2, v0

    if-gez p0, :cond_0

    move-wide v4, p2

    move-wide p2, v0

    move-wide v0, v4

    :cond_0
    const/4 p0, 0x1

    const/4 p6, 0x0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    if-eqz p4, :cond_1

    cmpl-double p4, v2, v0

    if-ltz p4, :cond_2

    goto :goto_0

    :cond_1
    cmpl-double p4, v2, v0

    if-lez p4, :cond_2

    :goto_0
    move p4, p0

    goto :goto_1

    :cond_2
    move p4, p6

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpg-double p1, v0, p2

    if-eqz p5, :cond_3

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_3
    if-gez p1, :cond_4

    :goto_2
    move p1, p0

    goto :goto_3

    :cond_4
    move p1, p6

    :goto_3
    if-eqz p4, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move p0, p6

    :goto_4
    return p0
.end method

.method public final limit(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "limit"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "min"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "max"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->clamp(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final varargs max([I)I
    .locals 3
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "numbers"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1
    aget v0, p1, p0

    .line 2
    array-length v1, p1

    :goto_0
    if-ge p0, v1, :cond_0

    aget v2, p1, p0

    .line 3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final varargs max([J)J
    .locals 5
    .param p1    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "numbers"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4
    aget-wide v0, p1, p0

    .line 5
    array-length v2, p1

    :goto_0
    if-ge p0, v2, :cond_0

    aget-wide v3, p1, p0

    .line 6
    invoke-static {v0, v1, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final parseFloat(Ljava/lang/String;)F
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public final parseInt(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final parseLong(Ljava/lang/String;)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "str"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final radianToAngle(F)F
    .locals 0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final roundByStep(Ljava/lang/Number;Ljava/lang/Number;)F
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "step"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public final sameSignWith(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "another"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final signFactor(Ljava/lang/Number;)I
    .locals 4
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, p0, v2

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final signOneFactor(Ljava/lang/Number;)I
    .locals 4
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/MathUtils$signOneFactor$2;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils$signOneFactor$2;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final sin(FF)F
    .locals 2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->angleToRadian(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public final tryParseInt(Ljava/lang/String;I)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return p2
.end method

.method public final withinRange(III)Z
    .locals 0

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    const/4 p3, 0x0

    if-gt p0, p1, :cond_0

    if-ge p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method public final withinRangeIncluded(III)Z
    .locals 0

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p0

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    const/4 p3, 0x0

    if-gt p0, p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    return p3
.end method
