.class public final Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;",
        "universalShapeType",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorFactory;->b(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Ljava/util/List;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "universalShapeType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "wave_line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "bidirectional_line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "isosceles_trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "rhombus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :sswitch_5
    const-string p0, "rectangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "hexagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :sswitch_8
    const-string p0, "direction_line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :sswitch_9
    const-string p0, "polyline"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :sswitch_a
    const-string p0, "right_trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/TrapezoidGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/TrapezoidGuideLineExtractor;-><init>()V

    goto/16 :goto_1

    :sswitch_b
    const-string p0, "parallelogram"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor;-><init>()V

    goto/16 :goto_1

    :sswitch_c
    const-string p0, "pentagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :sswitch_d
    const-string p0, "right_triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :sswitch_e
    const-string p0, "bracket"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/BracketGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/BracketGuideLineExtractor;-><init>()V

    goto/16 :goto_1

    :sswitch_f
    const-string p0, "angle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/PolylineGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/PolylineGuideLineExtractor;-><init>()V

    goto/16 :goto_1

    :sswitch_10
    const-string p0, "star"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/StarGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/StarGuideLineExtractor;-><init>()V

    goto/16 :goto_1

    :sswitch_11
    const-string p0, "oval"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :sswitch_12
    const-string p0, "line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :sswitch_13
    const-string p0, "polygon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :sswitch_14
    const-string p0, "square"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor;-><init>()V

    goto :goto_1

    :sswitch_15
    const-string p0, "dash_line"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/LineGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/LineGuideLineExtractor;-><init>()V

    goto :goto_1

    :sswitch_16
    const-string p0, "circle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/OvalGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/OvalGuideLineExtractor;-><init>()V

    goto :goto_1

    :sswitch_17
    const-string p0, "octagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/PolygonGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/PolygonGuideLineExtractor;-><init>()V

    goto :goto_1

    :sswitch_18
    const-string p0, "regular_triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :sswitch_19
    const-string p0, "isosceles_triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Lcom/onyx/android/sdk/note/common/shape/outline/TriangleGuideLineExtractor;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/outline/TriangleGuideLineExtractor;-><init>()V

    goto :goto_1

    :goto_0
    new-instance p0, Lcom/sunia/HTREnginev2/i6h;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/i6h;-><init>()V

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cbfb803 -> :sswitch_19
        -0x666314b5 -> :sswitch_18
        -0x60ac3a5b -> :sswitch_17
        -0x51134330 -> :sswitch_16
        -0x3ea09b7f -> :sswitch_15
        -0x3553a6e3 -> :sswitch_14
        -0x17b1aac6 -> :sswitch_13
        0x32aff4 -> :sswitch_12
        0x343c52 -> :sswitch_11
        0x360652 -> :sswitch_10
        0x58a78d3 -> :sswitch_f
        0x830aca8 -> :sswitch_e
        0xdd618cb -> :sswitch_d
        0x139e6580 -> :sswitch_c
        0x1e99399f -> :sswitch_b
        0x1eddb385 -> :sswitch_a
        0x217e81c0 -> :sswitch_9
        0x2d7138b4 -> :sswitch_8
        0x30aa3620 -> :sswitch_7
        0x416be9e8 -> :sswitch_6
        0x42d5ad6f -> :sswitch_5
        0x464d9f6c -> :sswitch_4
        0x46b96a93 -> :sswitch_3
        0x54c93970 -> :sswitch_2
        0x59460a08 -> :sswitch_1
        0x5c07c97a -> :sswitch_0
    .end sparse-switch
.end method
