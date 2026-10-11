.class public Lorg/apache/poi/style/page/PageColumns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/style/Styles;


# instance fields
.field columnWidth:[F

.field equalWidth:Z

.field index:I

.field num:I

.field sep:Z

.field spaces:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    return-void
.end method

.method private getAverageSpace()F
    .locals 4

    iget v0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    aget p0, p0, v2

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    aget v1, v1, v2

    add-float/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    int-to-float p0, v1

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->getFormatValue(D)F

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/style/page/PageColumns;

    iget v2, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    iget v3, p1, Lorg/apache/poi/style/page/PageColumns;->num:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lorg/apache/poi/style/page/PageColumns;->sep:Z

    iget-boolean v3, p1, Lorg/apache/poi/style/page/PageColumns;->sep:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    iget-object v3, p1, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    iget-object p1, p1, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getColumnWidth()[F
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    return-object p0
.end method

.method public getGridItemStyle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grid-area: 1 / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageColumns;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/style/page/PageColumns;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageColumns;->index:I

    return p0
.end method

.method public getNum()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    return p0
.end method

.method public getSpaces()[F
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    return-object p0
.end method

.method public hasColumn()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget p0, p0, Lorg/apache/poi/style/page/PageColumns;->index:I

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/poi/style/page/PageColumns;->sep:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isEqualWidth()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/style/page/PageColumns;->equalWidth:Z

    return p0
.end method

.method public isSep()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/style/page/PageColumns;->sep:Z

    return p0
.end method

.method public parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;Lorg/apache/poi/style/page/PageSize;Lorg/apache/poi/style/page/PageMargin;)V
    .locals 3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->isSetCols()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->getCols()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->isSetNum()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->getNum()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->xgetSep()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/style/page/PageColumns;->sep:Z

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->xgetEqualWidth()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseOnOff(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/style/page/PageColumns;->equalWidth:Z

    iget v0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->getColList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/CollectionUtils;->isNonBlank(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    if-ne p1, p2, :cond_3

    :goto_0
    iget p1, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    if-ge v2, p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;->xgetW()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p2

    aput p2, p1, v2

    iget-object p1, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;->xgetSpace()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p2

    aput p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    iget p0, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Expect col size: %d but is %d"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;->xgetSpace()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/ExtUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)F

    move-result p1

    iget p2, p2, Lorg/apache/poi/style/page/PageSize;->width:F

    iget v0, p3, Lorg/apache/poi/style/page/PageMargin;->left:F

    sub-float/2addr p2, v0

    iget p3, p3, Lorg/apache/poi/style/page/PageMargin;->right:F

    sub-float/2addr p2, p3

    iget p3, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    int-to-float v0, p3

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    sub-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    :goto_1
    iget p3, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    aput p2, p3, v2

    iget-object p3, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    aput p1, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageColumns{columnWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/page/PageColumns;->spaces:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/apache/poi/style/page/PageColumns;->sep:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display: grid;grid-gap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/style/page/PageColumns;->getAverageSpace()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "grid-template-columns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/poi/style/page/PageColumns;->num:I

    if-ge v1, v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/style/page/PageColumns;->columnWidth:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "px"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
