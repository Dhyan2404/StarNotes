.class public Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemUse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;,
        Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field static final serialVersionUID:J = -0x78c8b870c7d06eacL


# instance fields
.field private isLiteralResultAsStylesheet:Z

.field private m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

.field private m_avts:Ljava/util/Vector;

.field private m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

.field private m_localName:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_rawName:Ljava/lang/String;

.field private m_version:Ljava/lang/String;

.field private m_xslAttr:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/Vector;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    return-object p0
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitLiteralResultElement(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)Z

    move-result p0

    return p0
.end method

.method public addLiteralResultAttribute(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addLiteralResultAttribute(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/Vector;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "#default"

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public enumerateLiteralResultAttributes()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v7

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->executeNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v8

    move v9, v0

    :goto_0
    if-ltz v9, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-interface/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0, v8}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->unexecuteNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v7, p0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    throw v0

    :catch_3
    move-exception p0

    if-eqz v0, :cond_5

    throw v0

    :cond_5
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$LiteralElementAttributes;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;)V

    return-object v0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getExtensionElementPrefixCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/StringVector;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIsLiteralResultAsStylesheet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    return p0
.end method

.method public getLiteralResultAttribute(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-object v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x4d

    return p0
.end method

.method public needToCheckExclude()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public resolvePrefixTables()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->resolvePrefixTables()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    const-string v2, ":"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_avts:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-virtual {v4, v6}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->setURI(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->setRawName(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setExcludeResultPrefixes(Lcom/sun/org/apache/xml/internal/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-void
.end method

.method public setExtensionElementPrefixes(Lcom/sun/org/apache/xml/internal/utils/StringVector;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lcom/sun/org/apache/xml/internal/utils/StringVector;

    return-void
.end method

.method public setIsLiteralResultAsStylesheet(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    return-void
.end method

.method public setXmlSpace(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->addLiteralResultAttribute(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setXmlSpace(I)V

    goto :goto_0

    :cond_0
    const-string v0, "preserve"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setXmlSpace(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public throwDOMException(SLjava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lorg/w3c/dom/DOMException;

    invoke-direct {p2, p1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method
