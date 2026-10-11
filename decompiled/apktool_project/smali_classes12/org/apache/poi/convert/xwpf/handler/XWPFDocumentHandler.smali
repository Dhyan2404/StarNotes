.class public Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/DocumentHandler;


# instance fields
.field private final bodyElementsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/style/page/PageStyles;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

.field private document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

.field private documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

.field private final documentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation
.end field

.field private documentParaSize:I

.field private footerHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFFooterHandler;

.field private final headerFooterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/style/page/PageStyles;",
            "Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private headerHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderHandler;

.field private pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

.field private final pageSectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/style/page/PageStyles;",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;",
            ">;"
        }
    .end annotation
.end field

.field private paraSize:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->bodyElementsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->headerFooterMap:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageSectMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentList:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v0, p1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getDocumentFacade()Lorg/apache/poi/convert/HtmlDocumentFacade;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFPageHandler;

    invoke-direct {v0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPageHandler;-><init>(Lorg/apache/poi/convert/htmlgen/ConverterContext;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setAddMathJarScript(Z)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setAddDividerShowHideScript(Z)V

    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderHandler;

    invoke-direct {v0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->headerHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderHandler;

    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFFooterHandler;

    invoke-direct {v0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFFooterHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->footerHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFFooterHandler;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->rebuildBodyElements()V

    return-void
.end method

.method private addNoteAndCommentToDocument()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->commentContainer:Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->getContentContainer()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, v1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->commentContainer:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v0, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->getContentContainer()Lorg/jsoup/nodes/Element;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->noteContainer:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_1
    return-void
.end method

.method private addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/convert/HtmlDocumentFacade;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private createColumnBlock(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/page/PageStyles;)Lorg/jsoup/nodes/Element;
    .locals 5

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageStyles;->getPageColumns()Lorg/apache/poi/style/page/PageColumns;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageColumns;->getIndex()I

    move-result v0

    const-string v1, "grid-index"

    const-string v2, "d"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageColumns;->toStyle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageColumns;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageColumns;->getGridItemStyle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lorg/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createBlock()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageColumns;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/apache/poi/style/page/PageColumns;->getGridItemStyle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v2, p2}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->addStyleClass(Lorg/jsoup/nodes/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method private createNewDocument(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createNewDocument()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createPageBlocks(Lorg/apache/poi/style/page/PageStyles;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->handleHeaderFooter(Lorg/apache/poi/style/page/PageStyles;)V

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentList:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->resetNewDocument()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    return-void
.end method

.method private handleBodyElements()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->bodyElementsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-direct {p0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->handlePageBodyElements(Ljava/util/Map$Entry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleHeaderFooter(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->isNewPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->headerFooterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->headerHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderHandler;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->getHeaderContainer()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHeaderHandler;->handleHeader(Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;Lorg/jsoup/nodes/Element;)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->footerHandler:Lorg/apache/poi/convert/xwpf/handler/XWPFFooterHandler;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {p0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->getFooterContainer()Lorg/jsoup/nodes/Element;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFFooterHandler;->handleFooter(Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;Lorg/jsoup/nodes/Element;)V

    :cond_0
    return-void
.end method

.method private handlePage(Lorg/apache/poi/style/page/PageStyles;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setParaSize(I)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->handlePage(Lorg/apache/poi/style/page/PageStyles;)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->isNewDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v0}, Lorg/apache/poi/convert/htmlgen/PageHandler;->resetNewDocument()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentFacade:Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-virtual {v1}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v0, p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->setCurrentPage(Lorg/apache/poi/style/page/PageStyles;)V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageSectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    invoke-virtual {v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->setCurrentSectPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->handleHeaderFooter(Lorg/apache/poi/style/page/PageStyles;)V

    return-void
.end method

.method private handlePageBodyElements(Ljava/util/Map$Entry;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/apache/poi/style/page/PageStyles;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IBodyElement;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/style/page/PageStyles;

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->handlePage(Lorg/apache/poi/style/page/PageStyles;)V

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->getContentContainer()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->hasColumn(Lorg/apache/poi/style/page/PageStyles;)Z

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v12, 0x0

    move-object v13, v2

    move v8, v12

    move v14, v8

    move v15, v14

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    iget v10, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    iget-object v5, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    add-int/lit8 v16, v8, 0x1

    const/16 v17, 0x0

    move-object v7, v2

    move v9, v11

    move/from16 v18, v10

    move/from16 v10, v17

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/convert/xwpf/handler/XWPFBodyElementHandler;->handleBodyElement(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IBodyElement;Lorg/jsoup/nodes/Element;III)I

    move-result v5

    add-int v10, v18, v5

    iput v10, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v6, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v6}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->isColumnBreak()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {v0, v13, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->createColumnBlock(Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/page/PageStyles;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    iget-object v6, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v6}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getBreakElement()Lorg/jsoup/nodes/Element;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move v14, v5

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v6, v10}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setParaSize(I)V

    iget-object v6, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v6}, Lorg/apache/poi/convert/htmlgen/PageHandler;->paragraphSizeExceedLimit()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->createNewDocument(Lorg/apache/poi/style/page/PageStyles;)V

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->getContentContainer()Lorg/jsoup/nodes/Element;

    move-result-object v2

    iget-object v6, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v6}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->isPageBreak()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v6}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getBreakElement()Lorg/jsoup/nodes/Element;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_1
    move-object v13, v2

    move v15, v5

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v5}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->isPageBreak()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v2, v1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->createPageBlocks(Lorg/apache/poi/style/page/PageStyles;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->handleHeaderFooter(Lorg/apache/poi/style/page/PageStyles;)V

    iget-object v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {v2}, Lorg/apache/poi/convert/htmlgen/PageHandler;->getContentContainer()Lorg/jsoup/nodes/Element;

    move-result-object v2

    iget-object v5, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v5}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->getBreakElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object v13, v2

    :cond_3
    :goto_1
    iget-object v5, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v5}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->resetBreakType()V

    move/from16 v8, v16

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-nez v14, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/style/page/PageStyles;->getPageColumns()Lorg/apache/poi/style/page/PageColumns;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/poi/style/page/PageColumns;->getColumnWidth()[F

    move-result-object v1

    aget v1, v1, v12

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "px;"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->setStyle(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Z

    :cond_5
    if-eqz v15, :cond_6

    iget-object v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentList:Ljava/util/ArrayList;

    iget v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentParaSize:I

    iget v3, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    invoke-static {v1, v2, v3}, Lorg/apache/poi/convert/WordToHtmlUtils;->compactDocument(Ljava/util/List;II)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    iget v2, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentParaSize:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    :cond_6
    return-void
.end method

.method private hasColumn(Lorg/apache/poi/style/page/PageStyles;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/style/page/PageStyles;->getPageColumns()Lorg/apache/poi/style/page/PageColumns;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/style/page/PageColumns;->hasColumn()Z

    move-result p0

    return p0
.end method

.method private rebuildBodyElements()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getBodyElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/IBodyElement;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/apache/poi/xwpf/usermodel/IBodyElement;->getElementType()Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/xwpf/usermodel/BodyElementType;->PARAGRAPH:Lorg/apache/poi/xwpf/usermodel/BodyElementType;

    if-ne v3, v4, :cond_0

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->getCTP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->getPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->isSetSectPr()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/style/page/PageStyles;->parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)Lorg/apache/poi/style/page/PageStyles;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->bodyElementsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/style/page/PageStyles;->setPageIndex(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/style/page/PageStyles;->setBodyElementSize(I)V

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageSectMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->bodyElementsMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->headerFooterMap:Ljava/util/Map;

    new-instance v5, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    iget-object v6, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-direct {v5, v6, v2}, Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFDocument;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, v1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDocument()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;->getSectPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/style/page/PageStyles;->parse(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;)Lorg/apache/poi/style/page/PageStyles;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageSectMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->bodyElementsMap:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->headerFooterMap:Ljava/util/Map;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getHeaderFooterPolicy()Lorg/apache/poi/xwpf/model/XWPFHeaderFooterPolicy;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->document:Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public getDocumentList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleDocument()V
    .locals 3

    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFPropertyHandler;->handleProperties()V

    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFCommentsHandler;->handComments()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->handleBodyElements()V

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentParaSize:I

    iget v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->paraSize:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->compactDocument(Ljava/util/List;II)Z

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->addNoteAndCommentToDocument()V

    return-void
.end method

.method public setAbort(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/ConverterContext;->setAbort(Z)V

    return-void
.end method

.method public setDocumentParaSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->documentParaSize:I

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFDocumentHandler;->pageHandler:Lorg/apache/poi/convert/htmlgen/PageHandler;

    invoke-virtual {p0, p1}, Lorg/apache/poi/convert/htmlgen/PageHandler;->setDocumentParaSize(I)V

    return-void
.end method
