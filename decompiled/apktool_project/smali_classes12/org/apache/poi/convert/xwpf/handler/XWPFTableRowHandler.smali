.class Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/TableRowHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/convert/htmlgen/TableRowHandler<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

.field private paragraphSize:I

.field private rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

.field private rowStyles:Lorg/apache/poi/style/TableRowStyles;

.field private tablePropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

.field private tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->tablePropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    iput-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->initTableRowStyles()V

    return-void
.end method

.method private initTableRowStyles()V
    .locals 3

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->tablePropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;-><init>(Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    new-instance v1, Lorg/apache/poi/style/TableRowStyles;

    invoke-direct {v1, v0}, Lorg/apache/poi/style/TableRowStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;)V

    iput-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->rowStyles:Lorg/apache/poi/style/TableRowStyles;

    return-void
.end method

.method private parseBorderSpace([Lorg/apache/poi/style/UnitValue;)V
    .locals 7

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    invoke-virtual {v2}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getTrPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPr;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrPrBase;->getTblCellSpacingList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    invoke-direct {p0, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    aput-object p0, p1, v1

    aput-object p0, p1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    invoke-direct {p0, v3}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    aput-object p0, p1, v1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    invoke-direct {p0, v3}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    invoke-direct {p0, v3}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v3

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v3

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    aput-object p0, p1, v1

    :cond_5
    :goto_0
    return-void
.end method

.method private parseWidth(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)D
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ooxml/util/POIXMLUnits;->parseLength(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->toDXA(J)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public getParagraphSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->paragraphSize:I

    return p0
.end method

.method public handleTableRow(Ljava/util/Map;[Lorg/apache/poi/style/UnitValue;Lorg/jsoup/nodes/Element;III)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jsoup/nodes/Element;",
            ">;[",
            "Lorg/apache/poi/style/UnitValue;",
            "Lorg/jsoup/nodes/Element;",
            "III)V"
        }
    .end annotation

    move-object v0, p0

    add-int/lit8 v8, p6, 0x1

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableRow()Lorg/jsoup/nodes/Element;

    move-result-object v9

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->rowStyles:Lorg/apache/poi/style/TableRowStyles;

    invoke-virtual {v1}, Lorg/apache/poi/style/TableRowStyles;->toStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->setStyle(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Z

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->tableRow:Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;->getTableCells()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->checkAbortConvert()V

    new-instance v13, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    invoke-direct {v13, v2, v3, v1, v12}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;I)V

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move v5, v12

    move v6, v10

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->handleTableCell(Ljava/util/Map;[Lorg/apache/poi/style/UnitValue;Lorg/jsoup/nodes/Element;III)V

    iget v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->paragraphSize:I

    invoke-virtual {v13}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->getParagraphSize()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->paragraphSize:I

    invoke-virtual {v13}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->getGridSpan()I

    move-result v1

    add-int/2addr v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    invoke-virtual {v1, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object/from16 v1, p2

    invoke-direct {p0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->parseBorderSpace([Lorg/apache/poi/style/UnitValue;)V

    return-void
.end method
