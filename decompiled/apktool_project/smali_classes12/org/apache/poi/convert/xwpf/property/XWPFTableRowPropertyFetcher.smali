.class public Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;
.super Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;
.source "SourceFile"


# instance fields
.field private tablePropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

.field private tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->tablePropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->readDocument()V

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initBorders()V

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initMargin()V

    return-void
.end method

.method private getCTTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCTTblPrEx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrEx;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->isSetTblBorders()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getCellMargin(Ljava/util/function/Function;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
            ">;)D"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCTTblPrEx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrEx;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 3
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCTTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;->getCTBorder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0
.end method

.method public getCTTblPrEx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrEx;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTblPrEx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTblPrEx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrEx;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCellMargin(I)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->getCellMarginFunction(I)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCellMargin(Ljava/util/function/Function;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object p0

    return-object p0
.end method

.method public getTablePropertyFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->tablePropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    return-object p0
.end method

.method public getTableRow()Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    return-object p0
.end method

.method public getTableRowHeight()Lorg/apache/poi/style/UnitValue;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->sizeOfTrHeightArray()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getTrHeightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;->xgetVal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->isSetTrPr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCtRow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRow;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isSetTcBorders()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCTTblPrEx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrEx;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->isSetTblBorders()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetLeft()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetRight()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetTop()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;->isSetBottom()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public isSetTcMar()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getCTTblPrEx()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrEx;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrExBase;->isSetTblCellMar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
