.class public final Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;",
        "",
        "()V",
        "currentLength",
        "",
        "getCurrentLength",
        "()F",
        "setCurrentLength",
        "(F)V",
        "direction",
        "getDirection",
        "setDirection",
        "point",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "segmentIndex",
        "",
        "getSegmentIndex",
        "()I",
        "setSegmentIndex",
        "(I)V",
        "totalLength",
        "getTotalLength",
        "setTotalLength",
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
.field private currentLength:F

.field private direction:F

.field private point:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private segmentIndex:I

.field private totalLength:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->point:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method


# virtual methods
.method public final getCurrentLength()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->currentLength:F

    return p0
.end method

.method public final getDirection()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->direction:F

    return p0
.end method

.method public final getPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->point:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getSegmentIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->segmentIndex:I

    return p0
.end method

.method public final getTotalLength()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->totalLength:F

    return p0
.end method

.method public final setCurrentLength(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->currentLength:F

    return-void
.end method

.method public final setDirection(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->direction:F

    return-void
.end method

.method public final setPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->point:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setSegmentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->segmentIndex:I

    return-void
.end method

.method public final setTotalLength(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/PathMeasurePointResult;->totalLength:F

    return-void
.end method
