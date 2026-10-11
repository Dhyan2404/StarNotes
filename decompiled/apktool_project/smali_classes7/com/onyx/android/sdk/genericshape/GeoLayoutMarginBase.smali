.class public Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;
.super Lcom/onyx/android/sdk/genericshape/Feature;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLayoutMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,366:1\n1855#2,2:367\n766#2:369\n857#2,2:370\n1549#2:372\n1620#2,3:373\n1855#2,2:376\n1855#2,2:388\n18#3,4:378\n50#3,6:382\n56#3:390\n*S KotlinDebug\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginBase\n*L\n91#1:367,2\n123#1:369\n123#1:370,2\n124#1:372\n124#1:373,3\n128#1:376,2\n159#1:388,2\n158#1:378,4\n158#1:382,6\n158#1:390\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 C2\u00020\u00012\u00020\u0002:\u0001CB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\'\u001a\u00020(J.\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\u0014\u0008\u0002\u0010-\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020(0.J\u0010\u0010/\u001a\u00020(2\u0006\u0010*\u001a\u00020+H\u0002J$\u00100\u001a\u00020(2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#J\u0008\u00101\u001a\u00020\u000eH\u0002J\u0006\u00102\u001a\u000203J\u0018\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\u000eH\u0002J\u000e\u00107\u001a\u00020(2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u00108\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00109\u001a\u00020:J\u000e\u0010;\u001a\u00020(2\u0006\u0010\"\u001a\u00020#J\u000e\u0010<\u001a\u00020(2\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020(2\u0006\u0010$\u001a\u00020\u000eJ\u000e\u0010@\u001a\u00020(2\u0006\u0010A\u001a\u00020BR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&\u00a8\u0006D"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;",
        "Lcom/onyx/android/sdk/genericshape/Feature;",
        "Ljava/io/Serializable;",
        "()V",
        "adjustContentHorizontalPadding",
        "",
        "getAdjustContentHorizontalPadding",
        "()Z",
        "setAdjustContentHorizontalPadding",
        "(Z)V",
        "adjustContentVerticalPadding",
        "getAdjustContentVerticalPadding",
        "setAdjustContentVerticalPadding",
        "contentRect",
        "Landroid/graphics/RectF;",
        "geometries",
        "",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;",
        "getGeometries",
        "()Ljava/util/List;",
        "setGeometries",
        "(Ljava/util/List;)V",
        "marginPaint",
        "Landroid/graphics/Paint;",
        "getMarginPaint",
        "()Landroid/graphics/Paint;",
        "marginPaint$delegate",
        "Lkotlin/Lazy;",
        "marginPercent",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "getMarginPercent",
        "()Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "setMarginPercent",
        "(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V",
        "matrix",
        "Landroid/graphics/Matrix;",
        "viewport",
        "getViewport",
        "()Landroid/graphics/RectF;",
        "clearMargin",
        "",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "allowUseShader",
        "drawContent",
        "Lkotlin/Function1;",
        "drawBackground",
        "drawMarginTemplate",
        "getAdjustedContentRect",
        "getMarginPixel",
        "Lcom/onyx/android/sdk/geometry/data/MarginPixel;",
        "isIntersectCanvas",
        "canvasBoundingRectF",
        "rectF",
        "setContentRect",
        "setMargin",
        "marginStyle",
        "Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "setMatrix",
        "setSpace",
        "space",
        "",
        "setViewport",
        "setXferMode",
        "xfermode",
        "Landroid/graphics/Xfermode;",
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
        "SMAP\nGeoLayoutMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginBase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,366:1\n1855#2,2:367\n766#2:369\n857#2,2:370\n1549#2:372\n1620#2,3:373\n1855#2,2:376\n1855#2,2:388\n18#3,4:378\n50#3,6:382\n56#3:390\n*S KotlinDebug\n*F\n+ 1 GeoLayoutMargin.kt\ncom/onyx/android/sdk/genericshape/GeoLayoutMarginBase\n*L\n91#1:367,2\n123#1:369\n123#1:370,2\n124#1:372\n124#1:373,3\n128#1:376,2\n159#1:388,2\n158#1:378,4\n158#1:382,6\n158#1:390\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adjustContentHorizontalPadding:Z

.field private adjustContentVerticalPadding:Z

.field private final transient contentRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private geometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final marginPaint$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transient matrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transient viewport:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/Feature;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->viewport:Landroid/graphics/RectF;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->geometries:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$marginPaint$2;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$marginPaint$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPaint$delegate:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    const-string v0, "MultiLayout"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/genericshape/Properties;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic draw$default(Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;Landroid/graphics/Canvas;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$draw$1;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$draw$1;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->draw(Landroid/graphics/Canvas;ZLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: draw"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getFillAttr()Lcom/onyx/android/sdk/genericshape/FillAttr;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNaN(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->boundingRectF(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->viewport:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->createRectanglesWithHole(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/graphics/RectF;

    invoke-direct {p0, v0, v4}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->isIntersectCanvas(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->roundToExpand(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic drawMarginTemplate$default(Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->drawMarginTemplate(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: drawMarginTemplate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getAdjustedContentRect()Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->geometries:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;->getGeometries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutChildParams;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getSpacing()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    iget-boolean v3, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentHorizontalPadding:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    rem-float/2addr v3, v1

    sub-float v3, v1, v3

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentVerticalPadding:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p0

    rem-float/2addr p0, v1

    sub-float/2addr v1, p0

    div-float v2, v1, v4

    :cond_1
    neg-float p0, v3

    neg-float v1, v2

    invoke-virtual {v0, p0, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    return-object v0
.end method

.method private final getMarginPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPaint$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final isIntersectCanvas(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final clearMargin()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->geometries:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentHorizontalPadding:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentVerticalPadding:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;ZLkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawContent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->hasMargin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->drawBackground(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->drawMarginTemplate(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object p2

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final drawMarginTemplate(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/genericshape/DrawContext;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x74

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move v5, p2

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->boundingRectF(Landroid/graphics/Canvas;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->viewport:Landroid/graphics/RectF;

    invoke-static {v1, p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyAndTransform(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getAdjustedContentRect()Landroid/graphics/RectF;

    move-result-object p3

    invoke-static {}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginLocation;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$drawMarginTemplate$layoutMap$1;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$drawMarginTemplate$layoutMap$1;

    new-instance v3, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$drawMarginTemplate$layoutMap$2;

    invoke-direct {v3, p0, p3}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$drawMarginTemplate$layoutMap$2;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;Landroid/graphics/RectF;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;-><init>(Ljava/util/Map;)V

    sget-object v1, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v1}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v3

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->geometries:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;

    iget-object v6, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v5, p3, v6}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;->getLocationRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNaN(Landroid/graphics/RectF;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, p2, v6}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->isIntersectCanvas(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v5, v0, v2, v6}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;->draw(Lcom/onyx/android/sdk/genericshape/DrawContext;Lcom/onyx/android/sdk/genericshape/GeoLayoutParent;Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide p2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render margin template cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getAdjustContentHorizontalPadding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentHorizontalPadding:Z

    return p0
.end method

.method public final getAdjustContentVerticalPadding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentVerticalPadding:Z

    return p0
.end method

.method public final getGeometries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->geometries:Ljava/util/List;

    return-object p0
.end method

.method public final getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-object p0
.end method

.method public final getMarginPixel()Lcom/onyx/android/sdk/geometry/data/MarginPixel;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toMarginPixel(FF)Lcom/onyx/android/sdk/geometry/data/MarginPixel;

    move-result-object p0

    return-object p0
.end method

.method public final getViewport()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->viewport:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setAdjustContentHorizontalPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentHorizontalPadding:Z

    return-void
.end method

.method public final setAdjustContentVerticalPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->adjustContentVerticalPadding:Z

    return-void
.end method

.method public final setContentRect(Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "contentRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->viewport:Landroid/graphics/RectF;

    sget-object v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;

    iget-object v2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;->calculateViewport(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/MarginPercent;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setGeometries(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->geometries:Ljava/util/List;

    return-void
.end method

.method public final setMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MarginPercent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/MarginStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "marginPercent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marginStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/genericshape/Properties;->getFillAttr()Lcom/onyx/android/sdk/genericshape/FillAttr;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->setEnableColor(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/genericshape/FillAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/FillAttr;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/genericshape/FillAttr;->setColor(I)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/genericshape/Properties;->setFillAttr(Lcom/onyx/android/sdk/genericshape/FillAttr;)V

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateSpace()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->setSpace(F)V

    return-void
.end method

.method public final setMarginPercent(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MarginPercent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "matrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final setSpace(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->geometries:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginGeometry;->setSpace(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setViewport(Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->viewport:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->contentRect:Landroid/graphics/RectF;

    sget-object v1, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->Companion:Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-virtual {v1, p1, p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase$Companion;->calculateContentRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/MarginPercent;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setXferMode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1    # Landroid/graphics/Xfermode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "xfermode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutMarginBase;->getMarginPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
