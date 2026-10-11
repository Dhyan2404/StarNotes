.class public final Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static ICON_ONLY:Lorg/apache/poi/util/BitField;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static REVERSED:Lorg/apache/poi/util/BitField;


# instance fields
.field private iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field private options:B

.field private thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->LOG:Lorg/apache/logging/log4j/Logger;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/4 v1, 0x0

    .line 3
    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    .line 4
    iget v0, v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 7
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/hgi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hgi;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/igi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/igi;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    :cond_0
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

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 15
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->byId(I)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    .line 16
    iget v1, v1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    if-eq v1, v0, :cond_0

    .line 17
    sget-object v1, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Inconsistent Icon Set definition, found {} but defined as {} entries"

    invoke-interface {v1, v3, v2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    .line 19
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 21
    new-instance v2, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(I)[Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/cf/Threshold;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->copy()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;)V

    return-object v0
.end method

.method public getDataLength()I
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v0, p0

    const/4 v1, 0x6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "iconSet"

    new-instance v1, Lcom/sunia/HTREnginev2/dgi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dgi;-><init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;)V

    const-string v2, "iconOnly"

    new-instance v3, Lcom/sunia/HTREnginev2/egi;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/egi;-><init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;)V

    const-string v4, "reversed"

    new-instance v5, Lcom/sunia/HTREnginev2/fgi;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/fgi;-><init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;)V

    const-string v6, "thresholds"

    new-instance v7, Lcom/sunia/HTREnginev2/ggi;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/ggi;-><init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-object p0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    return-object p0
.end method

.method public isIconOnly()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isReversed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->id:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconOnly(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->ICON_ONLY:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    return-void
.end method

.method public setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-void
.end method

.method public setReversed(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->REVERSED:Lorg/apache/poi/util/BitField;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    return-void
.end method

.method public setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/cf/Threshold;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/cf/Threshold;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
