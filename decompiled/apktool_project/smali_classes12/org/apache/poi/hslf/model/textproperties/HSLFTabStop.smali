.class public Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TabStop;
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private position:I

.field private type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;


# direct methods
.method public constructor <init>(ILorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    .line 3
    iput-object p2, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    iput v0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    iput-object p1, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->copy()Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;-><init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    iget v1, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    iget v3, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    iget-object p1, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
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

    new-instance v0, Lcom/sunia/HTREnginev2/v7h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/v7h;-><init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V

    new-instance v1, Lcom/sunia/HTREnginev2/w7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w7h;-><init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V

    const-string p0, "type"

    const-string v2, "position"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    return p0
.end method

.method public getPositionInPoints()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getPosition()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    return-void
.end method

.method public setPositionInPoints(D)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->setPosition(I)V

    return-void
.end method

.method public setType(Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->type:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->position:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
