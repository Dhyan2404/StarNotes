.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusDrawDriverString"
.end annotation


# static fields
.field private static final CMAP_LOOKUP:Lorg/apache/poi/util/BitField;

.field private static final LIMIT_SUBPIXEL:Lorg/apache/poi/util/BitField;

.field private static final OPTIONS_MASK:[I

.field private static final OPTIONS_NAMES:[Ljava/lang/String;

.field private static final REALIZED_ADVANCE:Lorg/apache/poi/util/BitField;

.field private static final VERTICAL:Lorg/apache/poi/util/BitField;


# instance fields
.field private brushId:I

.field private flags:I

.field private final glyphPos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/awt/geom/Point2D;",
            ">;"
        }
    .end annotation
.end field

.field private glyphs:Ljava/lang/String;

.field private optionsFlags:I

.field private final transformMatrix:Ljava/awt/geom/AffineTransform;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->CMAP_LOOKUP:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->VERTICAL:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->REALIZED_ADVANCE:Lorg/apache/poi/util/BitField;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    sput-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->LIMIT_SUBPIXEL:Lorg/apache/poi/util/BitField;

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->OPTIONS_MASK:[I

    const-string v0, "REALIZED_ADVANCE"

    const-string v1, "LIMIT_SUBPIXEL"

    const-string v2, "CMAP_LOOKUP"

    const-string v3, "VERTICAL"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->OPTIONS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphPos:Ljava/util/List;

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->transformMatrix:Ljava/awt/geom/AffineTransform;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->lambda$getGenericProperties$1()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/PrimitiveIterator$OfInt;Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Point2D;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->lambda$draw$0(Ljava/util/PrimitiveIterator$OfInt;Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Point2D;)V

    return-void
.end method

.method private static synthetic lambda$draw$0(Ljava/util/PrimitiveIterator$OfInt;Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/awt/geom/Point2D;)V
    .locals 10

    new-instance v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawString([BILjava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->optionsFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphs:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphPos:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->transformMatrix:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 11

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->LEFT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextAlignLatin(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;)V

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->BASELINE:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextVAlignLatin(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;)V

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->isSolidColor()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->getSolidColor()Ljava/awt/Color;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setTextColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusSolidColor;->getBrushId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->applyPlusObjectTableEntry(I)V

    :goto_0
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->REALIZED_ADVANCE:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->optionsFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphs:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v4, v3

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphPos:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/awt/geom/Point2D;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->drawString([BILjava/awt/geom/Point2D;Ljava/awt/geom/Dimension2D;Ljava/awt/geom/Rectangle2D;Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;Ljava/util/List;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphPos:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/doh;

    invoke-direct {v1, v0, p1}, Lcom/sunia/HTREnginev2/doh;-><init>(Ljava/util/PrimitiveIterator$OfInt;Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_1
    return-void
.end method

.method public getBrushIdValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->brushId:I

    return p0
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->drawDriverString:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->flags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "flags"

    new-instance v1, Lcom/sunia/HTREnginev2/eoh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)V

    const-string v2, "brushId"

    new-instance v3, Lcom/sunia/HTREnginev2/foh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/foh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)V

    const-string v4, "optionsFlags"

    new-instance v5, Lcom/sunia/HTREnginev2/goh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/goh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)V

    sget-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->OPTIONS_MASK:[I

    sget-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->OPTIONS_NAMES:[Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v5

    const-string v6, "glyphs"

    new-instance v7, Lcom/sunia/HTREnginev2/hoh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/hoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)V

    const-string v8, "glyphPos"

    new-instance v9, Lcom/sunia/HTREnginev2/ioh;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/ioh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)V

    const-string v10, "transform"

    new-instance v11, Lcom/sunia/HTREnginev2/joh;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/joh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->flags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->brushId:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->optionsFlags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p3

    mul-int/lit8 p4, p3, 0x2

    const p5, 0xf4240

    invoke-static {p1, p4, p5}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p4

    invoke-static {p4}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphs:Ljava/lang/String;

    array-length p4, p4

    add-int/lit8 p4, p4, 0x10

    sget-object p5, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->REALIZED_ADVANCE:Lorg/apache/poi/util/BitField;

    iget p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->optionsFlags:I

    invoke-virtual {p5, p6}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_0

    new-instance p6, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p6}, Ljava/awt/geom/Point2D$Double;-><init>()V

    invoke-static {p1, p6}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readPointF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->glyphPos:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusDrawDriverString;->transformMatrix:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result p0

    add-int/2addr p4, p0

    :cond_1
    int-to-long p0, p4

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
