.class public Lcom/sun/org/apache/xalan/internal/templates/ElemElement;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemUse;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x48147bf6a23adefL


# instance fields
.field protected m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field protected m_namespace_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_namespace_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method


# virtual methods
.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_namespace_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
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

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_namespace_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method public constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p4}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-interface {v0, p2, p3, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p3, v2, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p4}, Lcom/sun/org/apache/xalan/internal/templates/ElemUse;->execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    :goto_0
    invoke-virtual {p4, p0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Z)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p3, p0, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-interface {v0, p2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "WG_COULD_NOT_RESOLVE_PREFIX"

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2, v3, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, ""

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->isSimple()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v0

    const-string v1, "name"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    invoke-virtual {v0, p0, v2, v1}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v5

    goto/16 :goto_6

    :cond_2
    if-eqz v4, :cond_a

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/QName;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_namespace_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    if-eqz v8, :cond_7

    invoke-virtual {v8, v2, v3, p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v1, v7, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->resolvePrefix(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v5, v6

    goto :goto_1

    :cond_4
    move-object v5, v1

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v6, v0

    move-object v7, v5

    move-object v5, v1

    goto :goto_6

    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v1

    const-string v2, "ER_NULL_URI_NAMESPACE"

    invoke-virtual {v1, p0, v2}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_5

    :cond_7
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_8

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :catch_0
    move-object v6, v1

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v2

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v0, v3}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v1

    goto :goto_6

    :cond_9
    move-object v6, v1

    goto :goto_5

    :catch_1
    :goto_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v1

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    move-object v7, v5

    :goto_5
    move-object v5, v4

    :goto_6
    invoke-virtual {p0, v5, v7, v6, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_b
    return-void
.end method

.method public getName()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getNamespace()Lcom/sun/org/apache/xalan/internal/templates/AVT;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_namespace_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "element"

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method public resolvePrefix(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-object p2
.end method

.method public setName(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_name_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method

.method public setNamespace(Lcom/sun/org/apache/xalan/internal/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;->m_namespace_avt:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    return-void
.end method
