.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusFont"
.end annotation


# static fields
.field private static final BOLD:Lorg/apache/poi/util/BitField;

.field private static final ITALIC:Lorg/apache/poi/util/BitField;

.field private static final STRIKEOUT:Lorg/apache/poi/util/BitField;

.field private static final UNDERLINE:Lorg/apache/poi/util/BitField;


# instance fields
.field private emSize:D

.field private family:Ljava/lang/String;

.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

.field private sizeUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

.field private styleFlags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->BOLD:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->ITALIC:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->UNDERLINE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->STRIKEOUT:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->emSize:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->sizeUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->styleFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->family:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 2
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

    new-instance p2, Lorg/apache/poi/hemf/record/emf/HemfFont;

    invoke-direct {p2}, Lorg/apache/poi/hemf/record/emf/HemfFont;-><init>()V

    invoke-virtual {p2}, Lorg/apache/poi/hwmf/record/HwmfFont;->initDefaults()V

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->family:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->setTypeface(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->emSize:D

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/hemf/record/emf/HemfFont;->setHeight(D)V

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->STRIKEOUT:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->styleFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->setStrikeOut(Z)V

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->UNDERLINE:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->styleFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->setUnderline(Z)V

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->BOLD:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->styleFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2bc

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    invoke-virtual {p2, v0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->setWeight(I)V

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->ITALIC:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->styleFlags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/hemf/record/emf/HemfFont;->setItalic(Z)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setFont(Lorg/apache/poi/hwmf/record/HwmfFont;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "graphicsVersion"

    new-instance v1, Lcom/sunia/HTREnginev2/mph;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)V

    const-string v2, "emSize"

    new-instance v3, Lcom/sunia/HTREnginev2/nph;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/nph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)V

    const-string v4, "sizeUnit"

    new-instance v5, Lcom/sunia/HTREnginev2/oph;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/oph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)V

    const-string v6, "styleFlags"

    new-instance v7, Lcom/sunia/HTREnginev2/pph;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/pph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)V

    const-string v8, "family"

    new-instance v9, Lcom/sunia/HTREnginev2/qph;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/qph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->FONT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result p4

    float-to-double p4, p4

    iput-wide p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->emSize:D

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    invoke-static {p4}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->sizeUnit:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->styleFlags:I

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    const-wide/16 v0, 0x14

    add-long/2addr p2, v0

    invoke-static {p1, p4}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusFont$EmfPlusFont;->family:Ljava/lang/String;

    int-to-long p0, p4

    const-wide/16 p4, 0x2

    mul-long/2addr p0, p4

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
