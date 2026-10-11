.class public final Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;",
        "",
        "()V",
        "provide",
        "Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;",
        "universalShapeType",
        "",
        "sdk-universal_overseasRelease"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandlerProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provide(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/handler/drag/ShapeDragHandler;
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
    const-string p0, "isosceles_trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTrapezoidDragHandler;-><init>()V

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "rhombus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/RhombusDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/RhombusDragHandler;-><init>()V

    goto/16 :goto_1

    :sswitch_2
    const-string p0, "trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IrregularTrapezoidDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IrregularTrapezoidDragHandler;-><init>()V

    goto/16 :goto_1

    :sswitch_3
    const-string p0, "hexagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "right_trapezoid"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/RightTrapezoidDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/RightTrapezoidDragHandler;-><init>()V

    goto/16 :goto_1

    :sswitch_5
    const-string p0, "parallelogram"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/ParallelogramDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/ParallelogramDragHandler;-><init>()V

    goto/16 :goto_1

    :sswitch_6
    const-string p0, "pentagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :sswitch_7
    const-string p0, "right_triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/RightTriangleDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/RightTriangleDragHandler;-><init>()V

    goto :goto_1

    :sswitch_8
    const-string p0, "bracket"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/CurlyBracketDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/CurlyBracketDragHandler;-><init>()V

    goto :goto_1

    :sswitch_9
    const-string p0, "star"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :sswitch_a
    const-string p0, "oval"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/OvalDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/OvalDragHandler;-><init>()V

    goto :goto_1

    :sswitch_b
    const-string p0, "circle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :sswitch_c
    const-string p0, "octagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :sswitch_d
    const-string p0, "regular_triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/CenterSymmetricalDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/CenterSymmetricalDragHandler;-><init>()V

    goto :goto_1

    :sswitch_e
    const-string p0, "isosceles_triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTriangleDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/IsoscelesTriangleDragHandler;-><init>()V

    goto :goto_1

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/handler/drag/DefaultDragHandler;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/handler/drag/DefaultDragHandler;-><init>()V

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cbfb803 -> :sswitch_e
        -0x666314b5 -> :sswitch_d
        -0x60ac3a5b -> :sswitch_c
        -0x51134330 -> :sswitch_b
        0x343c52 -> :sswitch_a
        0x360652 -> :sswitch_9
        0x830aca8 -> :sswitch_8
        0xdd618cb -> :sswitch_7
        0x139e6580 -> :sswitch_6
        0x1e99399f -> :sswitch_5
        0x1eddb385 -> :sswitch_4
        0x30aa3620 -> :sswitch_3
        0x416be9e8 -> :sswitch_2
        0x464d9f6c -> :sswitch_1
        0x46b96a93 -> :sswitch_0
    .end sparse-switch
.end method
