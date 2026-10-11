.class public abstract Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
.super Lorg/apache/poi/hslf/model/textproperties/TextProp;
.source "SourceFile"


# static fields
.field protected static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final subPropMasks:[I

.field private final subPropMatches:[Z

.field private final subPropNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public varargs constructor <init>(IILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    .line 6
    iput-object p4, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropNames:[Ljava/lang/String;

    .line 7
    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    .line 8
    array-length p1, p4

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p1

    const/4 p2, 0x0

    .line 10
    :goto_0
    iget-object p3, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    array-length p4, p3

    if-ge p2, p4, :cond_0

    shl-int p4, p1, p2

    .line 11
    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    .line 2
    iget-object v0, p1, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropNames:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropNames:[Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_1
    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    .line 4
    iget-object p1, p1, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Z

    :goto_2
    iput-object v1, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;I)Lorg/apache/logging/log4j/message/Message;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->lambda$setValueWithMask$0(I)Lorg/apache/logging/log4j/message/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setValueWithMask$0(I)Lorg/apache/logging/log4j/message/Message;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The following style attributes of the \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' property will be ignored:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget v5, v1, v3

    iget-object v6, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    aget-boolean v6, v6, v4

    if-nez v6, :cond_0

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/logging/log4j/message/SimpleMessage;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/message/SimpleMessage;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private maskValue(I)I
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    iget-object v5, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    add-int/lit8 v6, v3, 0x1

    aget-boolean v3, v5, v3

    if-nez v3, :cond_0

    not-int v3, v4

    and-int/2addr p1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method public cloneAll()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    if-eqz p0, :cond_0

    iget-object v1, v0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/bs;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/bs;-><init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;)V

    new-instance v1, Lcom/sunia/HTREnginev2/cs;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cs;-><init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;)V

    iget-object v2, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropNames:[Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v1, "base"

    const-string v2, "flags"

    invoke-static {v1, v0, v2, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSubPropMatches()[Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    return-object p0
.end method

.method public getSubPropNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getSubValue(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    aget p0, p0, p1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getValue()I
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->maskValue(I)I

    move-result p0

    return p0
.end method

.method public getWriteMask()I
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget v5, v0, v2

    iget-object v6, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    add-int/lit8 v7, v4, 0x1

    aget-boolean v4, v6, v4

    if-eqz v4, :cond_0

    or-int/2addr v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_0

    :cond_1
    return v3
.end method

.method public setSubValue(ZI)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    aget p1, p1, p2

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    aget p1, p1, p2

    not-int p1, p1

    and-int/2addr p1, v0

    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->setValue(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 8

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->setValue(I)V

    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    iget-object v6, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    add-int/lit8 v7, v4, 0x1

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v6, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setValueWithMask(II)V
    .locals 3

    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->setWriteMask(I)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->maskValue(I)I

    move-result p2

    invoke-super {p0, p2}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->setValue(I)V

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p2

    if-eq p1, p2, :cond_0

    sget-object p2, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "Style properties of \'{}\' don\'t match mask - output will be sanitized"

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/as;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/as;-><init>(Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;I)V

    invoke-interface {p2, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Lorg/apache/logging/log4j/util/Supplier;)V

    :cond_0
    return-void
.end method

.method public setWriteMask(I)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMasks:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    iget-object v6, p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->subPropMatches:[Z

    add-int/lit8 v7, v4, 0x1

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v6, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_1
    return-void
.end method
