.class public final Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;",
        "",
        "sliceInfo",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "isSuccess",
        "",
        "dirtyPageDisplayRect",
        "Landroid/graphics/RectF;",
        "dirtyBitmapRect",
        "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;ZLandroid/graphics/RectF;Landroid/graphics/RectF;)V",
        "getDirtyBitmapRect",
        "()Landroid/graphics/RectF;",
        "setDirtyBitmapRect",
        "(Landroid/graphics/RectF;)V",
        "getDirtyPageDisplayRect",
        "()Z",
        "setSuccess",
        "(Z)V",
        "getSliceInfo",
        "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
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
.field private dirtyBitmapRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dirtyPageDisplayRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isSuccess:Z

.field private final sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;ZLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "sliceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    .line 3
    iput-boolean p2, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->isSuccess:Z

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->dirtyPageDisplayRect:Landroid/graphics/RectF;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->dirtyBitmapRect:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;ZLandroid/graphics/RectF;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;-><init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;ZLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public final getDirtyBitmapRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->dirtyBitmapRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getDirtyPageDisplayRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->dirtyPageDisplayRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getSliceInfo()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->sliceInfo:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->isSuccess:Z

    return p0
.end method

.method public final setDirtyBitmapRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->dirtyBitmapRect:Landroid/graphics/RectF;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/geometry/data/SliceBitmapUpdateResult;->isSuccess:Z

    return-void
.end method
