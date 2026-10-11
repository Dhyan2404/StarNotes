.class Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/TableCellHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/convert/htmlgen/TableCellHandler<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;",
        ">;"
    }
.end annotation


# instance fields
.field private cellIndex:I

.field private cellPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

.field private cellStyles:Lorg/apache/poi/style/TableCellStyles;

.field private context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

.field private gridSpan:I

.field private listFetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

.field private paragraphSize:I

.field private rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

.field private tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    iput-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    iput p4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellIndex:I

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->initTableCellStyles()V

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

    invoke-virtual {p1}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getGridSpan()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->gridSpan:I

    return-void
.end method

.method private getSpace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)I
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;->getSpace()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method private initTableCellStyles()V
    .locals 3

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;-><init>(Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

    new-instance v1, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

    invoke-direct {v1, v0}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;-><init>(Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;)V

    iput-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->listFetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->rowPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableRowPropertyFetcher;->getTablePropertyFetcher()Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->listFetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;)V

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;->getTblPropertyFromStyle()Lorg/apache/poi/convert/xwpf/property/TblPropertyFetcher;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->listFetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

    invoke-virtual {v1, v0}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;)V

    :cond_0
    new-instance v0, Lorg/apache/poi/style/TableCellStyles;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->listFetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

    iget v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellIndex:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/style/TableCellStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;I)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellStyles:Lorg/apache/poi/style/TableCellStyles;

    return-void
.end method

.method private parseBorderSpace([Lorg/apache/poi/style/UnitValue;)V
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->listFetcher:Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;

    invoke-virtual {v2}, Lorg/apache/poi/convert/xwpf/property/TableCellPropertyListFetcher;->getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    aget-object v3, v2, v1

    invoke-direct {p0, v3}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->getSpace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-direct {p0, v4}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->getSpace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object v3

    aput-object v3, p1, v0

    aget-object v0, v2, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->getSpace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)I

    move-result v0

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->getSpace(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/style/UnitValue;->fromPX(D)Lorg/apache/poi/style/UnitValue;

    move-result-object p0

    aput-object p0, p1, v1

    :cond_1
    return-void
.end method

.method private processTableRowSpan(Ljava/util/Map;Lorg/jsoup/nodes/Element;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jsoup/nodes/Element;",
            ">;",
            "Lorg/jsoup/nodes/Element;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellPropertyFetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/property/XWPFTableCellPropertyFetcher;->getVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge;->RESTART:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    const-string v2, "rowspan"

    if-ne v0, v1, :cond_0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "1"

    invoke-virtual {p2, v2, p0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge;->CONTINUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMerge$Enum;

    if-ne v0, p2, :cond_2

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Element;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_1
    return p1

    :cond_2
    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public getGridSpan()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->gridSpan:I

    return p0
.end method

.method public getParagraphSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->paragraphSize:I

    return p0
.end method

.method public handleTableCell(Ljava/util/Map;[Lorg/apache/poi/style/UnitValue;Lorg/jsoup/nodes/Element;III)V
    .locals 9
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

    iget-object p4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p4}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object p4

    invoke-virtual {p4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableCell()Lorg/jsoup/nodes/Element;

    move-result-object p5

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->tableCell:Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFTableCell;->getBodyElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->parseBorderSpace([Lorg/apache/poi/style/UnitValue;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    iget v7, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->paragraphSize:I

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    add-int/lit8 v8, v3, 0x1

    move-object v2, p5

    move v4, p2

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->handleBodyElement(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Lorg/jsoup/nodes/Element;III)I

    move-result v0

    add-int/2addr v7, v0

    iput v7, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->paragraphSize:I

    move v3, v8

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result p2

    if-gtz p2, :cond_1

    invoke-virtual {p4}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createParagraph()Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {p5, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_1
    invoke-direct {p0, p1, p5}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->processTableRowSpan(Ljava/util/Map;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellStyles:Lorg/apache/poi/style/TableCellStyles;

    invoke-virtual {p1}, Lorg/apache/poi/style/TableCellStyles;->toStyle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "td"

    invoke-virtual {p4, p5, p2, p1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->cellStyles:Lorg/apache/poi/style/TableCellStyles;

    invoke-virtual {p1}, Lorg/apache/poi/style/TableCellStyles;->getWidthStyle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->setStyle(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Z

    invoke-virtual {p3, p5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_2
    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableCellHandler;->gridSpan:I

    const/4 p1, 0x1

    if-le p0, p1, :cond_3

    const-string p1, "colspan"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p1, p0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_3
    return-void
.end method
