.class public Lorg/apache/poi/hslf/model/textproperties/TextProp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private dataValue:I

.field private maskInHeader:I

.field private propName:Ljava/lang/String;

.field private sizeOfDataBlock:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->sizeOfDataBlock:I

    .line 3
    iput p2, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->maskInHeader:I

    .line 4
    iput-object p3, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->sizeOfDataBlock:I

    iput v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->sizeOfDataBlock:I

    .line 8
    iget v0, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->maskInHeader:I

    iput v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->maskInHeader:I

    .line 9
    iget-object v0, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    .line 10
    iget p1, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;

    iget v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    iget v3, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->maskInHeader:I

    iget v3, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->maskInHeader:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->sizeOfDataBlock:I

    iget p1, p1, Lorg/apache/poi/hslf/model/textproperties/TextProp;->sizeOfDataBlock:I

    if-eq p0, p1, :cond_7

    return v1

    :cond_7
    return v0
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

    const-string v0, "sizeOfDataBlock"

    new-instance v1, Lcom/sunia/HTREnginev2/zdn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zdn;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    const-string v2, "propName"

    new-instance v3, Lcom/sunia/HTREnginev2/aen;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/aen;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    const-string v4, "dataValue"

    new-instance v5, Lcom/sunia/HTREnginev2/ben;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/ben;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    const-string v6, "maskInHeader"

    new-instance v7, Lcom/sunia/HTREnginev2/cen;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/cen;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMask()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->maskInHeader:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->sizeOfDataBlock:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    return p0
.end method

.method public getWriteMask()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getMask()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->maskInHeader:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->propName:Ljava/lang/String;

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->sizeOfDataBlock:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/TextProp;->dataValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s = %d (%0#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "X mask / %d bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getMask()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
