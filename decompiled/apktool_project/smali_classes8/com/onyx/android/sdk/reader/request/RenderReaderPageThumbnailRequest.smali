.class public final Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderReaderPageThumbnailRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderReaderPageThumbnailRequest.kt\ncom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,103:1\n32#2,5:104\n41#2,5:109\n32#2,5:114\n98#3,4:119\n43#4,3:123\n*S KotlinDebug\n*F\n+ 1 RenderReaderPageThumbnailRequest.kt\ncom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest\n*L\n50#1:104,5\n53#1:109,5\n55#1:114,5\n81#1:119,4\n82#1:123,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002R\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "",
        "f",
        "g",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "reader",
        "h",
        "i",
        "Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;",
        "Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V",
        "args",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRenderReaderPageThumbnailRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderReaderPageThumbnailRequest.kt\ncom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,103:1\n32#2,5:104\n41#2,5:109\n32#2,5:114\n98#3,4:119\n43#4,3:123\n*S KotlinDebug\n*F\n+ 1 RenderReaderPageThumbnailRequest.kt\ncom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest\n*L\n50#1:104,5\n53#1:109,5\n55#1:114,5\n81#1:119,4\n82#1:123,3\n*E\n"
    }
.end annotation


# instance fields
.field public f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f()Z

    return-void
.end method

.method public final f()Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->g()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->h(Lcom/onyx/android/sdk/reader/Reader;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->i(Lcom/onyx/android/sdk/reader/Reader;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getRenderBackgroundArgs()Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    sget-object v3, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;->getImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v1, v6

    float-to-int v1, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v5

    div-float/2addr p0, v6

    float-to-int p0, p0

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    float-to-int v4, v4

    add-int/2addr v4, v1

    float-to-int v5, v5

    add-int/2addr v5, p0

    invoke-direct {v2, v1, p0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v3, v6, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode background failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;->getColor()I

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;->getColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/reader/Reader;)Z
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getDisplayRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getContentDiskCache()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getPosition()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getRotation()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->getDiskCacheKey(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getContentDiskCache()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->queryCacheBitmap(Landroid/graphics/RectF;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hitTest reader content disk cache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v1, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget p0, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method

.method public final i(Lcom/onyx/android/sdk/reader/Reader;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    iget-object v2, v0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getPosition()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v7

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getScale()F

    move-result v8

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getRotation()F

    move-result v1

    float-to-int v9, v1

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getDisplayRectF()Landroid/graphics/RectF;

    move-result-object v10

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object v11

    iget-object v0, v0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;->getPageRect()Landroid/graphics/RectF;

    move-result-object v12

    new-instance v0, Lcom/onyx/android/sdk/reader/api/DrawArgs;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x780

    const/16 v19, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v19}, Lcom/onyx/android/sdk/reader/api/DrawArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->safeRender(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z

    return-void
.end method

.method public final setArgs(Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;

    return-void
.end method
