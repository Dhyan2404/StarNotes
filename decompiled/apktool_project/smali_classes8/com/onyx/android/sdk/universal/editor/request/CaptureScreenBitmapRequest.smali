.class public final Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0015\u001a\u0004\u0008\u001c\u0010\u0017\"\u0004\u0008\u001d\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Landroid/graphics/Bitmap;",
        "execute",
        "Landroid/media/ImageReader;",
        "reader",
        "h",
        "Landroid/media/Image;",
        "g",
        "Landroid/content/Intent;",
        "a",
        "Landroid/content/Intent;",
        "intent",
        "",
        "b",
        "J",
        "FLUSH_DELAY_TIME",
        "c",
        "ACQUIRE_IMAGE_DELAY_TIME",
        "",
        "d",
        "Z",
        "getOverScreen",
        "()Z",
        "setOverScreen",
        "(Z)V",
        "overScreen",
        "e",
        "getScaleToContentSize",
        "setScaleToContentSize",
        "scaleToContentSize",
        "<init>",
        "(Landroid/content/Intent;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:J

.field public final c:J

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->a:Landroid/content/Intent;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/data/R$integer;->delay_time_flush:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->b:J

    sget v0, Lcom/onyx/android/sdk/data/R$integer;->acquire_image_delay_time:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->c:J

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;Landroid/os/Looper;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;Landroid/os/Looper;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Landroid/media/ImageReader;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->f(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Landroid/media/ImageReader;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Handler;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->e(Landroid/os/Handler;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;)V

    return-void
.end method

.method public static final d(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;Landroid/os/Looper;Landroid/os/Message;)Z
    .locals 1

    const-string v0, "$display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$looper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/display/VirtualDisplay;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    invoke-virtual {p2}, Landroid/media/projection/MediaProjection;->stop()V

    const/16 p0, 0x22

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelBelow(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Landroid/os/Looper;->quitSafely()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final e(Landroid/os/Handler;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;)V
    .locals 1

    const-string v0, "$handler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/knd;

    invoke-direct {v0, p2, p1, p3, p0}, Lcom/sunia/HTREnginev2/knd;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Landroid/media/ImageReader;Landroid/os/Handler;)V

    iget-wide p1, p1, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->b:J

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final f(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Landroid/media/ImageReader;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "$bitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->h(Landroid/media/ImageReader;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Bitmap is null after calling readBitmap"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public execute()Landroid/graphics/Bitmap;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    const-class v3, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/projection/MediaProjectionManager;

    const/4 v4, -0x1

    .line 4
    iget-object v5, v0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->a:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 6
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 7
    sget-object v4, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getScreenSize()Landroid/util/Size;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 9
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 10
    invoke-static {v5, v4, v6, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v12

    const-string v6, "newInstance(...)"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    .line 13
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 16
    new-instance v14, Landroid/os/Handler;

    new-instance v6, Lcom/sunia/HTREnginev2/lnd;

    invoke-direct {v6, v15, v12, v3, v8}, Lcom/sunia/HTREnginev2/lnd;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;Landroid/os/Looper;)V

    invoke-direct {v14, v8, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 17
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    new-instance v6, Lcom/sunia/HTREnginev2/mnd;

    invoke-direct {v6, v14, v0, v13}, Lcom/sunia/HTREnginev2/mnd;-><init>(Landroid/os/Handler;Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v12, v6, v14}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/16 v6, 0x22

    .line 19
    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 20
    new-instance v11, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest$execute$2;

    move-object v6, v11

    move-object v7, v13

    move-object v9, v12

    move-object v10, v15

    move-object v0, v11

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest$execute$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/Looper;Landroid/media/ImageReader;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/media/projection/MediaProjection;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    :cond_1
    const-string v7, "ScreenCapture"

    const/16 v11, 0x10

    .line 21
    invoke-virtual {v12}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v12

    const/4 v0, 0x0

    move-object v6, v3

    move v8, v5

    move v9, v4

    move v10, v2

    move-object v2, v13

    move-object v13, v0

    .line 22
    invoke-virtual/range {v6 .. v14}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    sget v0, Lcom/onyx/android/sdk/universal/R$integer;->screen_capture_delay:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 25
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 26
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Bitmap is null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    .line 28
    :cond_2
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 29
    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v1, "Not Allowed On Main Thread"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->execute()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final g(Landroid/media/ImageReader;)Landroid/media/Image;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_0

    iget-wide v3, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->c:J

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "ImageReader do not acquire image"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getOverScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->d:Z

    return p0
.end method

.method public final getScaleToContentSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->e:Z

    return p0
.end method

.method public final h(Landroid/media/ImageReader;)Landroid/graphics/Bitmap;
    .locals 14

    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->g(Landroid/media/ImageReader;)Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    mul-int/2addr v6, v5

    sub-int/2addr v2, v6

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    div-int/2addr v2, v5

    add-int/2addr v6, v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v5, "createBitmap(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getLeftPadding(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getRightPadding(Landroid/graphics/Bitmap;)I

    move-result v7

    sub-int/2addr v6, v4

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v7

    iget-boolean v8, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->d:Z

    const/4 v9, 0x1

    if-nez v8, :cond_1

    sget-object v8, Lcom/onyx/android/sdk/data/account/bean/Device;->Companion:Lcom/onyx/android/sdk/data/account/bean/Device$Companion;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/data/account/bean/Device$Companion;->getNavigationBarHeight()I

    move-result v8

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    if-ne v10, v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-double v7, v7

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v7, v10

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p1

    int-to-double v10, p1

    int-to-double v12, v9

    sub-double/2addr v12, v7

    mul-double/2addr v10, v12

    double-to-int v7, v10

    :cond_1
    if-lez v6, :cond_6

    if-gtz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v2, v4, v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->d:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->e:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {p1, v1, v0, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->a:Landroid/content/Intent;

    const-string v1, "rect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->a:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p1, v0, v1, v2, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " readBitmap width:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  height:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setOverScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->d:Z

    return-void
.end method

.method public final setScaleToContentSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;->e:Z

    return-void
.end method
