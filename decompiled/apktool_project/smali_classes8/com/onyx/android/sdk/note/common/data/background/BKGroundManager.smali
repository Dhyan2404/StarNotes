.class public final Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008R\u0010SJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\rH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0002J$\u0010 \u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\rH\u0002J\u0008\u0010!\u001a\u00020\rH\u0002J\u0008\u0010\"\u001a\u00020\rH\u0002J\u0008\u0010$\u001a\u00020#H\u0002J\u001a\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00162\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\'\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u00020\u0016H\u0002J\u0010\u0010)\u001a\u00020\u00062\u0008\u0010(\u001a\u0004\u0018\u00010\u0016J\u0010\u0010*\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\u000bJ*\u00100\u001a\u00020/2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010,\u001a\u0004\u0018\u00010+2\u0008\u0010.\u001a\u0004\u0018\u00010-J\u0010\u00103\u001a\u00020\u00062\u0008\u00102\u001a\u0004\u0018\u000101J\u0016\u00106\u001a\u00020\u00062\u0006\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020\rJ\u0010\u00109\u001a\u00020\u00062\u0008\u00108\u001a\u0004\u0018\u000107J\u0016\u0010<\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020\rJ\u001c\u0010=\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u000e\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u00020/J\u0006\u0010@\u001a\u00020/J\u0006\u0010A\u001a\u00020\u0006J\u0008\u0010B\u001a\u0004\u0018\u00010\u0010J\u0010\u0010C\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0006\u0010D\u001a\u00020\u0006R\u0016\u0010G\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010FR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010HR\u0014\u0010J\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010IR\u0014\u0010K\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010IR\u0016\u0010M\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010LR\u0016\u0010O\u001a\u0002018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010NR\u0016\u0010>\u001a\u00020/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010PR\u0018\u0010(\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010Q\u00a8\u0006T"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;",
        "",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "c",
        "d",
        "e",
        "f",
        "Landroid/content/Context;",
        "context",
        "",
        "type",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
        "background",
        "k",
        "r",
        "n",
        "o",
        "",
        "imagePath",
        "scaleType",
        "b",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "m",
        "origin",
        "p",
        "width",
        "height",
        "q",
        "i",
        "g",
        "",
        "h",
        "key",
        "a",
        "j",
        "documentId",
        "setDocumentId",
        "getCurrentBackgroundBitmap",
        "Landroid/graphics/Rect;",
        "dst",
        "Landroid/graphics/Matrix;",
        "matrix",
        "",
        "drawBackGround",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;",
        "config",
        "setBkGroundConfig",
        "viewWidth",
        "viewHeight",
        "setViewSize",
        "Landroid/graphics/RectF;",
        "rect",
        "setDeviceSize",
        "pageWidth",
        "pageHeight",
        "setPageSize",
        "getBackgroundBitmap",
        "exportModel",
        "setExportModel",
        "isExportModel",
        "clearBgBitmapCache",
        "getBackground",
        "setBackground",
        "clear",
        "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;",
        "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;",
        "bgBitmapCache",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "pageSize",
        "viewSize",
        "Landroid/graphics/RectF;",
        "deviceRect",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;",
        "bkGroundConfig",
        "Z",
        "Ljava/lang/String;",
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
.field public a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    const/high16 v1, 0x1400000

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->d:Lcom/onyx/android/sdk/base/data/Size;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenRectF()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->e:Landroid/graphics/RectF;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;-><init>(ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->f:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/SvgUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SvgUtil;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->isSvgImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->i()I

    move-result p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->g()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->decodeSvgAsBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->i()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->scaleToWidthRatioBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->p(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->i()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->scaleToWidthRatioBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->p(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->g()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->f:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->getScaleType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->d(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->f(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->e(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->b:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->clearBgBitmapCache()V

    return-void
.end method

.method public final clearBgBitmapCache()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->m()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getScaleFitCenterRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final drawBackGround(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Matrix;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "canvas"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->getCurrentBackgroundBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2, p4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->m()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->i()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->i()I

    move-result v5

    mul-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->g()I

    move-result v6

    mul-int/2addr v6, v4

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->b:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->getHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->isExportModel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->h()F

    move-result p0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int v0, p0

    :goto_0
    return v0
.end method

.method public final getBackground()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->b:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    return-object p0
.end method

.method public final getBackgroundBitmap(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->getType()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackgroundType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackgroundType;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackgroundType;->isFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->getType()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->l(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->k(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getCurrentBackgroundBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->b:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->getBackgroundBitmap(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final h()F
    .locals 4

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->d:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->d:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->b:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->isExportModel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->h()F

    move-result p0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int v0, p0

    :goto_0
    return v0
.end method

.method public final isExportModel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->g:Z

    return p0
.end method

.method public final j(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->a:Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final k(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/base/data/Size;
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->isExportModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->h()F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->h()F

    move-result v2

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v2, p0

    float-to-int p0, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->g()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->q(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final q(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string p3, "createBitmap(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->scaleToFitCenter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_2
    return-object p2
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setBackground(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->b:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    return-void
.end method

.method public final setBkGroundConfig(Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->f:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    return-void
.end method

.method public final setDeviceSize(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->e:Landroid/graphics/RectF;

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->h:Ljava/lang/String;

    return-void
.end method

.method public final setExportModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->g:Z

    return-void
.end method

.method public final setPageSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/base/data/Size;->equals(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->clearBgBitmapCache()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->c:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public final setViewSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->d:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/base/data/Size;->equals(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->clearBgBitmapCache()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;->d:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method
