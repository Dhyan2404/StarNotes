.class public Lorg/apache/poi/style/UnitValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/style/UnitValue$Unit;
    }
.end annotation


# instance fields
.field private unit:Lorg/apache/poi/style/UnitValue$Unit;

.field private value:F


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/style/UnitValue$Unit;->PX:Lorg/apache/poi/style/UnitValue$Unit;

    iput-object v0, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    .line 3
    invoke-static {p1, p2}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    iput p1, p0, Lorg/apache/poi/style/UnitValue;->value:F

    return-void
.end method

.method public constructor <init>(DLorg/apache/poi/style/UnitValue$Unit;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/style/UnitValue;-><init>(D)V

    .line 5
    iput-object p3, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    return-void
.end method

.method public static fromEM(D)Lorg/apache/poi/style/UnitValue;
    .locals 2

    new-instance v0, Lorg/apache/poi/style/UnitValue;

    sget-object v1, Lorg/apache/poi/style/UnitValue$Unit;->EM:Lorg/apache/poi/style/UnitValue$Unit;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/style/UnitValue;-><init>(DLorg/apache/poi/style/UnitValue$Unit;)V

    return-object v0
.end method

.method public static fromNum(D)Lorg/apache/poi/style/UnitValue;
    .locals 2

    new-instance v0, Lorg/apache/poi/style/UnitValue;

    sget-object v1, Lorg/apache/poi/style/UnitValue$Unit;->NUMBER:Lorg/apache/poi/style/UnitValue$Unit;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/style/UnitValue;-><init>(DLorg/apache/poi/style/UnitValue$Unit;)V

    return-object v0
.end method

.method public static fromPCT(D)Lorg/apache/poi/style/UnitValue;
    .locals 2

    new-instance v0, Lorg/apache/poi/style/UnitValue;

    sget-object v1, Lorg/apache/poi/style/UnitValue$Unit;->PCT:Lorg/apache/poi/style/UnitValue$Unit;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/style/UnitValue;-><init>(DLorg/apache/poi/style/UnitValue$Unit;)V

    return-object v0
.end method

.method public static fromPT(D)Lorg/apache/poi/style/UnitValue;
    .locals 2

    new-instance v0, Lorg/apache/poi/style/UnitValue;

    sget-object v1, Lorg/apache/poi/style/UnitValue$Unit;->PT:Lorg/apache/poi/style/UnitValue$Unit;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/poi/style/UnitValue;-><init>(DLorg/apache/poi/style/UnitValue$Unit;)V

    return-object v0
.end method

.method public static fromPX(D)Lorg/apache/poi/style/UnitValue;
    .locals 1

    new-instance v0, Lorg/apache/poi/style/UnitValue;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/style/UnitValue;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/poi/style/UnitValue;)Lorg/apache/poi/style/UnitValue;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/style/UnitValue;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/style/UnitValue;-><init>(D)V

    iget-object v1, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    iget-object v2, p1, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    if-ne v1, v2, :cond_1

    iput-object v1, v0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    iget p0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    iget p1, p1, Lorg/apache/poi/style/UnitValue;->value:F

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    iput p0, v0, Lorg/apache/poi/style/UnitValue;->value:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/style/UnitValue;->getNumberValue()F

    move-result p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    iput p0, v0, Lorg/apache/poi/style/UnitValue;->value:F

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/style/UnitValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/style/UnitValue;

    iget-object v0, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    iget-object v2, p1, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    if-ne v0, v2, :cond_1

    iget p0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    iget p1, p1, Lorg/apache/poi/style/UnitValue;->value:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNumberValue()F
    .locals 2

    sget-object v0, Lorg/apache/poi/style/UnitValue$1;->$SwitchMap$org$apache$poi$style$UnitValue$Unit:[I

    iget-object v1, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget p0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_1
    iget p0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->emToPX(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method

.method public getUnit()Lorg/apache/poi/style/UnitValue$Unit;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    return-object p0
.end method

.method public getValue()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    return p0
.end method

.method public isValid()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/UnitValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/poi/style/UnitValue;->toStyle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    iget-object p0, p0, Lorg/apache/poi/style/UnitValue$Unit;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/apache/poi/style/UnitValue;->value:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/UnitValue;->unit:Lorg/apache/poi/style/UnitValue$Unit;

    iget-object p0, p0, Lorg/apache/poi/style/UnitValue$Unit;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
