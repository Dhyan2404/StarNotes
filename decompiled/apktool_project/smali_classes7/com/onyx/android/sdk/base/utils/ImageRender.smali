.class public Lcom/onyx/android/sdk/base/utils/ImageRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRender.kt\ncom/onyx/android/sdk/base/utils/ImageRender\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,209:1\n344#2,3:210\n*S KotlinDebug\n*F\n+ 1 ImageRender.kt\ncom/onyx/android/sdk/base/utils/ImageRender\n*L\n175#1:210,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0018\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J*\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\"\u0010!\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/ImageRender;",
        "",
        "Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;",
        "renderArgs",
        "",
        "drawImage",
        "Landroid/graphics/Bitmap;",
        "targetBitmap",
        "drawFullImageToTargetBitmap",
        "",
        "path",
        "Ljava/io/InputStream;",
        "pathInputStream",
        "decodeBitmap",
        "",
        "renderToTargetBitmap",
        "c",
        "regionBitmap",
        "e",
        "",
        "scale",
        "Landroid/graphics/RectF;",
        "visibleRect",
        "d",
        "inputStream",
        "viewport",
        "",
        "orientation",
        "a",
        "Landroid/graphics/BitmapFactory$Options;",
        "options",
        "Landroid/graphics/Rect;",
        "regionToDecode",
        "b",
        "<init>",
        "()V",
        "RenderArgs",
        "sdk-base_release"
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
        "SMAP\nImageRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRender.kt\ncom/onyx/android/sdk/base/utils/ImageRender\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,209:1\n344#2,3:210\n*S KotlinDebug\n*F\n+ 1 ImageRender.kt\ncom/onyx/android/sdk/base/utils/ImageRender\n*L\n175#1:210,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;Landroid/graphics/RectF;I)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getRotation()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getScale()F

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    neg-float v0, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move v3, v0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotated$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ImageRender;->d(FLandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget v4, v2, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    iput v5, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v1

    add-float/2addr v4, p3

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getImageSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Size;->centerX()F

    move-result p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getImageSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Size;->centerY()F

    move-result p2

    invoke-static {v3, v0, p3, p2}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotate(Landroid/graphics/RectF;FFF)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    const/16 p3, 0x8

    const/4 v0, 0x6

    const/4 v4, 0x3

    if-eq p4, v4, :cond_2

    const/4 v5, 0x0

    if-eq p4, v0, :cond_1

    if-eq p4, p3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p2, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p2, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget-object v6, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    float-to-int v2, v2

    float-to-int v5, v5

    invoke-virtual {v6, v1, v2, v5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v5, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orientation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " regionInOrigin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v3, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1, p2}, Lcom/onyx/android/sdk/base/utils/ImageRender;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmap = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " * "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p0, p2, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_5

    return-object v1

    :cond_5
    if-eq p4, v4, :cond_8

    if-eq p4, v0, :cond_7

    if-eq p4, p3, :cond_6

    goto :goto_3

    :cond_6
    const/16 p0, 0x10e

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_7
    const/16 p0, 0x5a

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    :cond_8
    const/16 p0, 0xb4

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;

    invoke-direct {p1, p3, p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$decodeSubImageFromStreamImpl$1;-><init>(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->use(Landroid/graphics/BitmapRegionDecoder;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final c(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getImageOrientation(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getRotation()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-nez v4, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getImageSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getImageSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ImageRender;->pathInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/onyx/android/sdk/base/utils/ImageRender;->a(Ljava/io/InputStream;Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;Landroid/graphics/RectF;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2, p1, v2}, Lcom/onyx/android/sdk/base/utils/ImageRender;->e(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    :try_start_2
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final d(FLandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, p1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, p1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p1

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method

.method public drawFullImageToTargetBitmap(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "targetBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getRotation()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotatedSize$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1, v0}, Lcom/onyx/android/sdk/base/utils/ImageRender;->renderToTargetBitmap(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final drawImage(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getViewportBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->toRectNonNull(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->contains(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ImageRender;->c(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ImageRender;->drawFullImageToTargetBitmap(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final e(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getRotation()F

    move-result p1

    invoke-virtual {v0, p3, p2, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Landroid/graphics/Bitmap;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p3, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public pathInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final renderToTargetBitmap(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderArgs"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetBitmap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "decodeBitmap"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object p2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;->getRotation()F

    move-result p1

    invoke-virtual {p2, p3, v1, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Landroid/graphics/Bitmap;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p3, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method
