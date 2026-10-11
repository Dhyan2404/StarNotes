.class public final Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static final ICON_ONLY:Lorg/apache/poi/util/BitField;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final REVERSED:Lorg/apache/poi/util/BitField;


# instance fields
.field private color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private options:B

.field private percentMax:B

.field private percentMin:B

.field private thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

.field private thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->LOG:Lorg/apache/logging/log4j/Logger;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 5
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 6
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->copy()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 8
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->copy()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 9
    iget-object p1, p1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->copy()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    .line 16
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    const/16 v1, 0x64

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    .line 17
    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-static {v2}, Lorg/apache/logging/log4j/util/Unbox;->box(B)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Inconsistent Minimum Percentage found {}"

    invoke-interface {v0, v3, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_1
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    if-ltz v0, :cond_2

    if-le v0, v1, :cond_3

    .line 19
    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Unbox;->box(B)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Inconsistent Maximum Percentage found {}"

    invoke-interface {v0, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 21
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    .line 22
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->copy()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    return-object v0
.end method

.method public getColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object p0
.end method

.method public getDataLength()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result p0

    add-int/2addr v0, p0

    return v0
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

    const-string v0, "options"

    new-instance v1, Lcom/sunia/HTREnginev2/cse;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cse;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/poi/util/BitField;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    aput-object v4, v2, v3

    const-string v3, "ICON_ONLY"

    const-string v4, "REVERSED"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "color"

    new-instance v3, Lcom/sunia/HTREnginev2/dse;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/dse;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    const-string v4, "percentMin"

    new-instance v5, Lcom/sunia/HTREnginev2/ese;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/ese;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    const-string v6, "percentMax"

    new-instance v7, Lcom/sunia/HTREnginev2/fse;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/fse;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    const-string v8, "thresholdMin"

    new-instance v9, Lcom/sunia/HTREnginev2/gse;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/gse;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    const-string v10, "thresholdMax"

    new-instance v11, Lcom/sunia/HTREnginev2/hse;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/hse;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarFormatting;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPercentMax()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    return p0
.end method

.method public getPercentMin()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    return p0
.end method

.method public getThresholdMax()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object p0
.end method

.method public getThresholdMin()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object p0
.end method

.method public isIconOnly()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isReversed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setPercentMax(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    return-void
.end method

.method public setPercentMin(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    return-void
.end method

.method public setReversed(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setThresholdMax(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public setThresholdMin(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
