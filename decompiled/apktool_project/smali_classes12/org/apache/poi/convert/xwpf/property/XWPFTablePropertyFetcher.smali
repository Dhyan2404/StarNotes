.class public Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;
.super Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;
.source "SourceFile"


# instance fields
.field private colWidthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

.field private table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->readDocument()V

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initBorders()V

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->initMargin()V

    return-void
.end method

.method private getCTTblGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGrid;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGrid;

    move-result-object p0

    return-object p0
.end method

.method private getCellMargin(Ljava/util/function/Function;)D
    .locals 0
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
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblCellMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblCellMar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;->addNewTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCTBorder(Lorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getTblBorder(ZLorg/apache/poi/xwpf/usermodel/XWPFTable$Border;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0
.end method

.method public getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getCTTbl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTbl;

    move-result-object p0

    return-object p0
.end method

.method public getCellMargin(I)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/xwpf/property/AbstractTblPropertyFetcher;->getCellMarginFunction(I)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getCellMargin(Ljava/util/function/Function;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getColWidthList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->colWidthList:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->colWidthList:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getCTTblGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGrid;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridBase;->getGridColList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;->xgetW()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->colWidthList:Ljava/util/List;

    invoke-static {v1}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/ExtUnits;->dxaToPixel(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->colWidthList:Ljava/util/List;

    return-object p0
.end method

.method public getTable()Lorg/apache/poi/xwpf/usermodel/XWPFTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    return-object p0
.end method

.method public getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getTblPr(Z)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    return-object p0
.end method

.method public getTblPropertyFromStyle()Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getStyleID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;

    invoke-direct {v0, p0}, Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;)V

    return-object v0
.end method

.method public isSetTcBorders()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblBorders()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->getTblBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblBorders;

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

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getTblPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPr;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPrBase;->isSetTblCellMar()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
