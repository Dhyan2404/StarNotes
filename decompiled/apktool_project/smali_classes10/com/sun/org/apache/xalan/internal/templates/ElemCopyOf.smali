.class public Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;
.super Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x672a43ef2f404637L


# instance fields
.field public m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method


# virtual methods
.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->getNodeName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CANNOT_ADD"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPath;->getExpression()Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v1, v0, v2, p0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object v1

    const-string v4, "select"

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    move-object v3, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireSelectedEvent(ILcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/XPath;Lcom/sun/org/apache/xpath/internal/objects/XObject;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object v1

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v5, 0x3

    if-eq v2, v5, :cond_7

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v1, v2, v4, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-static {v1, v7, v0}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->outputResultTreeFragment(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/XPathContext;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v2

    new-instance v4, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;

    invoke-direct {v4, p1, v1}, Lcom/sun/org/apache/xalan/internal/transformer/TreeWalker2Result;-><init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :cond_4
    :goto_0
    invoke-interface {v2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v6, v5, :cond_8

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNodeType(I)S

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_5

    invoke-interface {v7, v5}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getFirstChild(I)I

    move-result v5

    :goto_1
    if-eq v5, v6, :cond_4

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->traverse(I)V

    invoke-interface {v7, v5}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNextSibling(I)I

    move-result v5

    goto :goto_1

    :cond_5
    if-ne v8, v3, :cond_6

    invoke-static {v1, v5}, Lcom/sun/org/apache/xalan/internal/serialize/SerializerUtils;->addAttribute(Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMTreeWalker;->traverse(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v1, v2, v4, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getTraceManager()Lcom/sun/org/apache/xalan/internal/trace/TraceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/trace/TraceManager;->fireTraceEndEvent(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :cond_a
    throw v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "copy-of"

    return-object p0
.end method

.method public getSelect()Lcom/sun/org/apache/xpath/internal/XPath;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    return-object p0
.end method

.method public getXSLToken()I
    .locals 0

    const/16 p0, 0x4a

    return p0
.end method

.method public setSelect(Lcom/sun/org/apache/xpath/internal/XPath;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;->m_selectExpression:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method
