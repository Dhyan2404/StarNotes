.class public final Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0000H\u0014J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0000J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0006\u0010\u0016\u001a\u00020\u000cJ\u0006\u0010\u0017\u001a\u00020\u000eJ\u0006\u0010\u0018\u001a\u00020\u0010J\u0008\u0010\u0019\u001a\u00020\u000cH\u0016J\u0008\u0010\u001a\u001a\u00020\u0005H\u0007J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u000e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010R$\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;",
        "Ljava/io/Serializable;",
        "",
        "()V",
        "fitToScreen",
        "",
        "getFitToScreen$annotations",
        "getFitToScreen",
        "()Z",
        "setFitToScreen",
        "(Z)V",
        "scaleType",
        "",
        "viewPortPos",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "viewportScale",
        "",
        "clone",
        "zoomInfo",
        "equals",
        "other",
        "",
        "getScaleType",
        "getViewPortPos",
        "getViewportScale",
        "hashCode",
        "isFitScreenType",
        "migrateScaleType",
        "",
        "setScaleType",
        "setViewPortPos",
        "setViewportScale",
        "sdk-replicator_overseasRelease"
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
.field private fitToScreen:Z

.field private scaleType:I

.field private viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewportScale:F


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewportScale:F

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public static synthetic getFitToScreen$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    return-void
.end method

.method private final migrateScaleType()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->fitToScreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->scaleType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->scaleType:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->fitToScreen:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.zoom.NoteZoomInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->clone()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->setViewPortPos(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    .line 5
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final clone(Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;)Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;

    move-result-object p0

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
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewportScale:F

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewportScale:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->fitToScreen:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->fitToScreen:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->scaleType:I

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->scaleType:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFitToScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->fitToScreen:Z

    return p0
.end method

.method public final getScaleType()I
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->migrateScaleType()V

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->scaleType:I

    return p0
.end method

.method public final getViewPortPos()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getViewportScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewportScale:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewportScale:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->fitToScreen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->scaleType:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final isFitScreenType()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->getScaleType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setFitToScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->fitToScreen:Z

    return-void
.end method

.method public final setScaleType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->scaleType:I

    return-void
.end method

.method public final setViewPortPos(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewPortPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewPortPos:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setViewportScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;->viewportScale:F

    return-void
.end method
