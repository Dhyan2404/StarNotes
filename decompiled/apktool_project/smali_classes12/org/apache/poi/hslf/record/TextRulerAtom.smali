.class public final Lorg/apache/poi/hslf/record/TextRulerAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final C_LEVELS:Lorg/apache/poi/util/BitField;

.field private static final DEFAULT_TAB_SIZE:Lorg/apache/poi/util/BitField;

.field private static final INDENT_LVL_MASK:[Lorg/apache/poi/util/BitField;

.field private static final LEFT_MARGIN_LVL_MASK:[Lorg/apache/poi/util/BitField;

.field private static final TAB_STOPS:Lorg/apache/poi/util/BitField;


# instance fields
.field private final _header:[B

.field private defaultTabSize:Ljava/lang/Integer;

.field private final indent:[Ljava/lang/Integer;

.field private final leftMargin:[Ljava/lang/Integer;

.field private numLevels:Ljava/lang/Integer;

.field private final tabStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hslf/record/TextRulerAtom;->DEFAULT_TAB_SIZE:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hslf/record/TextRulerAtom;->C_LEVELS:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hslf/record/TextRulerAtom;->TAB_STOPS:Lorg/apache/poi/util/BitField;

    const/4 v3, 0x5

    new-array v4, v3, [Lorg/apache/poi/util/BitField;

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v5, 0x20

    invoke-static {v5}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x40

    invoke-static {v5}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const/16 v5, 0x80

    invoke-static {v5}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v5

    aput-object v5, v4, v2

    sput-object v4, Lorg/apache/poi/hslf/record/TextRulerAtom;->LEFT_MARGIN_LVL_MASK:[Lorg/apache/poi/util/BitField;

    new-array v3, v3, [Lorg/apache/poi/util/BitField;

    const/16 v4, 0x100

    invoke-static {v4}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x200

    invoke-static {v4}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x400

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    aput-object v0, v3, v1

    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    aput-object v0, v3, v2

    sput-object v3, Lorg/apache/poi/hslf/record/TextRulerAtom;->INDENT_LVL_MASK:[Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->_header:[B

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->tabStops:Ljava/util/List;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    .line 4
    iput-object v2, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    new-array v1, v1, [Ljava/lang/Integer;

    .line 5
    iput-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getRecordType()J

    move-result-wide v1

    long-to-int p0, v1

    int-to-short p0, p0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->_header:[B

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->tabStops:Ljava/util/List;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    .line 10
    iput-object v2, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    new-array v1, v1, [Ljava/lang/Integer;

    .line 11
    iput-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    .line 12
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BII)V

    .line 13
    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 14
    invoke-direct {p0, v1}, Lorg/apache/poi/hslf/record/TextRulerAtom;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lorg/apache/poi/hslf/record/Record;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Failed to parse TextRulerAtom"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/TextRulerAtom;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/TextRulerAtom;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hslf/record/TextRulerAtom;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/TextRulerAtom;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getParagraphInstance()Lorg/apache/poi/hslf/record/TextRulerAtom;
    .locals 5

    new-instance v0, Lorg/apache/poi/hslf/record/TextRulerAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/TextRulerAtom;-><init>()V

    iget-object v1, v0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, v0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    iget-object v2, v0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    const/16 v3, 0x141

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    aput-object v3, v1, v4

    return-object v0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    return-object p0
.end method

.method private read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    sget-object v1, Lorg/apache/poi/hslf/record/TextRulerAtom;->C_LEVELS:Lorg/apache/poi/util/BitField;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/hslf/record/TextRulerAtom;->readIf(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;ILorg/apache/poi/util/BitField;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->numLevels:Ljava/lang/Integer;

    sget-object v1, Lorg/apache/poi/hslf/record/TextRulerAtom;->DEFAULT_TAB_SIZE:Lorg/apache/poi/util/BitField;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/hslf/record/TextRulerAtom;->readIf(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;ILorg/apache/poi/util/BitField;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->defaultTabSize:Ljava/lang/Integer;

    sget-object v1, Lorg/apache/poi/hslf/record/TextRulerAtom;->TAB_STOPS:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->tabStops:Ljava/util/List;

    invoke-static {p1}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->readTabStops(Lorg/apache/poi/util/LittleEndianInput;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    sget-object v3, Lorg/apache/poi/hslf/record/TextRulerAtom;->LEFT_MARGIN_LVL_MASK:[Lorg/apache/poi/util/BitField;

    aget-object v3, v3, v1

    invoke-static {p1, v0, v3}, Lorg/apache/poi/hslf/record/TextRulerAtom;->readIf(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;ILorg/apache/poi/util/BitField;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    sget-object v3, Lorg/apache/poi/hslf/record/TextRulerAtom;->INDENT_LVL_MASK:[Lorg/apache/poi/util/BitField;

    aget-object v3, v3, v1

    invoke-static {p1, v0, v3}, Lorg/apache/poi/hslf/record/TextRulerAtom;->readIf(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;ILorg/apache/poi/util/BitField;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static readIf(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;ILorg/apache/poi/util/BitField;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p2, p1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static writeIf(Lorg/apache/poi/util/LittleEndianOutputStream;Ljava/lang/Integer;Lorg/apache/poi/util/BitField;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 2
    :goto_0
    invoke-virtual {p2, v0, p0}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p0

    return p0
.end method

.method private static writeIf(Lorg/apache/poi/util/LittleEndianOutputStream;Ljava/util/List;Lorg/apache/poi/util/BitField;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianOutputStream;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;",
            ">;",
            "Lorg/apache/poi/util/BitField;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->writeTabStops(Lorg/apache/poi/util/LittleEndianOutput;Ljava/util/List;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 5
    :goto_0
    invoke-virtual {p2, v0, p0}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getBulletOffsets()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    return-object p0
.end method

.method public getDefaultTabSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->defaultTabSize:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
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

    const-string v0, "defaultTabSize"

    new-instance v1, Lcom/sunia/HTREnginev2/afn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/afn;-><init>(Lorg/apache/poi/hslf/record/TextRulerAtom;)V

    const-string v2, "numLevels"

    new-instance v3, Lcom/sunia/HTREnginev2/bfn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/bfn;-><init>(Lorg/apache/poi/hslf/record/TextRulerAtom;)V

    const-string v4, "tabStops"

    new-instance v5, Lcom/sunia/HTREnginev2/cfn;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/cfn;-><init>(Lorg/apache/poi/hslf/record/TextRulerAtom;)V

    const-string v6, "leftMargins"

    new-instance v7, Lcom/sunia/HTREnginev2/dfn;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/dfn;-><init>(Lorg/apache/poi/hslf/record/TextRulerAtom;)V

    const-string v8, "indents"

    new-instance v9, Lcom/sunia/HTREnginev2/efn;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/efn;-><init>(Lorg/apache/poi/hslf/record/TextRulerAtom;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfLevels()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->numLevels:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->TextRulerAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getTabStops()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->tabStops:Ljava/util/List;

    return-object p0
.end method

.method public getTextOffsets()[Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    return-object p0
.end method

.method public setParagraphIndent(SS)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->numLevels:Ljava/lang/Integer;

    sget-object v3, Lorg/apache/poi/hslf/record/TextRulerAtom;->C_LEVELS:Lorg/apache/poi/util/BitField;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/hslf/record/TextRulerAtom;->writeIf(Lorg/apache/poi/util/LittleEndianOutputStream;Ljava/lang/Integer;Lorg/apache/poi/util/BitField;)I

    move-result v2

    const/4 v3, 0x0

    or-int/2addr v2, v3

    iget-object v4, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->defaultTabSize:Ljava/lang/Integer;

    sget-object v5, Lorg/apache/poi/hslf/record/TextRulerAtom;->DEFAULT_TAB_SIZE:Lorg/apache/poi/util/BitField;

    invoke-static {v1, v4, v5}, Lorg/apache/poi/hslf/record/TextRulerAtom;->writeIf(Lorg/apache/poi/util/LittleEndianOutputStream;Ljava/lang/Integer;Lorg/apache/poi/util/BitField;)I

    move-result v4

    or-int/2addr v2, v4

    iget-object v4, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->tabStops:Ljava/util/List;

    sget-object v5, Lorg/apache/poi/hslf/record/TextRulerAtom;->TAB_STOPS:Lorg/apache/poi/util/BitField;

    invoke-static {v1, v4, v5}, Lorg/apache/poi/hslf/record/TextRulerAtom;->writeIf(Lorg/apache/poi/util/LittleEndianOutputStream;Ljava/util/List;Lorg/apache/poi/util/BitField;)I

    move-result v4

    or-int/2addr v2, v4

    move v4, v3

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->leftMargin:[Ljava/lang/Integer;

    aget-object v5, v5, v4

    sget-object v6, Lorg/apache/poi/hslf/record/TextRulerAtom;->LEFT_MARGIN_LVL_MASK:[Lorg/apache/poi/util/BitField;

    aget-object v6, v6, v4

    invoke-static {v1, v5, v6}, Lorg/apache/poi/hslf/record/TextRulerAtom;->writeIf(Lorg/apache/poi/util/LittleEndianOutputStream;Ljava/lang/Integer;Lorg/apache/poi/util/BitField;)I

    move-result v5

    or-int/2addr v2, v5

    iget-object v5, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->indent:[Ljava/lang/Integer;

    aget-object v5, v5, v4

    sget-object v6, Lorg/apache/poi/hslf/record/TextRulerAtom;->INDENT_LVL_MASK:[Lorg/apache/poi/util/BitField;

    aget-object v6, v6, v4

    invoke-static {v1, v5, v6}, Lorg/apache/poi/hslf/record/TextRulerAtom;->writeIf(Lorg/apache/poi/util/LittleEndianOutputStream;Ljava/lang/Integer;Lorg/apache/poi/util/BitField;)I

    move-result v5

    or-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->_header:[B

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->size()I

    move-result v4

    const/4 v5, 0x4

    add-int/2addr v4, v5

    invoke-static {v1, v5, v4}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextRulerAtom;->_header:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v2, p1}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    invoke-static {v3, p1}, Lorg/apache/poi/util/LittleEndian;->putUShort(ILjava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
