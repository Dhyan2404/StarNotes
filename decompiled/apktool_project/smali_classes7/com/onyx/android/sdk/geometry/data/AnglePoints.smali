.class public final Lcom/onyx/android/sdk/geometry/data/AnglePoints;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0014J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u0006\u0010\u0018\u001a\u00020\u0000J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0010J\u0006\u0010 \u001a\u00020\u0014J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010\"\u001a\u00020\u0014J\u0006\u0010#\u001a\u00020\u0010J\u0006\u0010$\u001a\u00020\u0010J\u0008\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010)R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
        "",
        "center",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "previous",
        "next",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "getCenter",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setCenter",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "getNext",
        "setNext",
        "getPrevious",
        "setPrevious",
        "absoluteAngle",
        "",
        "angle",
        "centerDirection",
        "centerLine",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "longSideLength",
        "nextDirection",
        "nextLine",
        "previousDirection",
        "previousLine",
        "shortSideLength",
        "sideLengthDifferRate",
        "toString",
        "",
        "transform",
        "matrix",
        "Landroid/graphics/Matrix;",
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


# instance fields
.field private center:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private next:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previous:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "center"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previous"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p3, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/AnglePoints;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->copy(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final absoluteAngle()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->angle()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public final angle()F
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->intersectionAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final centerDirection()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previousDirection()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->nextDirection()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->average(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final centerLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previousLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->nextDirection()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previousDirection()F

    move-result p0

    sub-float/2addr v2, p0

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->rotate(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    return-object p0
.end method

.method public final component1()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final component2()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final component3()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final copy()Lcom/onyx/android/sdk/geometry/data/AnglePoints;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object v0
.end method

.method public final copy(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/AnglePoints;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p0, "center"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "previous"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "next"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p1, p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final longSideLength()F
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final nextDirection()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->nextLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    return p0
.end method

.method public final nextLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object v0
.end method

.method public final previousDirection()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previousLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    return p0
.end method

.method public final previousLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object v0
.end method

.method public final setCenter(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setNext(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setPrevious(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final shortSideLength()F
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final sideLengthDifferRate()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->shortSideLength()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->longSideLength()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/geometry/data/AnglePoints;
    .locals 2
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->center:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previous:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->next:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p1
.end method
