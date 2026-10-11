.class public final Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;",
        "",
        "()V",
        "allVerifications",
        "",
        "Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;",
        "create",
        "shape",
        "",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final allVerifications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 p0, 0x19

    new-array p0, p0, [Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/LineVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/LineVerification;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurveVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurveVerification;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/EllipseVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/EllipseVerification;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CircleVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CircleVerification;-><init>()V

    const/4 v1, 0x3

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RectangleVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RectangleVerification;-><init>()V

    const/4 v1, 0x4

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/SquareVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/SquareVerification;-><init>()V

    const/4 v1, 0x5

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;-><init>()V

    const/4 v1, 0x6

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;-><init>()V

    const/4 v1, 0x7

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTrapezoidVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTrapezoidVerification;-><init>()V

    const/16 v1, 0x8

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RightTrapezoidVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RightTrapezoidVerification;-><init>()V

    const/16 v1, 0x9

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TriangleVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TriangleVerification;-><init>()V

    const/16 v1, 0xa

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagonVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagonVerification;-><init>()V

    const/16 v1, 0xb

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/HexagonVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/HexagonVerification;-><init>()V

    const/16 v1, 0xc

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/OctagonVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/OctagonVerification;-><init>()V

    const/16 v1, 0xd

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/DashLineVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/DashLineVerification;-><init>()V

    const/16 v1, 0xe

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiLineVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiLineVerification;-><init>()V

    const/16 v1, 0xf

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/WaveLineVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/WaveLineVerification;-><init>()V

    const/16 v1, 0x10

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;-><init>()V

    const/16 v1, 0x11

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyArrowVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyArrowVerification;-><init>()V

    const/16 v1, 0x12

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiArrowVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiArrowVerification;-><init>()V

    const/16 v1, 0x13

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiCurvyArrowVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiCurvyArrowVerification;-><init>()V

    const/16 v1, 0x14

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;-><init>()V

    const/16 v1, 0x15

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AsteriskVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AsteriskVerification;-><init>()V

    const/16 v1, 0x16

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagramVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagramVerification;-><init>()V

    const/16 v1, 0x17

    aput-object v0, p0, v1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyBracketVerification;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyBracketVerification;-><init>()V

    const/16 v1, 0x18

    aput-object v0, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "Circle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CircleVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CircleVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "Regular-Triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RegularTriangleVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RegularTriangleVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "Triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TriangleVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TriangleVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "Bi-Line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiLineVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiLineVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "Isosceles-Trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTrapezoidVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTrapezoidVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "Parallelogram"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "Parabola"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParabolaVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParabolaVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "Bi-Curvy-Arrow"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiCurvyArrowVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiCurvyArrowVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_8
    const-string p0, "Dash-Line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/DashLineVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/DashLineVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_9
    const-string p0, "Pentagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagonVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagonVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_a
    const-string p0, "Curly-Bracket"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyBracketVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyBracketVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_b
    const-string p0, "Isosceles-Triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTriangleVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/IsoscelesTriangleVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_c
    const-string p0, "Curve"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurveVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurveVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_d
    const-string p0, "Arrow"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_e
    const-string p0, "Angle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_f
    const-string p0, "Octagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/OctagonVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/OctagonVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_10
    const-string p0, "Ellipse"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/EllipseVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/EllipseVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_11
    const-string p0, "Line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/LineVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/LineVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_12
    const-string p0, "Arc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArcVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArcVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_13
    const-string p0, "Asterisk"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AsteriskVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AsteriskVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_14
    const-string p0, "Right-Triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RightTriangleVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RightTriangleVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_15
    const-string p0, "Pentagram"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagramVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/PentagramVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_16
    const-string p0, "Curvy-Arrow"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyArrowVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurvyArrowVerification;-><init>()V

    goto/16 :goto_0

    :sswitch_17
    const-string p0, "Wave-Line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/WaveLineVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/WaveLineVerification;-><init>()V

    goto :goto_0

    :sswitch_18
    const-string p0, "Bi-Arrow"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiArrowVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/BiArrowVerification;-><init>()V

    goto :goto_0

    :sswitch_19
    const-string p0, "Rectangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RectangleVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RectangleVerification;-><init>()V

    goto :goto_0

    :sswitch_1a
    const-string p0, "Trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;-><init>()V

    goto :goto_0

    :sswitch_1b
    const-string p0, "Rhombus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RhombusVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RhombusVerification;-><init>()V

    goto :goto_0

    :sswitch_1c
    const-string p0, "Right-Trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RightTrapezoidVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/RightTrapezoidVerification;-><init>()V

    goto :goto_0

    :sswitch_1d
    const-string p0, "Square"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/SquareVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/SquareVerification;-><init>()V

    goto :goto_0

    :sswitch_1e
    const-string p0, "Hexagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/HexagonVerification;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/HexagonVerification;-><init>()V

    :goto_0
    return-object p0

    :cond_0
    :goto_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Unknown Shape Type"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x6c1d3200 -> :sswitch_1e
        -0x6beebac3 -> :sswitch_1d
        -0x5b758cc9 -> :sswitch_1c
        -0x5679c8b4 -> :sswitch_1b
        -0x4721f638 -> :sswitch_1a
        -0x45b832b1 -> :sswitch_19
        -0x34f088fd -> :sswitch_18
        -0x2f5539b8 -> :sswitch_17
        -0x28eacd81 -> :sswitch_16
        -0x285f8b83 -> :sswitch_15
        -0x1f666527 -> :sswitch_14
        -0x10b0246e -> :sswitch_13
        0x10232 -> :sswitch_12
        0x242414 -> :sswitch_11
        0x7cb3be -> :sswitch_10
        0x28c5d85 -> :sswitch_f
        0x3c788b3 -> :sswitch_e
        0x3c983e9 -> :sswitch_d
        0x3e710cf -> :sswitch_c
        0xf80ba0b -> :sswitch_b
        0xfa53a68 -> :sswitch_a
        0x1778c9a0 -> :sswitch_9
        0x3602614f -> :sswitch_8
        0x403aea19 -> :sswitch_7
        0x49a81282 -> :sswitch_6
        0x4e38697f -> :sswitch_5
        0x52873a45 -> :sswitch_4
        0x592665ba -> :sswitch_3
        0x5d206e28 -> :sswitch_2
        0x75dde559 -> :sswitch_1
        0x7851a8f0 -> :sswitch_0
    .end sparse-switch
.end method
