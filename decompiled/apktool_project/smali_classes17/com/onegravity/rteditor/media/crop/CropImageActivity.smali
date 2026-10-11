.class public Lcom/onegravity/rteditor/media/crop/CropImageActivity;
.super Lcom/onegravity/rteditor/media/MonitoredActivity;
.source "SourceFile"


# static fields
.field public static final ACTION_INLINE_DATA:Ljava/lang/String; = "inline-data"

.field public static final ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final CIRCLE_CROP:Ljava/lang/String; = "circleCrop"

.field public static final IMAGE_DESTINATION_FILE:Ljava/lang/String; = "image-dest-file"

.field public static final IMAGE_SOURCE_FILE:Ljava/lang/String; = "image-source-file"

.field public static final ORIENTATION_IN_DEGREES:Ljava/lang/String; = "orientation_in_degrees"

.field public static final OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final RETURN_DATA_AS_BITMAP:Ljava/lang/String; = "data"

.field public static final SCALE:Ljava/lang/String; = "scale"

.field public static final SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"


# instance fields
.field public A0:Z

.field public B0:Z

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:Z

.field public H0:Lcom/onegravity/rteditor/media/crop/CropImageView;

.field public I0:Landroid/graphics/Bitmap;

.field public J0:Ljava/lang/String;

.field public K0:Ljava/lang/String;

.field public L0:Z

.field public M0:Z

.field public N0:Lcom/onegravity/rteditor/media/crop/HighlightView;

.field public O0:Z

.field public final P0:Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;

.field public Q0:Ljava/lang/Runnable;

.field public final x0:F

.field public y0:Landroid/graphics/Bitmap$CompressFormat;

.field public z0:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onegravity/rteditor/media/MonitoredActivity;-><init>()V

    const/high16 v0, 0x44800000    # 1024.0f

    iput v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->x0:F

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->y0:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->z0:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->A0:Z

    iput-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->B0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->O0:Z

    new-instance v0, Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;

    invoke-direct {v0}, Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->P0:Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;

    new-instance v0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;

    invoke-direct {v0, p0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity$c;-><init>(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->Q0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic C(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic D(Lcom/onegravity/rteditor/media/crop/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic E(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Lcom/onegravity/rteditor/media/crop/CropImageView;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->H0:Lcom/onegravity/rteditor/media/crop/CropImageView;

    return-object p0
.end method

.method public static synthetic F(Lcom/onegravity/rteditor/media/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->Q(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic G(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->B0:Z

    return p0
.end method

.method public static synthetic H(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->C0:I

    return p0
.end method

.method public static synthetic I(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->D0:I

    return p0
.end method

.method public static synthetic J(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->A0:Z

    return p0
.end method

.method public static synthetic K(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/MonitoredActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final L(Ljava/io/InputStream;Landroid/net/Uri;F)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final M(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {p1}, Lcom/onegravity/rteditor/media/MediaUtils;->createFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-float v3, v3

    const/high16 v4, 0x44800000    # 1024.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    div-float v4, v3, v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    div-float v5, v3, v4

    const/high16 v6, 0x41000000    # 8.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :try_start_2
    invoke-virtual {p0, v2, v0, v4}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->L(Ljava/io/InputStream;Landroid/net/Uri;F)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bitmap could not be created (probably out of memory), decreasing size and retrying"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "error while opening image"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_2
    invoke-static {v2}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_2
    move-object v2, v1

    :catch_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :goto_3
    return-object v1

    :catchall_2
    move-exception p0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final N(Landroid/app/Activity;)I
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    :cond_3
    :goto_0
    return p1
.end method

.method public final O()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->M0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->N0:Lcom/onegravity/rteditor/media/crop/HighlightView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->M0:Z

    invoke-virtual {v0}, Lcom/onegravity/rteditor/media/crop/HighlightView;->c()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-boolean v3, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->B0:Z

    if-eqz v3, :cond_2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v0, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->B0:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v2, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    iget v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E0:I

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->F0:I

    if-eqz v1, :cond_7

    iget-boolean v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->G0:Z

    if-eqz v2, :cond_5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v7, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E0:I

    iget v8, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->F0:I

    iget-boolean v9, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->O0:Z

    move-object v4, p0

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->S(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v3, v0, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->N0:Lcom/onegravity/rteditor/media/crop/HighlightView;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/media/crop/HighlightView;->c()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->E0:I

    iget v7, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->F0:I

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    neg-int v5, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v5, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v2, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    :goto_1
    move-object v3, v0

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, "return-data"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "inline-data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_9
    sget v0, Lcom/onegravity/rteditor/R$string;->rte_processing_image:I

    new-instance v1, Lcom/onegravity/rteditor/media/crop/CropImageActivity$b;

    invoke-direct {v1, p0, v3}, Lcom/onegravity/rteditor/media/crop/CropImageActivity$b;-><init>(Lcom/onegravity/rteditor/media/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/media/MonitoredActivity;->startBackgroundJob(ILjava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public final P(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final Q(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->z0:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->z0:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->y0:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->z0:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "image-source-file"

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->J0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "image-dest-file"

    iget-object v2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->K0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "orientation_in_degrees"

    invoke-virtual {p0, p0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->N(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->z0:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_0
    invoke-static {v0}, Lcom/onegravity/rteditor/utils/Helper;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not defined image url"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final R()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->H0:Lcom/onegravity/rteditor/media/crop/CropImageView;

    iget-object v1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->m(Landroid/graphics/Bitmap;Z)V

    sget v0, Lcom/onegravity/rteditor/R$string;->rte_processing_image:I

    new-instance v1, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;

    invoke-direct {v1, p0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity$a;-><init>(Lcom/onegravity/rteditor/media/crop/CropImageActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/media/MonitoredActivity;->startBackgroundJob(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final S(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 13

    move-object v0, p1

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v9

    const/4 v3, 0x0

    const/4 v10, 0x0

    if-nez p5, :cond_1

    if-ltz v1, :cond_0

    if-gez v2, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v1, v1, 0x2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {v5, v1, v2, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, v8, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v9, v2

    div-int/lit8 v2, v2, 0x2

    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v8, v1

    sub-int/2addr v9, v2

    invoke-direct {v6, v1, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p2, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v4, v1, v2

    int-to-float v5, v8

    int-to-float v6, v9

    div-float v11, v5, v6

    cmpl-float v4, v4, v11

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f666666    # 0.9f

    if-lez v4, :cond_4

    div-float/2addr v6, v2

    cmpg-float v1, v6, v12

    if-ltz v1, :cond_3

    cmpl-float v1, v6, v11

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_2

    :cond_4
    div-float/2addr v5, v1

    cmpg-float v1, v5, v12

    if-ltz v1, :cond_6

    cmpl-float v1, v5, v11

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v3

    goto :goto_3

    :cond_6
    :goto_1
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_2
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v7

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v7, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v1, -0x54fffffa

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    sget v0, Lcom/onegravity/rteditor/R$menu;->rte_crop_image:I

    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/onegravity/rteditor/media/MonitoredActivity;->onDestroy()V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/onegravity/rteditor/R$id;->save:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v2

    :cond_0
    sget v1, Lcom/onegravity/rteditor/R$id;->cancel:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_1
    sget v1, Lcom/onegravity/rteditor/R$id;->rotate_left:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->P(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->H0:Lcom/onegravity/rteditor/media/crop/CropImageView;

    invoke-virtual {p1, v0, v2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->Q0:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_2
    sget v1, Lcom/onegravity/rteditor/R$id;->rotate_right:I

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0, p1, v0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->P(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->I0:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/onegravity/rteditor/media/crop/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/onegravity/rteditor/media/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->H0:Lcom/onegravity/rteditor/media/crop/CropImageView;

    invoke-virtual {p1, v0, v2}, Lcom/onegravity/rteditor/media/crop/ImageViewTouchBase;->n(Lcom/onegravity/rteditor/media/crop/RotateBitmap;Z)V

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->Q0:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/onegravity/rteditor/media/MonitoredActivity;->onPause()V

    invoke-static {}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->instance()Lcom/onegravity/rteditor/media/crop/BitmapManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->P0:Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;

    invoke-virtual {v0, p0}, Lcom/onegravity/rteditor/media/crop/BitmapManager;->cancelThreadDecoding(Lcom/onegravity/rteditor/media/crop/BitmapManager$ThreadSet;)V

    return-void
.end method
