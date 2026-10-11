.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusPathGradientBrushData"
.end annotation


# instance fields
.field private blendColors:[Ljava/awt/Color;

.field private blendFactorsH:[F

.field private blendTransform:Ljava/awt/geom/AffineTransform;

.field private boundaryPath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

.field private boundaryPoints:[Ljava/awt/geom/Point2D;

.field private centerColor:Ljava/awt/Color;

.field private final centerPoint:Ljava/awt/geom/Point2D;

.field private dataFlags:I

.field private focusScaleX:Ljava/lang/Double;

.field private focusScaleY:Ljava/lang/Double;

.field private positions:[F

.field private surroundingColor:[Ljava/awt/Color;

.field private wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->centerPoint:Ljava/awt/geom/Point2D;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$13()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$15()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$16()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;[Ljava/awt/Color;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$init$1([Ljava/awt/Color;)V

    return-void
.end method

.method public static synthetic g(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$14()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$init$2([F)V

    return-void
.end method

.method public static synthetic i(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$10()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->boundaryPoints:[Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$11()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->blendTransform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$12()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->positions:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$13()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->blendColors:[Ljava/awt/Color;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$14()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->blendFactorsH:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$15()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->focusScaleX:Ljava/lang/Double;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$16()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->focusScaleY:Ljava/lang/Double;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->dataFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->centerColor:Ljava/awt/Color;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->centerPoint:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->surroundingColor:[Ljava/awt/Color;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$9()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->boundaryPath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    return-object p0
.end method

.method private synthetic lambda$init$0([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->positions:[F

    return-void
.end method

.method private synthetic lambda$init$1([Ljava/awt/Color;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->blendColors:[Ljava/awt/Color;

    return-void
.end method

.method private synthetic lambda$init$2([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->positions:[F

    return-void
.end method

.method private synthetic lambda$init$3([F)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->blendFactorsH:[F

    return-void
.end method

.method public static synthetic m(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$init$3([F)V

    return-void
.end method

.method public static synthetic n(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$init$0([F)V

    return-void
.end method

.method public static synthetic o(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->lambda$getGenericProperties$11()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public applyPen(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/qnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/unh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/unh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "wrapMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "centerColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "centerPoint"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "surroundingColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/inh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/inh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "boundaryPath"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "boundaryPoints"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/knh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/knh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "blendTransform"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "positions"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/mnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "blendColors"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/rnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "blendFactorsH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/snh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/snh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string v2, "focusScaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    const-string p0, "focusScaleY"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->PATH_GRADIENT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->dataFlags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->centerColor:Ljava/awt/Color;

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    const-wide/16 v0, 0xc

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->centerPoint:Ljava/awt/geom/Point2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readPointF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p2, v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    new-array v3, v2, [Ljava/awt/Color;

    iput-object v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->surroundingColor:[Ljava/awt/Color;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->surroundingColor:[Ljava/awt/Color;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-long v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    add-long/2addr p2, v4

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->PATH:Lorg/apache/poi/util/BitField;

    iget v4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->dataFlags:I

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    add-long/2addr p2, v6

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    invoke-direct {v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->boundaryPath:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;

    int-to-long v5, v2

    sget-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->PATH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPath$EmfPlusPath;->init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J

    move-result-wide v2

    add-long/2addr p2, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    add-long/2addr p2, v6

    new-array v4, v2, [Ljava/awt/geom/Point2D;

    iput-object v4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->boundaryPoints:[Ljava/awt/geom/Point2D;

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->boundaryPoints:[Ljava/awt/geom/Point2D;

    new-instance v5, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v5}, Ljava/awt/geom/Point2D$Double;-><init>()V

    aput-object v5, v4, v3

    invoke-static {p1, v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readPointF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->TRANSFORM:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->dataFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->blendTransform:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, v2}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p2, v2

    :cond_4
    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->PRESET_COLORS:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->dataFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->BLEND_FACTORS_H:Lorg/apache/poi/util/BitField;

    iget v4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->dataFlags:I

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v3

    if-eqz v2, :cond_6

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid combination of preset colors and blend factors h"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    const-wide/16 v4, 0x0

    if-eqz v2, :cond_7

    new-instance v2, Lcom/sunia/HTREnginev2/fnh;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/fnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    new-instance v6, Lcom/sunia/HTREnginev2/nnh;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/nnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    invoke-static {p1, v2, v6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->access$000(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I

    move-result v2

    int-to-long v6, v2

    goto :goto_4

    :cond_7
    move-wide v6, v4

    :goto_4
    add-long/2addr p2, v6

    if-eqz v3, :cond_8

    new-instance v2, Lcom/sunia/HTREnginev2/onh;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/onh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    new-instance v3, Lcom/sunia/HTREnginev2/pnh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/pnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;)V

    invoke-static {p1, v2, v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->access$100(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)I

    move-result v2

    int-to-long v4, v2

    :cond_8
    add-long/2addr p2, v4

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->FOCUS_SCALES:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->dataFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->focusScaleX:Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusPathGradientBrushData;->focusScaleY:Ljava/lang/Double;

    add-long/2addr p2, v0

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid focus scale count"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    return-wide p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
