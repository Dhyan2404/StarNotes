.class public Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;
.super Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016R\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u000e\u001a\u0004\u0008\u0015\u0010\u0010\"\u0004\u0008\u0016\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;",
        "Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "",
        "onTouchDown",
        "onTouchMove",
        "onTouchDone",
        "composeRealPath",
        "composePredictPath",
        "reset",
        "resetPredict",
        "Landroid/graphics/Path;",
        "c",
        "Landroid/graphics/Path;",
        "getPath",
        "()Landroid/graphics/Path;",
        "setPath",
        "(Landroid/graphics/Path;)V",
        "path",
        "d",
        "getPredictPath",
        "setPredictPath",
        "predictPath",
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
.field public c:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public composePredictPath(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->resetPredict()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getPredictPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getQuadToEndPos$default(FFFILjava/lang/Object;)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-static {v1, v5, v2, v3, v4}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getQuadToEndPos$default(FFFILjava/lang/Object;)F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->d:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    :cond_0
    return-void
.end method

.method public composeRealPath(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->c:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->averageQuadTo(Landroid/graphics/Path;FFFF)V

    return-void
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->c:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getPredictPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->d:Landroid/graphics/Path;

    return-object p0
.end method

.method public onTouchDone(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->onTouchDone(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->resetPredict()V

    return-void
.end method

.method public onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->c:Landroid/graphics/Path;

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

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->composeRealPath(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->composePredictPath(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->c:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;->reset()V

    return-void
.end method

.method public resetPredict()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public final setPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->c:Landroid/graphics/Path;

    return-void
.end method

.method public final setPredictPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;->d:Landroid/graphics/Path;

    return-void
.end method
