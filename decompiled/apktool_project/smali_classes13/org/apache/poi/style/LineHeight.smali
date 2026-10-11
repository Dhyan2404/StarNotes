.class public Lorg/apache/poi/style/LineHeight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/style/LineHeight$Type;
    }
.end annotation


# static fields
.field public static final DEFAULT_LINE_HEIGHT_PERCENT:F = 1.285f


# instance fields
.field private docGridLine:Z

.field private linePitch:Lorg/apache/poi/style/UnitValue;

.field private type:Lorg/apache/poi/style/LineHeight$Type;

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/style/LineHeight$Type;->NONE:Lorg/apache/poi/style/LineHeight$Type;

    iput-object v0, p0, Lorg/apache/poi/style/LineHeight;->type:Lorg/apache/poi/style/LineHeight$Type;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/style/LineHeight$Type;F)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lorg/apache/poi/style/LineHeight$Type;->NONE:Lorg/apache/poi/style/LineHeight$Type;

    .line 5
    iput-object p1, p0, Lorg/apache/poi/style/LineHeight;->type:Lorg/apache/poi/style/LineHeight$Type;

    .line 6
    iput p2, p0, Lorg/apache/poi/style/LineHeight;->value:F

    return-void
.end method


# virtual methods
.method public getAtLeastStyle(F)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "line-height:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x3fa47ae1    # 1.285f

    mul-float/2addr p1, v1

    iget v1, p0, Lorg/apache/poi/style/LineHeight;->value:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const-string v2, "px;"

    if-nez v1, :cond_0

    float-to-double p0, p1

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/poi/style/LineHeight;->docGridLine:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/style/LineHeight;->linePitch:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v1

    div-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    iget-object v1, p0, Lorg/apache/poi/style/LineHeight;->linePitch:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    iget p0, p0, Lorg/apache/poi/style/LineHeight;->value:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    float-to-double v3, p1

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    iget p0, p0, Lorg/apache/poi/style/LineHeight;->value:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAutoStyle(F)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "line-height:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x3fa47ae1    # 1.285f

    mul-float/2addr p1, v1

    iget-boolean v1, p0, Lorg/apache/poi/style/LineHeight;->docGridLine:Z

    const-string v2, "px;"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/style/LineHeight;->linePitch:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v1

    div-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    iget-object v1, p0, Lorg/apache/poi/style/LineHeight;->linePitch:Lorg/apache/poi/style/UnitValue;

    invoke-virtual {v1}, Lorg/apache/poi/style/UnitValue;->getValue()F

    move-result v1

    int-to-float p1, p1

    iget p0, p0, Lorg/apache/poi/style/LineHeight;->value:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr v1, p0

    float-to-double p0, v1

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/apache/poi/style/LineHeight;->value:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExactStyle(F)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "line-height:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/style/LineHeight;->value:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "px;"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()F
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/LineHeight;->value:F

    return p0
.end method

.method public parse(Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/IParagraphPropertyFetcher;->getCTSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->isSetLine()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->xgetLine()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    invoke-static {p1}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->getLineSpaceRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    move-result-object p1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->AT_LEAST:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne p1, v2, :cond_1

    sget-object p1, Lorg/apache/poi/style/LineHeight$Type;->AT_LEAST:Lorg/apache/poi/style/LineHeight$Type;

    iput-object p1, p0, Lorg/apache/poi/style/LineHeight;->type:Lorg/apache/poi/style/LineHeight$Type;

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    iput p1, p0, Lorg/apache/poi/style/LineHeight;->value:F

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;->EXACT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;

    if-ne p1, v2, :cond_2

    sget-object p1, Lorg/apache/poi/style/LineHeight$Type;->EXACT:Lorg/apache/poi/style/LineHeight$Type;

    iput-object p1, p0, Lorg/apache/poi/style/LineHeight;->type:Lorg/apache/poi/style/LineHeight$Type;

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    iput p1, p0, Lorg/apache/poi/style/LineHeight;->value:F

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/style/LineHeight$Type;->AUTO:Lorg/apache/poi/style/LineHeight$Type;

    iput-object p1, p0, Lorg/apache/poi/style/LineHeight;->type:Lorg/apache/poi/style/LineHeight$Type;

    const-wide/high16 v2, 0x406e000000000000L    # 240.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p1

    iput p1, p0, Lorg/apache/poi/style/LineHeight;->value:F

    :cond_3
    :goto_0
    return-void
.end method

.method public setDocGridLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/style/LineHeight;->docGridLine:Z

    return-void
.end method

.method public setLinePitch(Lorg/apache/poi/style/UnitValue;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/style/LineHeight;->linePitch:Lorg/apache/poi/style/UnitValue;

    return-void
.end method

.method public toStyle()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Please use toStyle(float)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toStyle(F)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/poi/style/LineHeight$1;->$SwitchMap$org$apache$poi$style$LineHeight$Type:[I

    iget-object v1, p0, Lorg/apache/poi/style/LineHeight;->type:Lorg/apache/poi/style/LineHeight$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lorg/apache/poi/style/LineHeight;->value:F

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/style/LineHeight;->getAtLeastStyle(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/style/LineHeight;->getExactStyle(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/style/LineHeight;->getAutoStyle(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
