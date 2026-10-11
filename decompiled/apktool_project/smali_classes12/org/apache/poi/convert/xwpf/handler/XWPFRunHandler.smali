.class Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;
.super Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private partList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/IRunPart;",
            ">;"
        }
    .end annotation
.end field

.field private reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

.field private textStyles:Lorg/apache/poi/style/TextRunStyles;

.field private xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    iput-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->init()V

    return-void
.end method

.method private getCTPicture(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "declare namespace pic=\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' .//pic:pic"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v2, p0, v1

    instance-of v3, v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    return-object v2

    :cond_3
    :try_start_0
    sget-object v3, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getReviseState(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)Lorg/apache/poi/xwpf/usermodel/ReviseState;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "w:ins"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->INSERT:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    return-object p0

    :cond_0
    const-string v0, "w:del"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->NORMAL:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    return-object p0
.end method

.method public static handleRun(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRun;Lorg/jsoup/nodes/Element;III)Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFHyperlinkHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFHyperlinkHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFFieldHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;-><init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    .line 6
    :goto_0
    invoke-interface {v0, p2, p3, p4, p5}, Lorg/apache/poi/convert/htmlgen/RunHandler;->handleRun(Lorg/jsoup/nodes/Element;III)V

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->close()V

    return-object v0
.end method

.method private handlerRunPart(Lorg/apache/poi/xwpf/usermodel/IRunPart;Lorg/jsoup/nodes/Element;III)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->textStyles:Lorg/apache/poi/style/TextRunStyles;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;->handleRunPart(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;Lorg/apache/poi/xwpf/usermodel/IRunPart;Lorg/jsoup/nodes/Element;Lorg/apache/poi/style/TextRunStyles;III)Lorg/apache/poi/convert/xwpf/handler/XWPFRunPartHandler;

    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->readReviseState()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->rebuildFromXml()V

    invoke-direct {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->initTextStyles()V

    return-void
.end method

.method private initTextStyles()V
    .locals 5

    new-instance v0, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v1, v1, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->theme:Lorg/apache/poi/xwpf/usermodel/XWPFTheme;

    invoke-direct {v0, v1}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFTheme;)V

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    invoke-virtual {v1}, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->peekLast()Lorg/apache/poi/style/ParagraphStyles;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;

    invoke-direct {v3, v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v3, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getStyle(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    iget-object v3, v3, Lorg/apache/poi/convert/xwpf/handler/XWPFContext;->styles:Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;->getUsedStyleList(Lorg/apache/poi/xwpf/usermodel/XWPFStyle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;

    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFStyle;->getCTStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;

    invoke-direct {v4, v3}, Lorg/apache/poi/convert/xwpf/property/RunPropertyFetcher;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/style/ParagraphStyles;->getTextStyles()Lorg/apache/poi/style/TextStyles;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/style/TextStyles;->getFetcher()Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;->addFetcher(Ljava/util/List;)V

    :cond_2
    new-instance v2, Lorg/apache/poi/style/TextRunStyles;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->isInsert()Z

    move-result v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/poi/style/TextRunStyles;-><init>(Lorg/apache/poi/style/ParagraphStyles;Lorg/apache/poi/convert/xwpf/property/RunPropertyListFetcher;Z)V

    iput-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->textStyles:Lorg/apache/poi/style/TextRunStyles;

    return-void
.end method

.method private parseCTDrawing(Lorg/apache/xmlbeans/XmlObject;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseCTPicture(Lorg/apache/xmlbeans/XmlObject;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lorg/apache/poi/ooxml/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private readReviseState()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->getReviseState(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)Lorg/apache/poi/xwpf/usermodel/ReviseState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    return-void
.end method

.method private rebuildFromDrawing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)I
    .locals 6

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v0, "./*"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->getCTPicture(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    iget-object v5, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v4, v2, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-direct {v3, v4, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFAnchorPicture;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;)V

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->getCTPicture(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFInlinePicture;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    iget-object v5, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v4, v2, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-direct {v3, v4, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFInlinePicture;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;)V

    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return v0
.end method

.method private rebuildFromXml()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->isDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->rebuildFromXml(Lorg/apache/xmlbeans/XmlObject;)V

    return-void
.end method

.method private rebuildFromXml(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 5

    .line 3
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v0, "./*"

    .line 4
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFRuby;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    invoke-direct {v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRuby;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    invoke-direct {v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFCTText;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    invoke-direct {v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    invoke-direct {v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFFldChar;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_4
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;

    if-eqz v1, :cond_5

    .line 16
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFEmpty;-><init>(C)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_5
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    if-eqz v1, :cond_6

    .line 18
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    invoke-direct {v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFBreak;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_6
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    if-eqz v1, :cond_8

    .line 20
    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    .line 21
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 22
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "footnoteReference"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 23
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getFootnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFFootnote;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    .line 24
    invoke-virtual {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getEndnoteByID(I)Lorg/apache/poi/xwpf/usermodel/XWPFEndnote;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    .line 25
    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFFtnEdnRef;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFAbstractFootnoteEndnote;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 26
    :cond_8
    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    if-eqz v1, :cond_9

    .line 27
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;

    new-instance v3, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    iget-object v4, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-direct {v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFPicturePart;-><init>(Lorg/apache/poi/xwpf/usermodel/XWPFPicture;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 28
    :cond_9
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    if-eqz v1, :cond_a

    .line 29
    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->rebuildFromDrawing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)I

    goto/16 :goto_0

    .line 30
    :cond_a
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;

    if-eqz v1, :cond_b

    .line 31
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :cond_b
    instance-of v1, v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    if-eqz v1, :cond_c

    .line 33
    iget-object v1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;

    iget-object v3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 34
    :cond_c
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    invoke-virtual {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->buildFromXmlAnyType(Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;)V

    goto/16 :goto_0

    .line 36
    :cond_d
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void
.end method


# virtual methods
.method public buildFromXmlAnyType(Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p1

    const-string v2, "./*"

    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Choice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->parseCTDrawing(Lorg/apache/xmlbeans/XmlObject;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "Fallback"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->parseCTPicture(Lorg/apache/xmlbeans/XmlObject;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->rebuildFromDrawing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)I

    move-result v0

    if-lez v0, :cond_3

    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;

    iget-object v2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFGraphicalFrame;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->xwpfRun:Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-static {v0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/IRunPart;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v1}, Lorg/apache/poi/xwpf/usermodel/IRunPart;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleRun(Lorg/jsoup/nodes/Element;III)V
    .locals 7

    add-int/lit8 p4, p4, 0x1

    .line 8
    iget-object p2, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 9
    iget-object p3, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->partList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xwpf/usermodel/IRunPart;

    add-int/lit8 v6, v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->handlerRunPart(Lorg/apache/poi/xwpf/usermodel/IRunPart;Lorg/jsoup/nodes/Element;III)V

    move v3, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDelete()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->DELETE:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsert()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->reviseState:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/ReviseState;->INSERT:Lorg/apache/poi/xwpf/usermodel/ReviseState;

    if-ne p0, v0, :cond_0

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

    const-string v1, "XWPFRunHandler{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/convert/xwpf/handler/XWPFRunHandler;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
