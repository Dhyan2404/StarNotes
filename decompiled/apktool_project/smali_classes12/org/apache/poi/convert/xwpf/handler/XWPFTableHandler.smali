.class Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/TableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
        ">;",
        "Lorg/apache/poi/convert/htmlgen/TableHandler<",
        "Lorg/apache/poi/xwpf/usermodel/XWPFTable;",
        ">;"
    }
.end annotation


# instance fields
.field private fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

.field private table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

.field private tableStyles:Lorg/apache/poi/style/TableStyles;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFTable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->initTableStyles()V

    return-void
.end method

.method private initTableStyles()V
    .locals 3

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v2, v2, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFTable;Lorg/apache/poi/xwpf/usermodel/XWPFStyles;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    new-instance v1, Lorg/apache/poi/style/TableStyles;

    invoke-direct {v1, v0}, Lorg/apache/poi/style/TableStyles;-><init>(Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;)V

    iput-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->tableStyles:Lorg/apache/poi/style/TableStyles;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public handleBodyElement(Lorg/jsoup/nodes/Element;III)V
    .locals 17

    move-object/from16 v0, p0

    add-int/lit8 v8, p4, 0x1

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->checkAbortConvert()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTableBody()Lorg/jsoup/nodes/Element;

    move-result-object v11

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->table:Lorg/apache/poi/xwpf/usermodel/XWPFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFTable;->getRows()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->tableStyles:Lorg/apache/poi/style/TableStyles;

    invoke-virtual {v2}, Lorg/apache/poi/style/TableStyles;->getBorderSpace()[Lorg/apache/poi/style/UnitValue;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v2}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->checkAbortConvert()V

    new-instance v15, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->fetcher:Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;

    invoke-direct {v15, v2, v3, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/convert/xwpf/property/XWPFTablePropertyFetcher;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;)V

    add-int/lit8 v16, v5, 0x1

    move-object v1, v15

    move-object v2, v9

    move-object v3, v12

    move-object v4, v11

    move v6, v13

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->handleTableRow(Ljava/util/Map;[Lorg/apache/poi/style/UnitValue;Lorg/jsoup/nodes/Element;III)V

    iget v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->paragraphSize:I

    invoke-virtual {v15}, Lorg/apache/poi/convert/xwpf/handler/XWPFTableRowHandler;->getParagraphSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->paragraphSize:I

    move/from16 v5, v16

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v10}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createTable()Lorg/jsoup/nodes/Element;

    move-result-object v1

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFTableHandler;->tableStyles:Lorg/apache/poi/style/TableStyles;

    invoke-virtual {v0}, Lorg/apache/poi/style/TableStyles;->toStyle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "t"

    invoke-virtual {v10, v2, v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getOrCreateCssClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "class"

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_1
    return-void
.end method
