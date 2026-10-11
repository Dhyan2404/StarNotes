.class public final Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;",
        "",
        "()V",
        "getShapeAspectRatio",
        "",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/shape/ShapeRatioCalculator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShapeAspectRatio(Ljava/lang/String;)F
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0x3f20d97c

    const v1, 0x3f060a92

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p0, "hexagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    int-to-float p0, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p1, v4

    mul-float/2addr p1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr p0, v0

    int-to-float v0, v3

    add-float/2addr p0, v0

    goto :goto_1

    :sswitch_1
    const-string p0, "pentagon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    int-to-float p0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr p0, p1

    const p1, 0x3ea0d97c

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :sswitch_2
    const-string p0, "star"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    int-to-float p0, v2

    const p1, 0x3fa0d97c

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr p0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    int-to-float v0, v3

    :goto_0
    add-float/2addr p1, v0

    div-float p1, p0, p1

    goto :goto_3

    :sswitch_3
    const-string p0, "regular_triangle"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    float-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    int-to-float p1, v3

    :goto_1
    div-float/2addr p1, p0

    goto :goto_3

    :cond_4
    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x666314b5 -> :sswitch_3
        0x360652 -> :sswitch_2
        0x139e6580 -> :sswitch_1
        0x30aa3620 -> :sswitch_0
    .end sparse-switch
.end method
