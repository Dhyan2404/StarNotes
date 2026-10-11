.class public Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/sax/TemplatesHandler;
.implements Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;
.implements Lcom/sun/org/apache/xml/internal/utils/NodeConsumer;


# static fields
.field public static final STYPE_IMPORT:I = 0x3

.field public static final STYPE_INCLUDE:I = 0x2

.field public static final STYPE_ROOT:I = 0x1


# instance fields
.field m_baseIdentifiers:Ljava/util/Stack;

.field private m_docOrderCount:I

.field private m_elementID:I

.field private m_elems:Ljava/util/Stack;

.field private m_fragmentID:I

.field private m_fragmentIDString:Ljava/lang/String;

.field private m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

.field private m_importStack:Ljava/util/Stack;

.field private m_incremental:Z

.field m_lastPoppedStylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

.field m_nsSupportStack:Ljava/util/Stack;

.field private m_optimize:Z

.field private m_originatingNode:Lorg/w3c/dom/Node;

.field private m_parsingComplete:Z

.field private m_prefixMappings:Ljava/util/Vector;

.field private m_processors:Ljava/util/Stack;

.field private m_schema:Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;

.field private m_shouldProcess:Z

.field private m_source_location:Z

.field private m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

.field private m_stylesheetLevel:I

.field private m_stylesheetLocatorStack:Ljava/util/Stack;

.field private m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

.field m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

.field private m_stylesheetType:I

.field private m_stylesheets:Ljava/util/Stack;

.field private warnedAboutOldXSLTNamespace:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_optimize:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_incremental:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_source_location:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLevel:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_parsingComplete:Z

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elementID:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_fragmentID:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetType:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_schema:Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_docOrderCount:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->warnedAboutOldXSLTNamespace:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    const-string v1, "document"

    const-class v2, Lcom/sun/org/apache/xalan/internal/templates/FuncDocument;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    const-string v1, "format-number"

    const-class v2, Lcom/sun/org/apache/xalan/internal/templates/FuncFormatNumb;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_optimize:Z

    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_incremental:Z

    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_source_location:Z

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->init(Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;)V

    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkForFragmentID(Lorg/xml/sax/Attributes;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elementID:I

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_fragmentID:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->startNonText(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)V

    :cond_0
    return-void
.end method

.method private getElemVersion()D
    .locals 8

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move-wide v2, v0

    :goto_0
    cmpl-double v4, v2, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v4, :cond_0

    cmpl-double v7, v2, v5

    if-nez v7, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/UnImplNode;->getXmlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-wide v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    move-wide v2, v5

    :cond_2
    return-wide v2
.end method

.method private stackContains(Ljava/util/Stack;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const-string v0, "text()"

    invoke-virtual {v1, v4, v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "ER_NONWHITESPACE_NOT_ALLOWED_IN_POSITION"

    invoke-static {p1, v4}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->characters(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;[CII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public createMatchPatternXPath(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;-><init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {v0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v6

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionVisitor;-><init>(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {v0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    return-object v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->recompose()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->startNonText(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;)V

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLevel:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLevel:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popSpaceHandling()V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_parsingComplete:Z

    return-void

    :cond_3
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string v0, "ER_NO_STYLESHEETROOT"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elementID:I

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_fragmentID:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->flushCharacters()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popSpaceHandling()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->endElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    .line 3
    instance-of v1, p2, Ljavax/xml/transform/TransformerException;

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    move-object p2, v1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p2, Ljavax/xml/transform/TransformerException;

    :goto_0
    if-eqz p0, :cond_2

    .line 6
    :try_start_0
    invoke-interface {p0, p2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 8
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 9
    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    .line 14
    :try_start_0
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method public getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    return-object p0
.end method

.method public getElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIncremental()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_incremental:Z

    return p0
.end method

.method public getLastPoppedStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-object p0
.end method

.method public getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getDOMsystemID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x1

    const-string p2, "can\'t process a context node in StylesheetHandler!"

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->assertion(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/helpers/NamespaceSupport;

    return-object p0
.end method

.method public getOptimize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_optimize:Z

    return p0
.end method

.method public getOriginatingNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->getElemDef()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v2

    if-nez v2, :cond_2

    instance-of v3, v0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetDoc;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_1

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetElement;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getElemVersion()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string p1, "ER_NOT_ALLOWED_IN_POSITION"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-object v2
.end method

.method public getSchema()Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_schema:Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;

    return-object p0
.end method

.method public getSource_location()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_source_location:Z

    return p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    :goto_0
    return-object p0
.end method

.method public getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    return-object p0
.end method

.method public getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_optimize:Z

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->setOptimizer(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_incremental:Z

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->setIncremental(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_source_location:Z

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->setSource_location(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    return-object p0
.end method

.method public getStylesheetType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetType:I

    return p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTemplates()Ljavax/xml/transform/Templates;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    return-object p0
.end method

.method public handlesNullPrefixes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->ignorableWhitespace(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;[CII)V

    return-void
.end method

.method public importStackContains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->stackContains(Ljava/util/Stack;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public init(Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_schema:Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->getElementProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushNewNamespaceSupport()V

    return-void
.end method

.method public isSpacePreserve()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->peek()Z

    move-result p0

    return p0
.end method

.method public isStylesheetParsingComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_parsingComplete:Z

    return p0
.end method

.method public nextUid()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_docOrderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_docOrderCount:I

    return v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->notationDecl(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public popBaseIndentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public popElemTemplateElement()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public popImportURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public popNamespaceSupport()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public popProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    return-object p0
.end method

.method public popSpaceHandling()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->pop()Z

    return-void
.end method

.method public popStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, ""

    move-object v0, p1

    :goto_0
    :try_start_0
    const-string v3, "xalan-doc-cache-off"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "xalan:doc-cache-off"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "doc-cache-off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.sun.org.apache.xalan.internal.xslt.extensions.Redirect"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;

    iput-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;->m_doc_cache_off:Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "xalan:doc-cache-off not allowed here!"

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->flushCharacters()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->processingInstruction(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushBaseIndentifier(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushElemTemplateElement(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setUid(I)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushImportURL(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushNewNamespaceSupport()V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/utils/NamespaceSupport2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushProcessor(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushSpaceHandling(Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const-string v0, "xml:space"

    .line 2
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->peekOrFalse()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->push(Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "preserve"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->push(Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "default"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->push(Z)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 10
    :try_start_0
    new-instance v1, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_ILLEGAL_XMLSPACE_VALUE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->peek()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->push(Z)Z

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v0
.end method

.method public pushSpaceHandling(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_spacePreserveStack:Lcom/sun/org/apache/xml/internal/utils/BoolStack;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->push(Z)Z

    return-void
.end method

.method public pushStylesheet(Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetRoot:Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->resolveEntity(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOriginatingNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setStylesheetType(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetType:I

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->skippedEntity(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetLevel:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushSpaceHandling(Z)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_elementID:I

    invoke-direct {p0, p4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->checkForFragmentID(Lorg/xml/sax/Attributes;)V

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->flushCharacters()V

    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushSpaceHandling(Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushProcessor(Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_shouldProcess:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popSpaceHandling()V

    :goto_1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getCurrentProcessor()Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->unparsedEntityDecl(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object p2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getLocator()Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->m_stylesheetProcessor:Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
