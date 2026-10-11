.class public final Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004J\u001a\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;",
        "",
        "()V",
        "getDefaultPageHeight",
        "",
        "getDefaultPageRect",
        "Landroid/graphics/Rect;",
        "getDefaultPageWidth",
        "updateZoomInfo",
        "",
        "zoomInfo",
        "Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;",
        "renderMeasure",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultPageHeight()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->isLandscapeWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getShorterRealScreenSize()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLongerRealScreenSize()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getDefaultPageRect()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getDefaultPageWidth()I
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->isLandscapeWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLongerRealScreenSize()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getShorterRealScreenSize()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final updateZoomInfo(Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->setViewportScale(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getZoomRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p0, p2

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->setViewPortPos(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_1
    :goto_0
    return-void
.end method
