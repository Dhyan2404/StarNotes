.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;,
        Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0001.B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J*\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J \u0010\u001b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\"\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\u001d\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u001e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 H\u0016J \u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020 2\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020\u0012H\u0002J\u0008\u0010(\u001a\u00020\u000cH\u0016J\u0018\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0016J\u0010\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u0010H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;",
        "Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;",
        "geoLayout",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V",
        "dstPath",
        "Landroid/graphics/Path;",
        "originPathData",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;",
        "shaderManager",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;",
        "drawCircle",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "Landroid/graphics/Paint;",
        "radius",
        "",
        "pts",
        "",
        "drawDotted",
        "matrix",
        "Landroid/graphics/Matrix;",
        "adaptiveSpacing",
        "",
        "useShader",
        "drawDottedWithPath",
        "drawDottedWithShader",
        "drawLine",
        "drawRect",
        "rectF",
        "Landroid/graphics/RectF;",
        "generateDottedPath",
        "visibleRect",
        "spacing",
        "generateDottedRowPath",
        "startX",
        "stopX",
        "adaptiveSpace",
        "recycle",
        "spaceAdaptive",
        "space",
        "total",
        "strokeColorAdaptive",
        "strokePaint",
        "PathCacheData",
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


# instance fields
.field private final dstPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final originPathData:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shaderManager:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "geoLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    new-instance p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;

    invoke-direct {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->originPathData:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->dstPath:Landroid/graphics/Path;

    new-instance p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->shaderManager:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;

    return-void
.end method

.method public static final synthetic access$generateDottedRowPath(Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;Landroid/graphics/RectF;FFF)Landroid/graphics/Path;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->generateDottedRowPath(Landroid/graphics/RectF;FFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private final drawDottedWithShader(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getStrokeAttr()Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v7, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v7, v6}, Lcom/onyx/android/sdk/genericshape/Feature;->loadStrokeColor(Lcom/onyx/android/sdk/genericshape/StrokeAttr;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_2

    iget v5, v5, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_3

    iget v7, v7, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_3
    move v7, v6

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_4

    iget v8, v8, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_5
    move v9, v6

    :goto_3
    iget v10, v3, Landroid/graphics/RectF;->left:F

    iget v11, v3, Landroid/graphics/RectF;->top:F

    if-eqz p3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v12

    sub-float/2addr v12, v5

    sub-float/2addr v12, v7

    invoke-virtual {p0, v4, v12}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->spaceAdaptive(FF)F

    move-result v4

    :cond_6
    const/4 v12, 0x2

    if-eqz p3, :cond_7

    :goto_4
    move v13, v6

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v13

    sub-float/2addr v13, v5

    sub-float/2addr v13, v7

    rem-float/2addr v13, v4

    int-to-float v14, v12

    div-float/2addr v13, v14

    :goto_5
    add-float/2addr v5, v13

    add-float/2addr v10, v5

    iget v5, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v7

    sub-float/2addr v5, v13

    const/4 v7, 0x1

    int-to-float v13, v7

    add-float/2addr v5, v13

    if-eqz p3, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v6, v8

    sub-float/2addr v6, v9

    rem-float/2addr v6, v4

    int-to-float v14, v12

    div-float/2addr v6, v14

    :goto_6
    add-float/2addr v8, v6

    add-float/2addr v11, v8

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v9

    sub-float/2addr v3, v6

    add-float/2addr v3, v13

    iget-object v6, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->shaderManager:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;

    iget-object v8, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v9

    invoke-virtual {v6, v8, v9, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->getGeoLayoutShader(Lcom/onyx/android/sdk/genericshape/GeoLayout;FF)Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    move-result-object v6

    new-instance v8, Landroid/graphics/Matrix;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->getShaderMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v9, v13, v14, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstColumn()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v5, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v3, v5, :cond_c

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v5, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_BOTTOM:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v3, v5, :cond_b

    goto :goto_7

    :cond_b
    iget v3, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    iput v3, v9, Landroid/graphics/RectF;->right:F

    goto :goto_8

    :cond_c
    :goto_7
    iget v3, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    iput v3, v9, Landroid/graphics/RectF;->left:F

    :cond_d
    :goto_8
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstRow()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v5, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v3, v5, :cond_f

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v5, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->RIGHT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v3, v5, :cond_e

    goto :goto_9

    :cond_e
    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    iput v3, v9, Landroid/graphics/RectF;->bottom:F

    goto :goto_a

    :cond_f
    :goto_9
    iget v3, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iput v3, v9, Landroid/graphics/RectF;->top:F

    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    invoke-virtual {v1, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_11
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v7, :cond_15

    if-eq v3, v12, :cond_14

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    const/4 v4, 0x4

    if-eq v3, v4, :cond_12

    goto :goto_b

    :cond_12
    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b

    :cond_13
    iget v3, v9, Landroid/graphics/RectF;->left:F

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b

    :cond_14
    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget v4, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_b

    :cond_15
    iget v3, v9, Landroid/graphics/RectF;->left:F

    iget v4, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_b
    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->shaderManager:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->getShaderPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getRadius()F

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v1

    mul-float/2addr v2, v1

    invoke-static {v9, v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->shaderManager:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;->getShaderPaint()Landroid/graphics/Paint;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final generateDottedPath(Landroid/graphics/RectF;FZ)Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v7, v7, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_3

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_3
    move v8, v5

    :goto_3
    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    if-eqz p3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v11

    sub-float/2addr v11, v4

    sub-float/2addr v11, v6

    move/from16 v12, p2

    invoke-virtual {v0, v12, v11}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->spaceAdaptive(FF)F

    move-result v11

    move v12, v11

    goto :goto_4

    :cond_4
    move/from16 v12, p2

    :goto_4
    const/4 v11, 0x2

    if-eqz p3, :cond_5

    :goto_5
    move v13, v5

    goto :goto_6

    :cond_5
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v13

    sub-float/2addr v13, v4

    sub-float/2addr v13, v6

    rem-float/2addr v13, v12

    int-to-float v14, v11

    div-float/2addr v13, v14

    :goto_6
    add-float/2addr v4, v13

    add-float/2addr v9, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    sub-float/2addr v4, v13

    const/4 v6, 0x1

    int-to-float v13, v6

    add-float/2addr v4, v13

    if-eqz p3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v5, v7

    sub-float/2addr v5, v8

    rem-float/2addr v5, v12

    int-to-float v14, v11

    div-float/2addr v5, v14

    :goto_7
    add-float/2addr v7, v5

    add-float/2addr v10, v7

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    sub-float/2addr v7, v5

    add-float/2addr v7, v13

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstColumn()Z

    move-result v5

    if-eqz v5, :cond_9

    add-float v5, v9, v12

    goto :goto_8

    :cond_9
    move v5, v9

    :goto_8
    iget-object v8, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v8, v1, v12}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetX(Landroid/graphics/RectF;F)F

    move-result v8

    add-float/2addr v5, v8

    :goto_9
    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v14

    if-gt v8, v14, :cond_10

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstRow()Z

    move-result v8

    if-eqz v8, :cond_a

    add-float v8, v10, v12

    goto :goto_a

    :cond_a
    move v8, v10

    :goto_a
    iget-object v14, v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v14, v1, v12}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetY(Landroid/graphics/RectF;F)F

    move-result v14

    add-float/2addr v8, v14

    :goto_b
    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v14

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    if-gt v14, v15, :cond_f

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    sget-object v15, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v14, v15, :cond_c

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    sget-object v6, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_BOTTOM:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v14, v6, :cond_b

    goto :goto_c

    :cond_b
    add-float v6, v4, v9

    sub-float/2addr v6, v5

    sub-float/2addr v6, v13

    goto :goto_d

    :cond_c
    :goto_c
    move v6, v5

    :goto_d
    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    if-eq v14, v15, :cond_e

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v14

    sget-object v15, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->RIGHT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v14, v15, :cond_d

    goto :goto_e

    :cond_d
    add-float v14, v7, v10

    sub-float/2addr v14, v8

    sub-float/2addr v14, v13

    goto :goto_f

    :cond_e
    :goto_e
    move v14, v8

    :goto_f
    new-array v15, v11, [F

    const/16 v16, 0x0

    aput v6, v15, v16

    const/4 v6, 0x1

    aput v14, v15, v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getRadius()F

    move-result v14

    aget v11, v15, v16

    aget v15, v15, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v11, v15, v14, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    add-float/2addr v8, v12

    const/4 v6, 0x1

    const/4 v11, 0x2

    goto :goto_b

    :cond_f
    add-float/2addr v5, v12

    const/4 v6, 0x1

    const/4 v11, 0x2

    goto :goto_9

    :cond_10
    return-object v3
.end method

.method private final generateDottedRowPath(Landroid/graphics/RectF;FFF)Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstColumn()Z

    move-result v1

    if-eqz v1, :cond_0

    add-float v1, p2, p4

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {p0, p1, p4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetX(Landroid/graphics/RectF;F)F

    move-result p0

    add-float/2addr v1, p0

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    :goto_1
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-static {p3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    if-gt p1, v2, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    const/4 v3, 0x1

    if-eq p1, v2, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_BOTTOM:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne p1, v2, :cond_1

    goto :goto_2

    :cond_1
    add-float p1, p3, p2

    sub-float/2addr p1, v1

    int-to-float v2, v3

    sub-float/2addr p1, v2

    goto :goto_3

    :cond_2
    :goto_2
    move p1, v1

    :goto_3
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput p1, v2, v4

    const/4 p1, 0x0

    aput p1, v2, v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getRadius()F

    move-result p1

    aget v4, v2, v4

    aget v2, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v4, v2, p1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    add-float/2addr v1, p4

    goto :goto_1

    :cond_3
    return-object p0
.end method


# virtual methods
.method public drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;F[F)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pts"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    aget p0, p4, p0

    const/4 v0, 0x1

    aget p4, p4, v0

    invoke-virtual {p1, p0, p4, p3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawDotted(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ZZ)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->drawDottedWithShader(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->drawDottedWithPath(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    :goto_0
    return-void
.end method

.method public final drawDottedWithPath(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
    .locals 17
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "canvas"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v0, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v0

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getStrokeAttr()Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/genericshape/Feature;->loadStrokeColor(Lcom/onyx/android/sdk/genericshape/StrokeAttr;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    new-instance v5, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v13, v10, Landroid/graphics/RectF;->left:F

    iput v13, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v13, v10, Landroid/graphics/RectF;->top:F

    if-eqz p3, :cond_6

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v14

    sub-float/2addr v14, v1

    sub-float/2addr v14, v2

    invoke-virtual {v6, v0, v14}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->spaceAdaptive(FF)F

    move-result v0

    :cond_6
    move v14, v0

    const/4 v0, 0x2

    if-eqz p3, :cond_7

    :goto_4
    const/4 v15, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v15

    sub-float/2addr v15, v1

    sub-float/2addr v15, v2

    rem-float/2addr v15, v14

    int-to-float v12, v0

    div-float/2addr v15, v12

    :goto_5
    iget v12, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float/2addr v1, v15

    add-float/2addr v12, v1

    iput v12, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v15

    const/4 v2, 0x1

    int-to-float v12, v2

    add-float v15, v1, v12

    if-eqz p3, :cond_9

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    sub-float/2addr v1, v4

    rem-float/2addr v1, v14

    int-to-float v0, v0

    div-float/2addr v1, v0

    :goto_7
    add-float/2addr v3, v1

    add-float/2addr v13, v3

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    sub-float/2addr v0, v1

    add-float v16, v0, v12

    iget-object v4, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->originPathData:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;

    new-instance v3, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v7, v3

    move-object v3, v5

    move-object v5, v4

    move v4, v15

    move-object v15, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$drawDottedWithPath$2;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;Landroid/graphics/RectF;Lkotlin/jvm/internal/Ref$FloatRef;FF)V

    invoke-virtual {v15, v9, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->updatePathDataIf(Lcom/onyx/android/sdk/genericshape/Properties;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->originPathData:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->getCachePath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstRow()Z

    move-result v1

    if-eqz v1, :cond_b

    add-float v1, v13, v14

    goto :goto_8

    :cond_b
    move v1, v13

    :goto_8
    iget-object v2, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->geoLayout:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {v2, v10, v14}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetY(Landroid/graphics/RectF;F)F

    move-result v2

    add-float/2addr v1, v2

    :goto_9
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-static/range {v16 .. v16}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    if-gt v2, v3, :cond_f

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v2, v3, :cond_d

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->RIGHT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v2, v3, :cond_c

    goto :goto_a

    :cond_c
    add-float v2, v16, v13

    sub-float/2addr v2, v1

    sub-float/2addr v2, v12

    goto :goto_b

    :cond_d
    :goto_a
    move v2, v1

    :goto_b
    iget-object v3, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->dstPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->dstPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    if-eqz v8, :cond_e

    iget-object v2, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->dstPath:Landroid/graphics/Path;

    invoke-virtual {v2, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_e
    iget-object v2, v6, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->dstPath:Landroid/graphics/Path;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-float/2addr v1, v14

    goto :goto_9

    :cond_f
    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pts"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    aget v1, p3, p0

    const/4 p0, 0x1

    aget v2, p3, p0

    const/4 p0, 0x2

    aget v3, p3, p0

    const/4 p0, 0x3

    aget v4, p3, p0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rectF"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->originPathData:Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;->reset()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;->dstPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public spaceAdaptive(FF)F
    .locals 0

    div-float p0, p2, p1

    float-to-int p0, p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    rem-float/2addr p2, p1

    int-to-float p0, p0

    div-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method public strokeColorAdaptive(Landroid/graphics/Paint;)V
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "strokePaint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
