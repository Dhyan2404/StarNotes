.class public abstract Lcom/onyx/android/sdk/pen/NeoNativePen;
.super Lcom/onyx/android/sdk/pen/NeoPen;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\'\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0010\u00a2\u0006\u0002\u0008\nJ*\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J(\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J0\u0010\u0011\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J8\u0010\u0011\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J*\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J(\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoNativePen;",
        "Lcom/onyx/android/sdk/pen/NeoPen;",
        "penHandle",
        "",
        "(J)V",
        "buildPenResult",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/pen/PenResult;",
        "result",
        "Lcom/onyx/android/sdk/pennative/PenInkResult;",
        "buildPenResult$sdk_pen_release",
        "onPenDown",
        "point",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "prediction",
        "repaint",
        "",
        "onPenMove",
        "points",
        "",
        "onPenUp",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoPen;-><init>(J)V

    return-void
.end method


# virtual methods
.method public buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pennative/PenInkResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pennative/PenInkResult;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "point"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;->onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/pennative/NeoPenNative;->INSTANCE:Lcom/onyx/android/sdk/pennative/NeoPenNative;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoPen;->getPenHandle$sdk_pen_release()J

    move-result-wide v1

    .line 4
    sget-object v3, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, p1, v6, v4, v5}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArray$default(Lcom/onyx/android/sdk/pen/utils/PenUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;FILjava/lang/Object;)[D

    move-result-object p1

    .line 5
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->onPenDown(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoNativePen;->buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/pen/NeoNativePen;->onPenMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenMove(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/pennative/NeoPenNative;->INSTANCE:Lcom/onyx/android/sdk/pennative/NeoPenNative;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoPen;->getPenHandle$sdk_pen_release()J

    move-result-wide v2

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, p1, v4, v5, v6}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArray$default(Lcom/onyx/android/sdk/pen/utils/PenUtils;Ljava/util/List;FILjava/lang/Object;)[D

    move-result-object p1

    .line 5
    invoke-static {v0, p2, v4, v5, v6}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArrayNullable$default(Lcom/onyx/android/sdk/pen/utils/PenUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;FILjava/lang/Object;)[D

    move-result-object v5

    move-object v4, p1

    move v6, p3

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->onPenMove(J[D[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoNativePen;->buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lkotlin/Pair;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "point"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/pen/NeoNativePen;->onPenUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPenUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Lkotlin/Pair;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            "Lcom/onyx/android/sdk/pen/PenResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/pennative/NeoPenNative;->INSTANCE:Lcom/onyx/android/sdk/pennative/NeoPenNative;

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoPen;->getPenHandle$sdk_pen_release()J

    move-result-wide v1

    .line 4
    sget-object v3, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, p1, v6, v4, v5}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getPointDoubleArray$default(Lcom/onyx/android/sdk/pen/utils/PenUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;FILjava/lang/Object;)[D

    move-result-object p1

    .line 5
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/onyx/android/sdk/pennative/NeoPenNative;->onPenUp(J[DZ)Lcom/onyx/android/sdk/pennative/PenInkResult;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoNativePen;->buildPenResult$sdk_pen_release(Lcom/onyx/android/sdk/pennative/PenInkResult;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
