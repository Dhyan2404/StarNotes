.class public final Lcom/onyx/android/sdk/genericshape/FeatureCollection;
.super Lcom/onyx/android/sdk/genericshape/Geometry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n13309#2:1559\n13310#2:1561\n13309#2,2:1562\n13309#2,2:1564\n13309#2,2:1566\n13309#2,2:1568\n13309#2,2:1570\n13309#2,2:1572\n13309#2,2:1574\n13309#2,2:1576\n13309#2,2:1578\n12474#2,2:1580\n13309#2,2:1582\n13309#2,2:1584\n1#3:1560\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection\n*L\n1240#1:1559\n1240#1:1561\n1248#1:1562,2\n1255#1:1564,2\n1265#1:1566,2\n1270#1:1568,2\n1277#1:1570,2\n1283#1:1572,2\n1289#1:1574,2\n1295#1:1576,2\n1301#1:1578,2\n1307#1:1580,2\n1311#1:1582,2\n1321#1:1584,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 D2\u00020\u0001:\u0001DB\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0019H\u0016J\u0010\u0010!\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0019H\u0016J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0016J\u001a\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0010\u0010%\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0008\u0010/\u001a\u000200H\u0016J\u0008\u00101\u001a\u00020.H\u0016J\u0006\u00102\u001a\u00020.J\u0008\u00103\u001a\u000204H\u0016J\u000e\u00105\u001a\u0008\u0012\u0004\u0012\u00020706H\u0016J\u0018\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020$2\u0006\u0010:\u001a\u00020$H\u0016J\u000e\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020.J\u0010\u0010=\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u0019H\u0016J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0016J\u0016\u0010B\u001a\u00020\u001f2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020706H\u0016R\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/FeatureCollection;",
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "features",
        "",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "([Lcom/onyx/android/sdk/genericshape/Feature;)V",
        "getFeatures",
        "()[Lcom/onyx/android/sdk/genericshape/Feature;",
        "[Lcom/onyx/android/sdk/genericshape/Feature;",
        "properties",
        "Lcom/onyx/android/sdk/genericshape/Properties;",
        "getProperties",
        "()Lcom/onyx/android/sdk/genericshape/Properties;",
        "setProperties",
        "(Lcom/onyx/android/sdk/genericshape/Properties;)V",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "universalShapeType",
        "getUniversalShapeType",
        "setUniversalShapeType",
        "version",
        "",
        "getVersion",
        "()I",
        "setVersion",
        "(I)V",
        "applyFillColor",
        "",
        "color",
        "applyStrokeColor",
        "applyStrokeWidth",
        "width",
        "",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "renderContext",
        "Lcom/onyx/android/sdk/genericshape/GeoRenderContext;",
        "enableFillColor",
        "enable",
        "",
        "getBoundingRect",
        "Landroid/graphics/RectF;",
        "isEnableFillColor",
        "isFillColorSupported",
        "loadRenderPath",
        "Landroid/graphics/Path;",
        "loadSelectionPoints",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "scaleSelectionPoints",
        "scaleX",
        "scaleY",
        "setFillColorSupported",
        "supported",
        "setFromShapeType",
        "split",
        "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;",
        "eraseBean",
        "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;",
        "updateBySelectionPoints",
        "list",
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
        "SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n13309#2:1559\n13310#2:1561\n13309#2,2:1562\n13309#2,2:1564\n13309#2,2:1566\n13309#2,2:1568\n13309#2,2:1570\n13309#2,2:1572\n13309#2,2:1574\n13309#2,2:1576\n13309#2,2:1578\n12474#2,2:1580\n13309#2,2:1582\n13309#2,2:1584\n1#3:1560\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/FeatureCollection\n*L\n1240#1:1559\n1240#1:1561\n1248#1:1562,2\n1255#1:1564,2\n1265#1:1566,2\n1270#1:1568,2\n1277#1:1570,2\n1283#1:1572,2\n1289#1:1574,2\n1295#1:1576,2\n1301#1:1578,2\n1307#1:1580,2\n1311#1:1582,2\n1321#1:1584,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final features:[Lcom/onyx/android/sdk/genericshape/Feature;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private properties:Lcom/onyx/android/sdk/genericshape/Properties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private universalShapeType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->Companion:Lcom/onyx/android/sdk/genericshape/FeatureCollection$Companion;

    return-void
.end method

.method public constructor <init>([Lcom/onyx/android/sdk/genericshape/Feature;)V
    .locals 1
    .param p1    # [Lcom/onyx/android/sdk/genericshape/Feature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/Geometry;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    new-instance p1, Lcom/onyx/android/sdk/genericshape/Properties;

    invoke-direct {p1}, Lcom/onyx/android/sdk/genericshape/Properties;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->properties:Lcom/onyx/android/sdk/genericshape/Properties;

    const-string p1, "FeatureCollection"

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->type:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->universalShapeType:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->version:I

    return-void
.end method


# virtual methods
.method public applyFillColor(I)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->applyFillColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyStrokeColor(I)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->applyStrokeColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyStrokeWidth(F)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->applyStrokeWidth(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3
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

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/onyx/android/sdk/genericshape/Feature;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoRenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 6
    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->draw(Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableFillColor(Z)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->enableFillColor(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Feature;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->boundingRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getFeatures()[Lcom/onyx/android/sdk/genericshape/Feature;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    return-object p0
.end method

.method public final getProperties()Lcom/onyx/android/sdk/genericshape/Properties;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->properties:Lcom/onyx/android/sdk/genericshape/Properties;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniversalShapeType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->universalShapeType:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->version:I

    return p0
.end method

.method public isEnableFillColor()Z
    .locals 5

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Feature;->isEnableFillColor()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isFillColorSupported()Z
    .locals 4

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Feature;->isFillColorSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public loadRenderPath()Landroid/graphics/Path;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Feature;->getGeometry()Lcom/onyx/android/sdk/genericshape/Geometry;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadRenderPath()Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public loadSelectionPoints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/genericshape/Feature;->loadSelectionPoints()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public scaleSelectionPoints(FF)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Lcom/onyx/android/sdk/genericshape/Feature;->scaleSelectionPoints(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setFillColorSupported(Z)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->setFillColorSupported(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFromShapeType(I)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->features:[Lcom/onyx/android/sdk/genericshape/Feature;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/genericshape/Feature;->setFromShapeType(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setProperties(Lcom/onyx/android/sdk/genericshape/Properties;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/Properties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->properties:Lcom/onyx/android/sdk/genericshape/Properties;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUniversalShapeType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->universalShapeType:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/FeatureCollection;->version:I

    return-void
.end method

.method public split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt;->splitShape(Lcom/onyx/android/sdk/genericshape/FeatureCollection;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public updateBySelectionPoints(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/NotImplementedError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An operation is not implemented: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Not yet implemented"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
