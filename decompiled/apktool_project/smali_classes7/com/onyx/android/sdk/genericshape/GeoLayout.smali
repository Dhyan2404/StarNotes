.class public final Lcom/onyx/android/sdk/genericshape/GeoLayout;
.super Lcom/onyx/android/sdk/genericshape/Feature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;,
        Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;,
        Lcom/onyx/android/sdk/genericshape/GeoLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,708:1\n1#2:709\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 ]2\u00020\u0001:\u0002\\]B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J,\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J,\u0010!\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\"\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J.\u0010#\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J(\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0002J\u0018\u0010.\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0008\u0010$\u001a\u0004\u0018\u00010%J*\u0010/\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000201H\u0002J0\u00103\u001a\u0002012\u0006\u0010\'\u001a\u00020(2\u0006\u00104\u001a\u00020\u000f2\u0006\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u00020+2\u0006\u00107\u001a\u00020+H\u0002J\"\u00108\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u000201H\u0002J\"\u00109\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u000201H\u0002J\u0018\u0010:\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0002J \u0010=\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-H\u0002J \u0010>\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010?\u001a\u00020\u001fH\u0002J\u0018\u0010@\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0002J\u0018\u0010A\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020<H\u0002J*\u0010B\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020\u00132\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002J\"\u0010D\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020(2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u00100\u001a\u000201H\u0002J\u0016\u0010E\u001a\u00020+2\u0006\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020+J\u0016\u0010H\u001a\u00020+2\u0006\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020+J\n\u0010I\u001a\u0004\u0018\u00010JH\u0002J\u000f\u0010K\u001a\u0004\u0018\u00010\u0011H\u0007\u00a2\u0006\u0002\u0010LJ\u0006\u0010M\u001a\u00020+J\u0008\u0010N\u001a\u000201H\u0002J \u0010O\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020\u00112\u0006\u0010R\u001a\u00020\u0011H\u0002J\u0006\u0010S\u001a\u00020\u0015J\u0018\u0010T\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010U\u001a\u00020\u000fH\u0002J\u0018\u0010V\u001a\u00020+2\u0006\u0010W\u001a\u00020+2\u0006\u0010X\u001a\u00020+H\u0002J\u0010\u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u0017H\u0002J\u0010\u0010[\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020\u0017H\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00110\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00130\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "()V",
        "bitmapCache",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;",
        "geoLayoutDrawer",
        "Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;",
        "getGeoLayoutDrawer",
        "()Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;",
        "setGeoLayoutDrawer",
        "(Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;)V",
        "imageSizeManager",
        "Lcom/onyx/android/sdk/base/utils/ImageSizeManager;",
        "resFileNameMap",
        "",
        "",
        "resIdMap",
        "",
        "svgMap",
        "Lcom/caverock/androidsvg/SVG;",
        "clearMargins",
        "",
        "colorFilterPaint",
        "Landroid/graphics/Paint;",
        "draw",
        "drawContext",
        "Lcom/onyx/android/sdk/genericshape/DrawContext;",
        "drawAssetPicture",
        "Landroid/graphics/Bitmap;",
        "fileName",
        "originRectF",
        "Landroid/graphics/RectF;",
        "viewport",
        "drawAssetResource",
        "resName",
        "drawAssetSvg",
        "matrix",
        "Landroid/graphics/Matrix;",
        "drawCircle",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "radius",
        "",
        "pts",
        "",
        "drawDivider",
        "drawDotted",
        "adaptiveSpacing",
        "",
        "useShader",
        "drawGlideImage",
        "imagePath",
        "displayRect",
        "scale",
        "rotation",
        "drawGrid",
        "drawHorizontalLine",
        "drawImage",
        "pageMargins",
        "Lcom/onyx/android/sdk/genericshape/PageMargins;",
        "drawLine",
        "drawRect",
        "rectF",
        "drawResVector",
        "drawSvg",
        "drawSvgBitmap",
        "svg",
        "drawVerticalLine",
        "getAlignOffsetX",
        "visibleRect",
        "adaptiveSpace",
        "getAlignOffsetY",
        "getAlignPoint",
        "Landroid/graphics/PointF;",
        "getFillColor",
        "()Ljava/lang/Integer;",
        "getSpacing",
        "isLowScreenDpiXDevice",
        "loadBitmapByGlide",
        "filePath",
        "width",
        "height",
        "recycle",
        "resAbsolutePath",
        "resRelativePath",
        "spaceAdaptive",
        "space",
        "total",
        "strokeColorAdaptive",
        "strokePaint",
        "strokeWidthAdaptive",
        "BitmapCacheData",
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
        "SMAP\nGeoLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayout.kt\ncom/onyx/android/sdk/genericshape/GeoLayout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,708:1\n1#2:709\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HDPI_DIP_X:F = 240.0f

.field public static final STROKE_MIN_WIDTH:F = 1.0f


# instance fields
.field private transient bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imageSizeManager:Lcom/onyx/android/sdk/base/utils/ImageSizeManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resFileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private svgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayout$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/Feature;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    const-string v1, "Layout"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/Properties;->setSubType(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    new-instance v0, Lcom/onyx/android/sdk/base/utils/ImageSizeManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/ImageSizeManager;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->imageSizeManager:Lcom/onyx/android/sdk/base/utils/ImageSizeManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->svgMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->resFileNameMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->resIdMap:Ljava/util/Map;

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawResVector$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawAssetResource$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final colorFilterPaint()Landroid/graphics/Paint;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/data/ColorTransformMode;->INSTANCE:Lcom/onyx/android/sdk/base/data/ColorTransformMode;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getStrokeAttr()Lcom/onyx/android/sdk/genericshape/StrokeAttr;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/StrokeAttr;->getColorTransformMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/ColorTransformMode;->loadColorFilter(Ljava/lang/Integer;)Landroid/graphics/ColorFilter;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method private final drawAssetPicture(Ljava/lang/String;Lcom/onyx/android/sdk/genericshape/DrawContext;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    sget-object v2, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/UriUtils;->assetFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v3

    :cond_3
    new-instance v10, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v2, 0x3

    invoke-direct {v10, v1, v1, v2, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1, v0, v10}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeAssetResBitmapSize(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    invoke-static/range {p3 .. p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v0

    neg-float v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v11, v7

    invoke-static/range {v11 .. v16}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotated$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v9

    move-object v4, v1

    move-object v6, v0

    invoke-direct/range {v4 .. v10}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;)V

    new-instance v2, Lcom/onyx/android/sdk/base/utils/AssetImageRender;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/utils/AssetImageRender;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ImageRender;->drawImage(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z

    return-object v0
.end method

.method private final drawAssetResource(Ljava/lang/String;Lcom/onyx/android/sdk/genericshape/DrawContext;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->resFileNameMap:Ljava/util/Map;

    new-instance v2, Lcom/onyx/android/sdk/genericshape/GeoLayout$drawAssetResource$fileName$1;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout$drawAssetResource$fileName$1;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/sunia/HTREnginev2/q1h;

    invoke-direct {v3, v2}, Lcom/sunia/HTREnginev2/q1h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "computeIfAbsent(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isSvgFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSizeF(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result p2

    invoke-virtual {v1, v2, v0, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Lcom/onyx/android/sdk/base/data/SizeF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawAssetSvg(Ljava/lang/String;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawAssetPicture(Ljava/lang/String;Lcom/onyx/android/sdk/genericshape/DrawContext;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static final drawAssetResource$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final drawAssetSvg(Ljava/lang/String;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "getAssets(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/base/utils/UriUtils;->assetFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->svgMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG;

    if-nez v3, :cond_4

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->svgMap:Ljava/util/Map;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawSvgBitmap(Lcom/caverock/androidsvg/SVG;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;F[F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;F[F)V

    return-void
.end method

.method private final drawDotted(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;->drawDotted(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ZZ)V

    return-void
.end method

.method private final drawGlideImage(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/RectF;FF)Z
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p4, v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    float-to-int v5, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v5

    :goto_0
    if-gez v2, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int p4, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p4

    :goto_1
    :try_start_0
    invoke-direct {p0, p2, v5, p4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->loadBitmapByGlide(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p2, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p2, p0, p3, p5}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Landroid/graphics/Bitmap;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p0, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return v4

    :catch_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error in drawGlideImage: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p4, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private final drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v5, v5, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v7, v7, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_3

    iget v8, v8, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_4

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    move v9, v6

    :goto_3
    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    iget v11, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/RectF;->left:F

    iget v5, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v7

    iput v5, v10, Landroid/graphics/RectF;->right:F

    iget v5, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v8

    iput v5, v10, Landroid/graphics/RectF;->top:F

    iget v5, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v9

    iput v5, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/genericshape/Feature;->loadStrokePaint(Landroid/graphics/Matrix;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeWidthAdaptive(Landroid/graphics/Paint;)V

    invoke-direct {v0, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeColorAdaptive(Landroid/graphics/Paint;)V

    if-eqz p3, :cond_5

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-direct {v0, v4, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->spaceAdaptive(FF)F

    move-result v4

    :cond_5
    const/4 v7, 0x2

    if-eqz p3, :cond_6

    :goto_4
    move v8, v6

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v8

    rem-float/2addr v8, v4

    int-to-float v9, v7

    div-float/2addr v8, v9

    :goto_5
    iget v9, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v8

    iget v11, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v8

    const/4 v8, 0x1

    int-to-float v12, v8

    add-float/2addr v11, v12

    if-eqz p3, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v13

    invoke-virtual {v13}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v6

    rem-float/2addr v6, v4

    int-to-float v13, v7

    div-float/2addr v6, v13

    :goto_6
    iget v13, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v6

    if-eqz p3, :cond_a

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_a

    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v6

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v6

    rem-float/2addr v6, v4

    sub-float/2addr v14, v6

    goto :goto_7

    :cond_a
    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float v14, v10, v6

    :goto_7
    add-float/2addr v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstColumn()Z

    move-result v6

    if-eqz v6, :cond_b

    add-float v6, v9, v4

    goto :goto_8

    :cond_b
    move v6, v9

    :goto_8
    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetX(Landroid/graphics/RectF;F)F

    move-result v10

    add-float/2addr v6, v10

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v10

    invoke-virtual {v10}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstRow()Z

    move-result v10

    if-eqz v10, :cond_c

    add-float v10, v13, v4

    goto :goto_9

    :cond_c
    move v10, v13

    :goto_9
    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetY(Landroid/graphics/RectF;F)F

    move-result v3

    add-float/2addr v10, v3

    :goto_a
    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v11}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v7, 0x4

    if-gt v3, v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v15, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v3, v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v15, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_BOTTOM:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v3, v15, :cond_d

    goto :goto_b

    :cond_d
    add-float v3, v11, v9

    sub-float/2addr v3, v6

    sub-float/2addr v3, v12

    goto :goto_c

    :cond_e
    :goto_b
    move v3, v6

    :goto_c
    new-array v7, v7, [F

    aput v3, v7, v17

    aput v13, v7, v8

    const/4 v15, 0x2

    aput v3, v7, v15

    sub-float v3, v14, v12

    aput v3, v7, v16

    if-eqz v2, :cond_f

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_f
    invoke-direct {v0, v1, v5, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V

    add-float/2addr v6, v4

    const/4 v7, 0x2

    goto :goto_a

    :cond_10
    :goto_d
    invoke-static {v10}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-static {v14}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    if-gt v3, v6, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v6, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v3, v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v3

    sget-object v6, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->RIGHT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v3, v6, :cond_11

    goto :goto_e

    :cond_11
    add-float v3, v14, v13

    sub-float/2addr v3, v10

    sub-float/2addr v3, v12

    goto :goto_f

    :cond_12
    :goto_e
    move v3, v10

    :goto_f
    new-array v6, v7, [F

    aput v9, v6, v17

    aput v3, v6, v8

    sub-float v15, v11, v12

    const/16 v18, 0x2

    aput v15, v6, v18

    aput v3, v6, v16

    if-eqz v2, :cond_13

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_13
    invoke-direct {v0, v1, v5, v6}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V

    add-float/2addr v10, v4

    goto :goto_d

    :cond_14
    return-void
.end method

.method private final drawHorizontalLine(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v5, v5, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/Feature;->loadStrokePaint(Landroid/graphics/Matrix;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeWidthAdaptive(Landroid/graphics/Paint;)V

    invoke-direct {p0, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeColorAdaptive(Landroid/graphics/Paint;)V

    iget v8, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    if-eqz p3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v5

    sub-float/2addr v4, v6

    invoke-direct {p0, v1, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->spaceAdaptive(FF)F

    move-result v1

    :cond_5
    const/4 v4, 0x2

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p3

    sub-float/2addr p3, v5

    sub-float/2addr p3, v6

    rem-float/2addr p3, v1

    int-to-float v3, v4

    div-float v3, p3, v3

    :goto_4
    iget p3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, v3

    add-float/2addr p3, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    sub-float/2addr v5, v6

    const/4 v3, 0x1

    int-to-float v6, v3

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstRow()Z

    move-result v9

    if-eqz v9, :cond_8

    add-float v9, p3, v1

    goto :goto_5

    :cond_8
    move v9, p3

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetY(Landroid/graphics/RectF;F)F

    move-result v0

    add-float/2addr v9, v0

    :goto_6
    invoke-static {v9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v10

    if-gt v0, v10, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v0

    sget-object v10, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v0, v10, :cond_a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v0

    sget-object v10, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->RIGHT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v0, v10, :cond_9

    goto :goto_7

    :cond_9
    add-float v0, v5, p3

    sub-float/2addr v0, v9

    sub-float/2addr v0, v6

    goto :goto_8

    :cond_a
    :goto_7
    move v0, v9

    :goto_8
    const/4 v10, 0x4

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v8, v10, v11

    aput v0, v10, v3

    aput v2, v10, v4

    const/4 v11, 0x3

    aput v0, v10, v11

    if-eqz p2, :cond_b

    invoke-virtual {p2, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_b
    invoke-direct {p0, p1, v7, v10}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V

    add-float/2addr v9, v1

    goto :goto_6

    :cond_c
    return-void
.end method

.method private final drawImage(Lcom/onyx/android/sdk/genericshape/DrawContext;Lcom/onyx/android/sdk/genericshape/PageMargins;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/Properties;->getImageAttr()Lcom/onyx/android/sdk/genericshape/ImageAttr;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/ImageAttr;->getRelativePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    move-object/from16 v5, p1

    invoke-direct {v0, v5, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->resAbsolutePath(Lcom/onyx/android/sdk/genericshape/DrawContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->imageSizeManager:Lcom/onyx/android/sdk/base/utils/ImageSizeManager;

    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/base/utils/ImageSizeManager;->loadImageSize(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/onyx/android/sdk/base/data/Size;->toRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v11

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->boundingRectF(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    neg-float v14, v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v13, v3

    invoke-static/range {v13 .. v18}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->rotated$default(Landroid/graphics/RectF;FFFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v10, v9, v4

    const-string v4, ".bmp"

    const/4 v9, 0x1

    invoke-static {v7, v4, v9}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object v2, v7

    move v4, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawGlideImage(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/RectF;FF)Z

    return-void

    :cond_5
    iget-object v4, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v4, v2, v8}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->isBitmapValid(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->isDisplayChanged(Landroid/graphics/RectF;F)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "createBitmap(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;

    move-object v6, v4

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v6 .. v12}, Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;)V

    new-instance v6, Lcom/onyx/android/sdk/base/utils/ImageRender;

    invoke-direct {v6}, Lcom/onyx/android/sdk/base/utils/ImageRender;-><init>()V

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/base/utils/ImageRender;->drawImage(Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;)Z

    iget-object v4, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setDisplayRectF(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setRotation(F)V

    :cond_8
    iget-object v0, v0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    invoke-interface {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V

    return-void
.end method

.method private final drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    invoke-interface {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    return-void
.end method

.method private final drawResVector(Lcom/onyx/android/sdk/genericshape/DrawContext;Lcom/onyx/android/sdk/genericshape/PageMargins;)V
    .locals 11

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/Properties;->getResourceAttr()Lcom/onyx/android/sdk/genericshape/ResourceAttr;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getIgnoreCanvasSize()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->boundingRectF(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object p2

    :goto_0
    move-object v8, p2

    invoke-static {v7}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_3
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v5, v3, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->isBitmapValid(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->isDisplayChanged(Landroid/graphics/RectF;F)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->resIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/ResourceAttr;->getResName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, ""

    :cond_6
    new-instance v5, Lcom/onyx/android/sdk/genericshape/GeoLayout$drawResVector$resId$1;

    invoke-direct {v5, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout$drawResVector$resId$1;-><init>(Lcom/onyx/android/sdk/genericshape/ResourceAttr;)V

    new-instance v6, Lcom/sunia/HTREnginev2/r1h;

    invoke-direct {v6, v5}, Lcom/sunia/HTREnginev2/r1h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "computeIfAbsent(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setRotation(F)V

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    if-gtz v6, :cond_7

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/ResourceAttr;->getResName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, v7, v8}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawAssetResource(Ljava/lang/String;Lcom/onyx/android/sdk/genericshape/DrawContext;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSizeF(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object p1

    invoke-virtual {v4, p1, p2, v2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Lcom/onyx/android/sdk/base/data/SizeF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object v9

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->getBitmapFromVectorDrawableBySize(Landroid/content/Context;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    :goto_1
    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setDisplayRectF(Landroid/graphics/RectF;)V

    :cond_9
    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->colorFilterPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static final drawResVector$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private final drawSvg(Lcom/onyx/android/sdk/genericshape/DrawContext;Lcom/onyx/android/sdk/genericshape/PageMargins;)V
    .locals 8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/Properties;->getImageAttr()Lcom/onyx/android/sdk/genericshape/ImageAttr;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/ImageAttr;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->resAbsolutePath(Lcom/onyx/android/sdk/genericshape/DrawContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getIgnoreCanvasSize()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->boundingRectF(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object p2

    :goto_0
    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v7, v2, v6}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->isBitmapValid(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->isDisplayChanged(Landroid/graphics/RectF;F)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->recycle(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->svgMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG;

    if-nez v2, :cond_6

    sget-object v2, Lcom/onyx/android/sdk/data/utils/SvgUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SvgUtil;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->decodeSvg(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    iget-object v6, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->svgMap:Ljava/util/Map;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/RectKt;->toSizeF(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/SizeF;

    move-result-object v6

    invoke-virtual {v1, v6, v5, v3}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->calculateRotationMatrix(Lcom/onyx/android/sdk/base/data/SizeF;Landroid/graphics/RectF;F)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getRotation()F

    move-result p1

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setRotation(F)V

    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-direct {p0, v2, v1, v4, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawSvgBitmap(Lcom/caverock/androidsvg/SVG;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-static {v5}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->setDisplayRectF(Landroid/graphics/RectF;)V

    :cond_7
    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->colorFilterPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawSvgBitmap(Lcom/caverock/androidsvg/SVG;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    float-to-int p4, p4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p4, "createBitmap(...)"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p4

    invoke-virtual {p1, p4}, Lcom/caverock/androidsvg/SVG;->setDocumentWidth(F)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/caverock/androidsvg/SVG;->setDocumentHeight(F)V

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, p3}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private final drawVerticalLine(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v5, v5, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    move v6, v3

    :goto_3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/Feature;->loadStrokePaint(Landroid/graphics/Matrix;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeWidthAdaptive(Landroid/graphics/Paint;)V

    invoke-direct {p0, v7}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeColorAdaptive(Landroid/graphics/Paint;)V

    iget v8, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v2

    if-eqz p3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    sub-float/2addr v9, v2

    sub-float/2addr v9, v4

    invoke-direct {p0, v1, v9}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->spaceAdaptive(FF)F

    move-result v1

    :cond_5
    const/4 v9, 0x2

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p3

    sub-float/2addr p3, v2

    sub-float/2addr p3, v4

    rem-float/2addr p3, v1

    int-to-float v2, v9

    div-float v3, p3, v2

    :goto_4
    iget p3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p3, v3

    sub-float/2addr p3, v4

    const/4 v2, 0x1

    int-to-float v3, v2

    add-float/2addr p3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Properties;->getIgnoreFirstColumn()Z

    move-result v6

    if-eqz v6, :cond_8

    add-float v6, v8, v1

    goto :goto_5

    :cond_8
    move v6, v8

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignOffsetX(Landroid/graphics/RectF;F)F

    move-result v0

    add-float/2addr v6, v0

    :goto_6
    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {p3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v10

    if-gt v0, v10, :cond_c

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v0

    sget-object v10, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_TOP:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-eq v0, v10, :cond_a

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getDrawOrigin()Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    move-result-object v0

    sget-object v10, Lcom/onyx/android/sdk/genericshape/DrawOrigin;->LEFT_BOTTOM:Lcom/onyx/android/sdk/genericshape/DrawOrigin;

    if-ne v0, v10, :cond_9

    goto :goto_7

    :cond_9
    add-float v0, p3, v8

    sub-float/2addr v0, v6

    sub-float/2addr v0, v3

    goto :goto_8

    :cond_a
    :goto_7
    move v0, v6

    :goto_8
    const/4 v10, 0x4

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v0, v10, v11

    aput v4, v10, v2

    aput v0, v10, v9

    const/4 v0, 0x3

    aput v5, v10, v0

    if-eqz p2, :cond_b

    invoke-virtual {p2, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_b
    invoke-direct {p0, p1, v7, v10}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V

    add-float/2addr v6, v1

    goto :goto_6

    :cond_c
    return-void
.end method

.method private final getAlignPoint()Landroid/graphics/PointF;
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getAlignmentAttr()Lcom/onyx/android/sdk/genericshape/AlignmentAttr;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->getAlignOriginX()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->getAlignOriginY()F

    move-result v1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->getAlignOriginX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->getAlignOriginY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private final isLowScreenDpiXDevice()Z
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenXDpi()F

    move-result p0

    const/high16 v0, 0x43700000    # 240.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final loadBitmapByGlide(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/data/glide/FileKey;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/data/glide/FileKey;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/RequestBuilder;->submit(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final resAbsolutePath(Lcom/onyx/android/sdk/genericshape/DrawContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getResDirs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templatePathByDirList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final spaceAdaptive(FF)F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;->spaceAdaptive(FF)F

    move-result p0

    return p0
.end method

.method private final strokeColorAdaptive(Landroid/graphics/Paint;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;->strokeColorAdaptive(Landroid/graphics/Paint;)V

    return-void
.end method

.method private final strokeWidthAdaptive(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->isLowScreenDpiXDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clearMargins()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->applyPadding(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/genericshape/DrawContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getNeedToFill()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/genericshape/Feature;->loadFillPaint(Landroid/graphics/Matrix;)Landroid/graphics/Paint;

    move-result-object v3

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2
    iget v7, v6, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x0

    cmpg-float v9, v7, v8

    if-nez v9, :cond_3

    move v9, v5

    goto :goto_0

    :cond_3
    move v9, v4

    :goto_0
    if-nez v9, :cond_4

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->left:F

    :cond_4
    iget v7, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v7, v8

    if-nez v8, :cond_5

    move v8, v5

    goto :goto_1

    :cond_5
    move v8, v4

    :goto_1
    if-nez v8, :cond_6

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    :cond_6
    iget v7, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result v7

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    if-eqz v3, :cond_7

    invoke-direct {p0, v0, v3, v6}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getLayoutType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "LayoutVector"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0, p1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawSvg(Lcom/onyx/android/sdk/genericshape/DrawContext;Lcom/onyx/android/sdk/genericshape/PageMargins;)V

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "LayoutDotted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getAllowUseShader()Z

    move-result p1

    invoke-direct {p0, v0, v1, v4, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawDotted(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ZZ)V

    goto/16 :goto_2

    :sswitch_2
    const-string p1, "LayoutFittedVerticalLine"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0, v0, v1, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawVerticalLine(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "LayoutFittedDotted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/DrawContext;->getAllowUseShader()Z

    move-result p1

    invoke-direct {p0, v0, v1, v5, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawDotted(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ZZ)V

    goto/16 :goto_2

    :sswitch_4
    const-string p1, "LayoutFittedHorizontalLine"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_2

    :cond_c
    invoke-direct {p0, v0, v1, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawHorizontalLine(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    goto :goto_2

    :sswitch_5
    const-string v0, "LayoutResVector"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    invoke-direct {p0, p1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawResVector(Lcom/onyx/android/sdk/genericshape/DrawContext;Lcom/onyx/android/sdk/genericshape/PageMargins;)V

    goto :goto_2

    :sswitch_6
    const-string v0, "LayoutImage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    invoke-direct {p0, p1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawImage(Lcom/onyx/android/sdk/genericshape/DrawContext;Lcom/onyx/android/sdk/genericshape/PageMargins;)V

    goto :goto_2

    :sswitch_7
    const-string p1, "LayoutVerticalLine"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_2

    :cond_f
    invoke-direct {p0, v0, v1, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawVerticalLine(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    goto :goto_2

    :sswitch_8
    const-string p1, "LayoutHorizontalLine"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_2

    :cond_10
    invoke-direct {p0, v0, v1, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawHorizontalLine(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    goto :goto_2

    :sswitch_9
    const-string p1, "LayoutDivider"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_2

    :cond_11
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    goto :goto_2

    :sswitch_a
    const-string p1, "LayoutGrid"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_2

    :cond_12
    invoke-direct {p0, v0, v1, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    goto :goto_2

    :sswitch_b
    const-string p1, "LayoutFittedGrid"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_2

    :cond_13
    invoke-direct {p0, v0, v1, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    :cond_14
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b9ae44e -> :sswitch_b
        -0x74d6ce50 -> :sswitch_a
        -0x5e862391 -> :sswitch_9
        -0x313dd7de -> :sswitch_8
        -0x2ae3830c -> :sswitch_7
        -0x25e92fcf -> :sswitch_6
        -0x1863a627 -> :sswitch_5
        -0x1095085c -> :sswitch_4
        -0x5b6906a -> :sswitch_3
        0x195744f6 -> :sswitch_2
        0x605ffe14 -> :sswitch_1
        0x7e82952d -> :sswitch_0
    .end sparse-switch
.end method

.method public final drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "canvas"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getLayoutRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v6, v6, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_3

    iget v7, v7, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getPagePaddingRect()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_4

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    iget v10, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v4

    iput v10, v9, Landroid/graphics/RectF;->left:F

    iget v4, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    iput v4, v9, Landroid/graphics/RectF;->right:F

    iget v4, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    iput v4, v9, Landroid/graphics/RectF;->top:F

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v8

    iput v4, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/genericshape/Feature;->loadStrokePaint(Landroid/graphics/Matrix;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeWidthAdaptive(Landroid/graphics/Paint;)V

    invoke-direct {v0, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->strokeColorAdaptive(Landroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v10

    div-float/2addr v6, v10

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v10

    invoke-virtual {v10}, Lcom/onyx/android/sdk/genericshape/Properties;->getDividerAttr()Lcom/onyx/android/sdk/genericshape/DividerAttr;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/onyx/android/sdk/genericshape/DividerAttr;->getDirection()Lcom/onyx/android/sdk/genericshape/DividerOrientation;

    move-result-object v10

    if-nez v10, :cond_6

    :cond_5
    sget-object v10, Lcom/onyx/android/sdk/genericshape/DividerOrientation;->HORIZONTAL:Lcom/onyx/android/sdk/genericshape/DividerOrientation;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v11

    invoke-virtual {v11}, Lcom/onyx/android/sdk/genericshape/Properties;->getDividerAttr()Lcom/onyx/android/sdk/genericshape/DividerAttr;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lcom/onyx/android/sdk/genericshape/DividerAttr;->getPercent()F

    move-result v11

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v12

    invoke-virtual {v12}, Lcom/onyx/android/sdk/genericshape/Properties;->getDividerAttr()Lcom/onyx/android/sdk/genericshape/DividerAttr;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/onyx/android/sdk/genericshape/DividerAttr;->getOffsetStroke()Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;

    move-result-object v12

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-nez v12, :cond_9

    const/4 v12, -0x1

    goto :goto_6

    :cond_9
    sget-object v13, Lcom/onyx/android/sdk/genericshape/GeoLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v13, v12

    :goto_6
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-eq v12, v14, :cond_a

    if-eq v12, v15, :cond_b

    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    neg-float v6, v6

    :cond_b
    div-float/2addr v6, v13

    :goto_7
    sget-object v12, Lcom/onyx/android/sdk/genericshape/DividerOrientation;->HORIZONTAL:Lcom/onyx/android/sdk/genericshape/DividerOrientation;

    const/4 v13, 0x3

    const/16 v16, 0x0

    const/4 v5, 0x4

    if-ne v10, v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v17, 0x0

    goto :goto_8

    :cond_c
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v7

    rem-float/2addr v3, v7

    int-to-float v7, v15

    div-float/2addr v3, v7

    move/from16 v17, v3

    :goto_8
    iget v3, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v11

    add-float/2addr v3, v7

    new-array v5, v5, [F

    iget v7, v9, Landroid/graphics/RectF;->left:F

    add-float v7, v7, v17

    aput v7, v5, v16

    add-float/2addr v3, v6

    aput v3, v5, v14

    iget v6, v9, Landroid/graphics/RectF;->right:F

    sub-float v6, v6, v17

    aput v6, v5, v15

    aput v3, v5, v13

    if-eqz v2, :cond_d

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_d
    invoke-direct {v0, v1, v4, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V

    goto :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v10

    invoke-virtual {v10}, Lcom/onyx/android/sdk/genericshape/Properties;->getForceFullFit()Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v17, 0x0

    goto :goto_9

    :cond_f
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v3, v7

    sub-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v7

    rem-float/2addr v3, v7

    int-to-float v7, v15

    div-float/2addr v3, v7

    move/from16 v17, v3

    :goto_9
    iget v3, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v11

    add-float/2addr v3, v7

    new-array v5, v5, [F

    add-float/2addr v3, v6

    aput v3, v5, v16

    iget v6, v9, Landroid/graphics/RectF;->top:F

    add-float v6, v6, v17

    aput v6, v5, v14

    aput v3, v5, v15

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v3, v17

    aput v3, v5, v13

    if-eqz v2, :cond_10

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_10
    invoke-direct {v0, v1, v4, v5}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;[F)V

    :goto_a
    return-void
.end method

.method public final getAlignOffsetX(Landroid/graphics/RectF;F)F
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "visibleRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignPoint()Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    rem-float/2addr p0, p2

    const p1, -0x42333333    # -0.1f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_1

    add-float/2addr p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getAlignOffsetY(Landroid/graphics/RectF;F)F
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "visibleRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getAlignPoint()Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p1

    rem-float/2addr p0, p2

    const p1, -0x42333333    # -0.1f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_1

    add-float/2addr p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getFillColor()Ljava/lang/Integer;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getFillAttr()Lcom/onyx/android/sdk/genericshape/FillAttr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getGeoLayoutDrawer()Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    return-object p0
.end method

.method public final getSpacing()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getSpacing()F

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    :cond_0
    return v0
.end method

.method public final recycle()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->bitmapCache:Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayout$BitmapCacheData;->reset()V

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->svgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    invoke-interface {p0}, Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;->recycle()V

    return-void
.end method

.method public final setGeoLayoutDrawer(Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayout;->geoLayoutDrawer:Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;

    return-void
.end method
