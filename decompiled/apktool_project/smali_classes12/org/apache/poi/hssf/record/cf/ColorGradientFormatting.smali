.class public final Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final background:Lorg/apache/poi/util/BitField;

.field private static final clamp:Lorg/apache/poi/util/BitField;


# instance fields
.field private colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private final options:B

.field private thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    new-array v1, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    new-array v0, v0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 4
    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/k1e;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/k1e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/l1e;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/l1e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    .line 9
    :cond_0
    iget-object p1, p1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    if-eqz p1, :cond_1

    .line 10
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/m1e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/m1e;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/n1e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/n1e;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 14
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    if-eq v0, v1, :cond_0

    .line 16
    sget-object v2, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Inconsistent Color Gradient definition, found {} vs {} entries"

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    .line 18
    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v0, 0x0

    move v2, v0

    .line 19
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 20
    new-instance v4, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_1
    new-array v1, v1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    .line 22
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 23
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    .line 24
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    new-instance v2, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic a(I)[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->lambda$new$0(I)[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->lambda$new$1(I)[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p0

    return-object p0
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-virtual {p1, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(I)[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    return-object p0
.end method

.method private static synthetic lambda$new$1(I)[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    new-array p0, p0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object p0
.end method

.method private updateThresholdPositions()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget-object v1, v1, v0

    int-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->setPosition(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->copy()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V

    return-object v0
.end method

.method public getColors()[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object p0
.end method

.method public getDataLength()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v0, p0

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v1, p0, v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v2
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

    const-string v0, "clampToCurve"

    new-instance v1, Lcom/sunia/HTREnginev2/g1e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g1e;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V

    const-string v2, "background"

    new-instance v3, Lcom/sunia/HTREnginev2/h1e;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/h1e;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V

    const-string v4, "thresholds"

    new-instance v5, Lcom/sunia/HTREnginev2/i1e;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/i1e;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V

    const-string v6, "colors"

    new-instance v7, Lcom/sunia/HTREnginev2/j1e;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/j1e;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getNumControlPoints()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length p0, p0

    return p0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    return-object p0
.end method

.method public isAppliesToBackground()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public isClampToCurve()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    int-to-double v1, v0

    mul-double/2addr v1, v3

    invoke-interface {p1, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public setNumControlPoints(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array v1, p1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    new-array v2, p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    :cond_0
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
