.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$Companion;,
        Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0002J\u001e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;",
        "",
        "()V",
        "shaderCache",
        "Landroid/util/LruCache;",
        "",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;",
        "shaderPaint",
        "Landroid/graphics/Paint;",
        "getShaderPaint",
        "()Landroid/graphics/Paint;",
        "generateGeoLayoutKey",
        "geoLayout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "drawScale",
        "",
        "generateGeoLayoutShader",
        "scale",
        "space",
        "getGeoLayoutShader",
        "Companion",
        "GeoLayoutShader",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHADER_CACHE_COUNT:I = 0x4


# instance fields
.field private final shaderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shaderPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->shaderCache:Landroid/util/LruCache;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->shaderPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private final generateGeoLayoutKey(Lcom/onyx/android/sdk/genericshape/GeoLayout;F)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getDisplayFillColor()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getLayoutType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final generateGeoLayoutShader(Lcom/onyx/android/sdk/genericshape/GeoLayout;FF)Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/Properties;->getRadius()F

    move-result v4

    new-instance v5, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-direct {v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;-><init>()V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/Properties;->getLayoutType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/genericshape/Properties;->setLayoutType(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/Properties;->getStrokeAttr()Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->copy()Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/genericshape/Properties;->setStrokeAttr(Lcom/onyx/android/sdk/genericshape/StrokeAttr;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/genericshape/Properties;->setForceFullFit(Z)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/genericshape/Properties;->setRadius(F)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    new-instance v6, Lcom/onyx/android/sdk/genericshape/PageMargins;

    invoke-direct {v6}, Lcom/onyx/android/sdk/genericshape/PageMargins;-><init>()V

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setSpacing(F)V

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/genericshape/Properties;->setPageMargins(Lcom/onyx/android/sdk/genericshape/PageMargins;)V

    new-instance v1, Landroid/graphics/RectF;

    sget-object v4, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-direct {v1, v3, v3, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapOrNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/Feature;->getDisplayFillColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/onyx/android/sdk/genericshape/DrawContext;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x64

    const/4 v15, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v15}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    invoke-direct {v0, v3, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Matrix;)V

    return-object v0
.end method


# virtual methods
.method public final getGeoLayoutShader(Lcom/onyx/android/sdk/genericshape/GeoLayout;FF)Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "geoLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->generateGeoLayoutKey(Lcom/onyx/android/sdk/genericshape/GeoLayout;F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->shaderCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->generateGeoLayoutShader(Lcom/onyx/android/sdk/genericshape/GeoLayout;FF)Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->shaderCache:Landroid/util/LruCache;

    invoke-virtual {p0, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final getShaderPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->shaderPaint:Landroid/graphics/Paint;

    return-object p0
.end method
