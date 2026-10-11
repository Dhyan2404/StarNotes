.class public final Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u001a&\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u001a$\u0010\u000c\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u001a\u0016\u0010\u0011\u001a\u00020\u0001*\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u001a\u0016\u0010\u0015\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\r\u001aH\u0010\u0017\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u0019\u00a2\u0006\u0002\u0008\u001a\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0003 \u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "clean",
        "",
        "Landroid/view/SurfaceView;",
        "color",
        "",
        "drawPathWithRect",
        "path",
        "Landroid/graphics/Path;",
        "paint",
        "Landroid/graphics/Paint;",
        "rect",
        "Landroid/graphics/Rect;",
        "lock",
        "Landroid/graphics/Canvas;",
        "dirty",
        "useHardware",
        "",
        "setHighFrameRate",
        "Landroid/view/Surface;",
        "frameRate",
        "",
        "unlockCanvasAndPost",
        "canvas",
        "use",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "sdk-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final clean(Landroid/view/SurfaceView;I)V
    .locals 7
    .param p0    # Landroid/view/SurfaceView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt$clean$1;

    invoke-direct {v4, p1}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt$clean$1;-><init>(I)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->use$default(Landroid/view/SurfaceView;Landroid/graphics/Rect;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic clean$default(Landroid/view/SurfaceView;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->clean(Landroid/view/SurfaceView;I)V

    return-void
.end method

.method public static final drawPathWithRect(Landroid/view/SurfaceView;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Rect;)V
    .locals 7
    .param p0    # Landroid/view/SurfaceView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt$drawPathWithRect$1;

    invoke-direct {v4, p1, p2}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt$drawPathWithRect$1;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->use$default(Landroid/view/SurfaceView;Landroid/graphics/Rect;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic drawPathWithRect$default(Landroid/view/SurfaceView;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Rect;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->drawPathWithRect(Landroid/view/SurfaceView;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static final lock(Landroid/view/SurfaceView;Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;
    .locals 1
    .param p0    # Landroid/view/SurfaceView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic lock$default(Landroid/view/SurfaceView;Landroid/graphics/Rect;ZILjava/lang/Object;)Landroid/graphics/Canvas;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->lock(Landroid/view/SurfaceView;Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method

.method public static final setHighFrameRate(Landroid/view/Surface;F)V
    .locals 2
    .param p0    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sunia/HTREnginev2/f1o;->a(Landroid/view/Surface;FI)V

    :cond_1
    return-void
.end method

.method public static synthetic setHighFrameRate$default(Landroid/view/Surface;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x42f00000    # 120.0f

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->setHighFrameRate(Landroid/view/Surface;F)V

    return-void
.end method

.method public static final unlockCanvasAndPost(Landroid/view/SurfaceView;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0    # Landroid/view/SurfaceView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static final use(Landroid/view/SurfaceView;Landroid/graphics/Rect;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Landroid/view/SurfaceView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Landroid/graphics/Rect;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->lock(Landroid/view/SurfaceView;Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->unlockCanvasAndPost(Landroid/view/SurfaceView;Landroid/graphics/Canvas;)V

    return-void

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    :goto_1
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->unlockCanvasAndPost(Landroid/view/SurfaceView;Landroid/graphics/Canvas;)V

    throw p2
.end method

.method public static synthetic use$default(Landroid/view/SurfaceView;Landroid/graphics/Rect;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/SurfaceViewKt;->use(Landroid/view/SurfaceView;Landroid/graphics/Rect;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method
