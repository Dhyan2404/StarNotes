.class public Lorg/apache/poi/hemf/draw/HemfGraphics;
.super Lorg/apache/poi/hwmf/draw/HwmfGraphics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BLACK:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private static final DKGRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private static final GRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private static final LTGRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private static final WHITE:Lorg/apache/poi/hwmf/record/HwmfColorRef;


# instance fields
.field private final plusObjectTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final plusPropStack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hemf/draw/HemfDrawProperties;",
            ">;"
        }
    .end annotation
.end field

.field private renderState:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    sget-object v1, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    sput-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics;->WHITE:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v1, Ljava/awt/Color;

    const v2, 0xc0c0c0

    invoke-direct {v1, v2}, Ljava/awt/Color;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    sput-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics;->LTGRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v1, Ljava/awt/Color;

    const v2, 0x808080

    invoke-direct {v1, v2}, Ljava/awt/Color;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    sput-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics;->GRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v1, Ljava/awt/Color;

    const v2, 0x404040

    invoke-direct {v1, v2}, Ljava/awt/Color;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    sput-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics;->DKGRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    sget-object v1, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-direct {v0, v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    sput-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics;->BLACK:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;-><init>(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V

    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->INITIAL:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->renderState:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusObjectTable:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusPropStack:Ljava/util/Map;

    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectIndexes:Ljava/util/BitSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->TRANSPARENT:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V

    return-void
.end method

.method public static synthetic b(Ljava/awt/geom/AffineTransform;Ljava/util/Iterator;Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/draw/HemfGraphics;->lambda$updateWindowMapMode$0(Ljava/awt/geom/AffineTransform;Ljava/util/Iterator;Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;)V

    return-void
.end method

.method public static synthetic c([F[ILjava/lang/Number;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/draw/HemfGraphics;->lambda$toArray$2([F[ILjava/lang/Number;)V

    return-void
.end method

.method public static synthetic d(I)[Ljava/awt/Color;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->lambda$getLinearGradient$1(I)[Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getLinearGradient$1(I)[Ljava/awt/Color;
    .locals 0

    new-array p0, p0, [Ljava/awt/Color;

    return-object p0
.end method

.method private static synthetic lambda$toArray$2([F[ILjava/lang/Number;)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    aput p1, p0, v1

    return-void
.end method

.method private static synthetic lambda$updateWindowMapMode$0(Ljava/awt/geom/AffineTransform;Ljava/util/Iterator;Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;)V
    .locals 0

    iget-object p2, p2, Lorg/apache/poi/hemf/draw/HemfDrawProperties$TransOperand;->fun:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private selectStockObject(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->NULL:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    iget p1, p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->wmfFlag:I

    invoke-static {p1}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenWidth(D)V

    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics;->BLACK:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v2}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenWidth(D)V

    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics;->WHITE:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    goto :goto_0

    :pswitch_3
    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_NULL:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    goto :goto_0

    :pswitch_4
    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics;->BLACK:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    goto :goto_0

    :pswitch_5
    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics;->DKGRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics;->GRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    goto :goto_0

    :pswitch_7
    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics;->LTGRAY:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    goto :goto_0

    :pswitch_8
    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics;->WHITE:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x80000000
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toArray(Ljava/util/stream/Stream;I)[F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Ljava/lang/Number;",
            ">;I)[F"
        }
    .end annotation

    new-array p1, p1, [F

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/tjh;

    invoke-direct {v1, p1, v0}, Lcom/sunia/HTREnginev2/tjh;-><init>([F[I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p1
.end method


# virtual methods
.method public addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectIndexes:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectTable:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Object table entry index in EMF must be > 0 - invalid index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPlusObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusObjectTable:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Object table entry index in EMF+ must be [0..63] - invalid index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public applyObjectTableEntry(I)V
    .locals 2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->selectStockObject(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectTable:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;->applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EMF reference exception - object table entry on index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was deleted before."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public applyPlusObjectTableEntry(I)V
    .locals 2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->selectStockObject(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusObjectTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;->applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EMF+ reference exception - plus object table entry on index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was deleted before."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/awt/geom/Path2D;",
            ">;",
            "Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getUsePathBracket()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getPath()Ljava/awt/geom/Path2D;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Ljava/awt/geom/Path2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Path2D$Double;-><init>()V

    .line 12
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getWindingRule()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/awt/geom/Path2D;->setWindingRule(I)V

    .line 13
    :goto_0
    invoke-virtual {v2}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object v3

    if-nez v3, :cond_1

    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getLocation()Ljava/awt/geom/Point2D;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    .line 16
    :cond_1
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 17
    :catch_0
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getLocation()Ljava/awt/geom/Point2D;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/awt/geom/Path2D;->moveTo(DD)V

    .line 19
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    :goto_1
    invoke-virtual {v2}, Ljava/awt/geom/Path2D;->getCurrentPoint()Ljava/awt/geom/Point2D;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 21
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setLocation(Ljava/awt/geom/Point2D;)V

    if-nez v1, :cond_6

    .line 22
    sget-object p1, Lorg/apache/poi/hemf/draw/HemfGraphics$1;->$SwitchMap$org$apache$poi$hwmf$draw$HwmfGraphics$FillDrawStyle:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    invoke-super {p0, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    .line 24
    invoke-super {p0, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->draw(Ljava/awt/Shape;)V

    goto :goto_2

    .line 25
    :cond_4
    invoke-super {p0, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->draw(Ljava/awt/Shape;)V

    goto :goto_2

    .line 26
    :cond_5
    invoke-super {p0, v2}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->fill(Ljava/awt/Shape;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/record/emf/HemfRecord;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/hemf/draw/HemfGraphics$1;->$SwitchMap$org$apache$poi$hemf$draw$HemfGraphics$EmfRenderState:[I

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getRenderState()Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord;->draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;)V
    .locals 0

    .line 7
    invoke-interface {p1, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;->draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    return-void
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushStyle()Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_NULL:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getFill()Ljava/awt/Paint;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1, p1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, v0}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void
.end method

.method public getHatchedFill()Ljava/awt/Paint;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getHatchedFill()Ljava/awt/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getLinearGradient()Ljava/awt/Paint;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getBrushRect()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getBrushColorsH()Ljava/util/List;

    move-result-object v1

    new-instance v10, Ljava/awt/LinearGradientPaint;

    new-instance v3, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    new-instance v4, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/ujh;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/ujh;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lorg/apache/poi/hemf/draw/HemfGraphics;->toArray(Ljava/util/stream/Stream;I)[F

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/vjh;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vjh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/wjh;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wjh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/awt/Color;

    sget-object v7, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    sget-object v8, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/awt/LinearGradientPaint;-><init>(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;[F[Ljava/awt/Color;Ljava/awt/MultipleGradientPaint$CycleMethod;Ljava/awt/MultipleGradientPaint$ColorSpaceType;Ljava/awt/geom/AffineTransform;)V

    return-object v10
.end method

.method public getObjectTableEntry(I)Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->objectTable:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object table entry index in EMF must be > 0 - invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPlusObjectTableEntry(I)Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusObjectTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object table entry index in EMF+ must be [0..63] - invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    return-object p0
.end method

.method public bridge synthetic getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    return-object p0
.end method

.method public getRenderState()Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->renderState:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    return-object p0
.end method

.method public newProperties(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)Lorg/apache/poi/hemf/draw/HemfDrawProperties;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;-><init>()V

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;-><init>(Lorg/apache/poi/hemf/draw/HemfDrawProperties;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic newProperties(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->newProperties(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    return-object p0
.end method

.method public restorePlusProperties(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusPropStack:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    iget-object v1, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusPropStack:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    invoke-direct {v0, p1}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;-><init>(Lorg/apache/poi/hemf/draw/HemfDrawProperties;)V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getClip()Ljava/awt/Shape;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public savePlusProperties(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTransform(Ljava/awt/geom/AffineTransform;)V

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setClip(Ljava/awt/Shape;)V

    iget-object v1, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->plusPropStack:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->newProperties(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->prop:Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    return-void
.end method

.method public setRenderState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/draw/HemfGraphics;->renderState:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    return-void
.end method

.method public updateWindowMapMode()V
    .locals 4

    invoke-super {p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->updateWindowMapMode()V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getTransXForm()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getTransOper()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v3, Lorg/apache/poi/hemf/draw/a;

    invoke-direct {v3, v2, v1}, Lorg/apache/poi/hemf/draw/a;-><init>(Ljava/awt/geom/AffineTransform;Ljava/util/Iterator;)V

    invoke-interface {v0, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->graphicsCtx:Ljava/awt/Graphics2D;

    invoke-virtual {p0, v2}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method
