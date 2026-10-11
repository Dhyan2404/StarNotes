.class public final Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;
.super Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R(\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R(\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000e\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012R:\u0010 \u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00190\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;",
        "Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "",
        "onTouchDown",
        "onTouchMove",
        "reset",
        "resetPredict",
        "b",
        "a",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "c",
        "Ljava/util/List;",
        "getRealPointList",
        "()Ljava/util/List;",
        "setRealPointList",
        "(Ljava/util/List;)V",
        "realPointList",
        "d",
        "getPredictPointList",
        "setPredictPointList",
        "predictPointList",
        "Lkotlin/Function1;",
        "",
        "e",
        "Lkotlin/jvm/functions/Function1;",
        "getPointMap",
        "()Lkotlin/jvm/functions/Function1;",
        "setPointMap",
        "(Lkotlin/jvm/functions/Function1;)V",
        "pointMap",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->d:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg$pointMap$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg$pointMap$1;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->resetPredict()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getPredictPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->d:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->e:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    filled-new-array {p1, v0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->e:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    filled-new-array {v2, p0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getPointMap()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getPredictPointList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getRealPointList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->c:Ljava/util/List;

    return-object p0
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->resetPredict()V

    return-void
.end method

.method public onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->onTouchMove(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->b(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->a(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->reset()V

    return-void
.end method

.method public resetPredict()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final setPointMap(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPredictPointList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->d:Ljava/util/List;

    return-void
.end method

.method public final setRealPointList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;->c:Ljava/util/List;

    return-void
.end method
