.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;
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
    name = "EmfPlusHatchBrushData"
.end annotation


# instance fields
.field private backColor:Ljava/awt/Color;

.field private foreColor:Ljava/awt/Color;

.field private style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->foreColor:Ljava/awt/Color;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->backColor:Ljava/awt/Color;

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 1
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

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->foreColor:Ljava/awt/Color;

    invoke-direct {p2, v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->backColor:Ljava/awt/Color;

    invoke-direct {p2, v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBackgroundColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->setEmfPlusBrushHatch(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;)V

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

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->foreColor:Ljava/awt/Color;

    invoke-direct {p2, p0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "style"

    new-instance v1, Lcom/sunia/HTREnginev2/fmh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;)V

    const-string v2, "foreColor"

    new-instance v3, Lcom/sunia/HTREnginev2/gmh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/gmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;)V

    const-string v4, "backColor"

    new-instance v5, Lcom/sunia/HTREnginev2/hmh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/hmh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->HATCH_FILL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchStyle;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->foreColor:Ljava/awt/Color;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusHatchBrushData;->backColor:Ljava/awt/Color;

    const-wide/16 p0, 0xc

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
