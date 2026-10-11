.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLayoutShaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutShaderWrapper.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,171:1\n43#2,3:172\n*S KotlinDebug\n*F\n+ 1 GeoLayoutShaderWrapper.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper\n*L\n85#1:172,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\t\u0018\u0000 :2\u00020\u0001:\u0001:B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010$\u001a\u00020%J\u0016\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u001e\u0010+\u001a\u00020%2\u0006\u0010,\u001a\u00020-2\u0006\u0010)\u001a\u00020*2\u0006\u0010.\u001a\u00020\u000eJ\u0006\u0010/\u001a\u00020\u0017J\u0012\u00100\u001a\u0004\u0018\u00010\u00082\u0006\u00101\u001a\u000202H\u0002J\u0010\u00103\u001a\u00020%2\u0006\u00104\u001a\u00020\u0007H\u0002J\u0010\u00105\u001a\u00020%2\u0006\u00104\u001a\u00020\u0007H\u0002J\u000e\u00106\u001a\u00020%2\u0006\u00107\u001a\u00020(J\u0016\u00108\u001a\u00020%2\u0006\u00109\u001a\u00020*2\u0006\u0010\r\u001a\u00020\u000eR\'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0004R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u000e\u0010\u001d\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;",
        "",
        "geoLayout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V",
        "bitmapShaderLruCache",
        "Landroid/util/LruCache;",
        "",
        "Landroid/graphics/Shader;",
        "getBitmapShaderLruCache",
        "()Landroid/util/LruCache;",
        "bitmapShaderLruCache$delegate",
        "Lkotlin/Lazy;",
        "boundingRectF",
        "Landroid/graphics/RectF;",
        "getBoundingRectF",
        "()Landroid/graphics/RectF;",
        "setBoundingRectF",
        "(Landroid/graphics/RectF;)V",
        "getGeoLayout",
        "()Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "setGeoLayout",
        "isEnabledUnionCanvasBoundingRectF",
        "",
        "()Z",
        "setEnabledUnionCanvasBoundingRectF",
        "(Z)V",
        "isVisible",
        "setVisible",
        "renderRectF",
        "shaderPaint",
        "Landroid/graphics/Paint;",
        "shaderRenderLocalMatrix",
        "Landroid/graphics/Matrix;",
        "shaderTempLocalMatrix",
        "transformMatrix",
        "clearCache",
        "",
        "drawVirtualPage",
        "pageCanvas",
        "Landroid/graphics/Canvas;",
        "virtualPage",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "drawVirtualPageClipRectF",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "clipRectF",
        "isEnabled",
        "loadShaderBitmap",
        "scaleFactor",
        "",
        "logD",
        "msg",
        "logW",
        "onDraw",
        "canvas",
        "updateViewportAndBoundingRectF",
        "viewport",
        "Companion",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeoLayoutShaderWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutShaderWrapper.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,171:1\n43#2,3:172\n*S KotlinDebug\n*F\n+ 1 GeoLayoutShaderWrapper.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper\n*L\n85#1:172,3\n*E\n"
    }
.end annotation


# static fields
.field private static final CACHE_MAX_COUNT:I = 0xa

.field public static final Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG:Z


# instance fields
.field private final bitmapShaderLruCache$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private boundingRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isEnabledUnionCanvasBoundingRectF:Z

.field private isVisible:Z

.field private renderRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shaderPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shaderRenderLocalMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shaderTempLocalMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transformMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    sget-object p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper$bitmapShaderLruCache$2;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper$bitmapShaderLruCache$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->bitmapShaderLruCache$delegate:Lkotlin/Lazy;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->boundingRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->transformMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->renderRectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderRenderLocalMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private final getBitmapShaderLruCache()Landroid/util/LruCache;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Shader;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->bitmapShaderLruCache$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LruCache;

    return-object p0
.end method

.method private final loadShaderBitmap(F)Landroid/graphics/Shader;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    const-string v1, "geo shader bitmap create fail"

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->logW(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Feature;->getDisplayFillColor()I

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v8, v6

    div-float/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getLayoutType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->getBitmapShaderLruCache()Landroid/util/LruCache;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Shader;

    if-nez v9, :cond_3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v9, "createBitmap(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", deltaScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", scaleFactor = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", color = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scaleRect = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bitmapBoundingRectF = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->logD(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    :cond_2
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v11, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    new-instance v1, Lcom/onyx/android/sdk/genericshape/DrawContext;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6c

    const/16 v18, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V

    new-instance v9, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v9, v6, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-direct/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->getBitmapShaderLruCache()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-object v9
.end method

.method private final logD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final logW(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->getBitmapShaderLruCache()Landroid/util/LruCache;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final drawVirtualPage(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageCanvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->updateViewportAndBoundingRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawVirtualPageClipRectF(Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipRectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->updateViewportAndBoundingRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->transformMatrix:Landroid/graphics/Matrix;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getBoundingRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->boundingRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEnabledUnionCanvasBoundingRectF()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabledUnionCanvasBoundingRectF:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isVisible:Z

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isVisible:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderRenderLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderRenderLocalMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderRenderLocalMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderRenderLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->transformMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->renderRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->boundingRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-boolean v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabledUnionCanvasBoundingRectF:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->renderRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->union(FFFF)V

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->renderRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderTempLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    return-void
.end method

.method public final setBoundingRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->boundingRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public final setEnabledUnionCanvasBoundingRectF(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabledUnionCanvasBoundingRectF:Z

    return-void
.end method

.method public final setGeoLayout(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isVisible:Z

    return-void
.end method

.method public final updateViewportAndBoundingRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundingRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->shaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->loadShaderBitmap(F)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->boundingRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->isVisible:Z

    return-void
.end method
