.class public Lorg/apache/poi/hemf/usermodel/HemfPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
        ">;",
        "Lorg/apache/poi/common/usermodel/GenericRecord;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private defaultCharset:Ljava/nio/charset/Charset;

.field private isParsed:Z

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Lorg/apache/poi/util/LittleEndianInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;-><init>(Lorg/apache/poi/util/LittleEndianInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->records:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->isParsed:Z

    .line 5
    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->defaultCharset:Ljava/nio/charset/Charset;

    .line 6
    iput-object p1, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    return-void
.end method

.method public static synthetic a(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)D
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->lambda$draw$2(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/usermodel/HemfPicture;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->lambda$getEmbeddings$4()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->lambda$draw$3(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/usermodel/HemfPicture;[Lorg/apache/poi/hemf/record/emf/HemfHeader;Lorg/apache/poi/hemf/record/emf/HemfRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->lambda$getRecords$0([Lorg/apache/poi/hemf/record/emf/HemfHeader;Lorg/apache/poi/hemf/record/emf/HemfRecord;)V

    return-void
.end method

.method private static diff(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)D
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/sunia/HTREnginev2/nlh;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/nlh;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/sunia/HTREnginev2/olh;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/olh;-><init>()V

    :goto_1
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    new-instance v4, Lcom/sunia/HTREnginev2/plh;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/plh;-><init>()V

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/sunia/HTREnginev2/qlh;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/qlh;-><init>()V

    :goto_2
    invoke-interface {v3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v4, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {v3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v4, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static/range {v6 .. v13}, Ljava/awt/geom/Point2D;->distanceSq(DDDD)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static synthetic e(Ljava/awt/geom/Rectangle2D;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->lambda$draw$1(Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$draw$1(Ljava/awt/geom/Rectangle2D;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$draw$2(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)D
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->diff(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$draw$3(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->transform(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getEmbeddings$4()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hemf/usermodel/HemfEmbeddedIterator;-><init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;)V

    return-object v0
.end method

.method private synthetic lambda$getRecords$0([Lorg/apache/poi/hemf/record/emf/HemfHeader;Lorg/apache/poi/hemf/record/emf/HemfRecord;)V
    .locals 2

    instance-of v0, p2, Lorg/apache/poi/hemf/record/emf/HemfHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/poi/hemf/record/emf/HemfHeader;

    aput-object v0, p1, v1

    :cond_0
    aget-object p1, p1, v1

    invoke-interface {p2, p1}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->setHeader(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    instance-of p1, p2, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;

    new-instance v0, Lcom/sunia/HTREnginev2/vlh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vlh;-><init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;)V

    invoke-interface {p1, v0}, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;->setCharsetProvider(Ljava/util/function/Supplier;)V

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->records:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static transform(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;
    .locals 13

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double p1, v0, v4

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v7

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v9

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    div-double v11, v0, v2

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    goto :goto_0

    :cond_0
    const-wide v4, -0x4036666666666666L    # -0.2

    cmpg-double p1, v0, v4

    if-gez p1, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v5

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v7

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    mul-double v9, v0, v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v11

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 9

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getHeader()Lorg/apache/poi/hemf/record/emf/HemfHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hemf/record/emf/HemfHeader;->getBoundsRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;

    invoke-direct {v3}, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;-><init>()V

    new-instance v4, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;

    invoke-direct {v4}, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;-><init>()V

    new-instance v5, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v5}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getInnerBounds(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    sget-object v6, Lorg/apache/poi/sl/draw/Drawable;->EMF_FORCE_HEADER_BOUNDS:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v6}, Ljava/awt/Graphics2D;->getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-nez v6, :cond_0

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object v2, v3

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/awt/geom/Rectangle2D;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    invoke-static {v6}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/sunia/HTREnginev2/rlh;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/rlh;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/sunia/HTREnginev2/slh;

    invoke-direct {v4, v5}, Lcom/sunia/HTREnginev2/slh;-><init>(Ljava/awt/geom/Rectangle2D;)V

    invoke-static {v4}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/sunia/HTREnginev2/tlh;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/tlh;-><init>(Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/Rectangle2D;

    :cond_4
    :goto_0
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->translate(DD)V

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {p1, v3, v4, v5, v6}, Ljava/awt/Graphics2D;->translate(DD)V

    new-instance p2, Lorg/apache/poi/hemf/draw/HemfGraphics;

    invoke-direct {p2, p1, v2}, Lorg/apache/poi/hemf/draw/HemfGraphics;-><init>(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hemf/record/emf/HemfRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2, v2}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Lorg/apache/poi/hemf/record/emf/HemfRecord;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    return-void

    :cond_6
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to create Rectangle2D for drawing"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v1}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    throw p0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getBounds()Ljava/awt/geom/Rectangle2D;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getHeader()Lorg/apache/poi/hemf/record/emf/HemfHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfHeader;->getFrameRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;->isEmpty(Ljava/awt/geom/Rectangle2D;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;

    invoke-direct {v1}, Lorg/apache/poi/hemf/usermodel/HemfPicture$ReluctantRectangle2D;-><init>()V

    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    new-instance v3, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v3}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getInnerBounds(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {v1}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getBoundsInPoints()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getHeader()Lorg/apache/poi/hemf/record/emf/HemfHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfHeader;->getBoundsRectangle()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->pixelToPoints(Ljava/awt/geom/Rectangle2D;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->defaultCharset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getEmbeddings()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ulh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ulh;-><init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;)V

    return-object v0
.end method

.method public getGenericChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/common/usermodel/GenericRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeader()Lorg/apache/poi/hemf/record/emf/HemfHeader;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emf/HemfHeader;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "No records could be parsed - your .emf file is invalid"

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInnerBounds(Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/hemf/usermodel/HemfPicture$1;-><init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/Rectangle2D;)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hemf/record/emf/HemfRecord;

    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getState()Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    move-result-object p2

    sget-object p3, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMF_ONLY:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    if-ne p2, p3, :cond_1

    instance-of p2, p1, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    if-nez p2, :cond_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->getState()Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    move-result-object p2

    sget-object p3, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMFPLUS_ONLY:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    if-ne p2, p3, :cond_2

    instance-of p2, p1, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->isParsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->isParsed:Z

    new-array v0, v0, [Lorg/apache/poi/hemf/record/emf/HemfHeader;

    new-instance v1, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;

    iget-object v2, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->stream:Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v1, v2}, Lorg/apache/poi/hemf/record/emf/HemfRecordIterator;-><init>(Lorg/apache/poi/util/LittleEndianInputStream;)V

    new-instance v2, Lcom/sunia/HTREnginev2/mlh;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/mlh;-><init>(Lorg/apache/poi/hemf/usermodel/HemfPicture;[Lorg/apache/poi/hemf/record/emf/HemfHeader;)V

    invoke-interface {v1, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->records:Ljava/util/List;

    return-object p0
.end method

.method public getSize()Ljava/awt/geom/Dimension2D;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getBoundsInPoints()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/util/Dimension2DDouble;-><init>(DD)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/usermodel/HemfPicture;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/hemf/record/emf/HemfRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hemf/usermodel/HemfPicture;->getRecords()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
