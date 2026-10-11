.class public Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
.super Lcom/sun/org/apache/xml/internal/utils/UnImplNode;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;
.implements Ljava/io/Serializable;
.implements Lcom/sun/org/apache/xpath/internal/ExpressionNode;
.implements Lcom/sun/org/apache/xpath/internal/WhitespaceStrippingElementMatcher;
.implements Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitable;


# static fields
.field static final serialVersionUID:J = 0x3d9e1d63f87d91cfL


# instance fields
.field private transient m_DOMBackPointer:Lorg/w3c/dom/Node;

.field private m_columnNumber:I

.field private m_declaredPrefixes:Ljava/util/Vector;

.field private m_defaultSpace:Z

.field protected m_docOrderNumber:I

.field private m_endColumnNumber:I

.field private m_endLineNumber:I

.field m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

.field private m_hasTextLitOnly:Z

.field protected m_hasVariableDecl:Z

.field private m_lineNumber:I

.field m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

.field protected m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

.field m_prefixTable:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/UnImplNode;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_defaultSpace:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p2, :cond_2

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;->visitInstruction(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Z

    move-result p0

    return p0
.end method

.method public addOrReplaceDecls(Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "ER_NULL_CHILD"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-nez v0, :cond_1

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLastChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    .line 12
    iput-object p1, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 13
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setParentElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    return-object p1
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "ER_NULL_CHILD"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-nez v1, :cond_1

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 6
    iput-object v0, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 7
    :goto_0
    iput-object p0, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p1
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_0
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->accept(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->callChildVisitors(Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitor;)V

    :cond_0
    return-void
.end method

.method public canAcceptVariables()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canStripWhiteSpace()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->canStripWhiteSpace()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getUid()I

    move-result p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getUid()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public compose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->resolvePrefixTables()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->pushStackMark()V

    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public endCompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getComposeState()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot$ComposeState;->popStackMark()V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ER_ELEMTEMPLATEELEM_ERR"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public executeNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->executeNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/String;)V

    return-void
.end method

.method public executeNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    .line 6
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public exprAddChild(Lcom/sun/org/apache/xpath/internal/ExpressionNode;I)V
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-void
.end method

.method public exprGetChild(I)Lcom/sun/org/apache/xpath/internal/ExpressionNode;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    return-object p0
.end method

.method public exprGetNumChildren()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getLength()I

    move-result p0

    return p0
.end method

.method public exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    return-object p0
.end method

.method public exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setParentElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    return-void
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_columnNumber:I

    return p0
.end method

.method public getDOMBackPointer()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getDeclaredPrefixes()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    return-object p0
.end method

.method public getEndColumnNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_endColumnNumber:I

    return p0
.end method

.method public getEndLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_endLineNumber:I

    return p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLastChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLineNumber()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_lineNumber:I

    return p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const-string v2, "#default"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    .line 6
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "xml"

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0

    const-string p1, "ER_CANT_RESOLVE_NSPREFIX"

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "Unknown XSLT Element"

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerXSLTemplate()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    return-object p0
.end method

.method public getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public getParentNodeElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p0
.end method

.method public getPrefixes()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getPreviousSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentNodeElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getFirstChildElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNextSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getPublicId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetComposed()Lcom/sun/org/apache/xalan/internal/templates/StylesheetComposed;

    move-result-object p0

    return-object p0
.end method

.method public getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/Stylesheet;->getHref()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUid()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_docOrderNumber:I

    return p0
.end method

.method public getXSLToken()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getXmlSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_defaultSpace:Z

    return p0
.end method

.method public handlesNullPrefixes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasChildNodes()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTextLitOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    return p0
.end method

.method public hasVariableDecl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_3

    if-eqz v1, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v4, v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_5

    if-eqz v1, :cond_4

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v2, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_2

    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_2
    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-object v2, p2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v2, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setParentElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v2, 0x1

    move-object v1, p1

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    return-object p1

    :cond_7
    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x8

    const-string p2, "refChild was not found in insertBefore method!"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public isCompiledTemplate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public needToCheckExclude()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public recompose(Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public removeChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eq v1, p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-ne p1, v1, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getPreviousSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object p0

    iget-object v1, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    :goto_0
    iput-object v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object v0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public replaceChild(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getPreviousSiblingElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    iput-object p1, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-ne v1, p2, :cond_2

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 17
    :cond_2
    iput-object p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 18
    iput-object v0, p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 19
    iget-object p0, p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 20
    iput-object v0, p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 3
    check-cast p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 4
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-eqz v1, :cond_1

    .line 5
    iput-object p1, v1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    if-ne v1, p2, :cond_2

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_firstChild:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 8
    :cond_2
    iput-object p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 9
    iput-object v0, p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 10
    iget-object p0, p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    iput-object p0, p1, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    .line 11
    iput-object v0, p2, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_nextSibling:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public resolvePrefixTables()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-direct {p0, v5, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    :cond_1
    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v4, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7, v6}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    invoke-direct {v7, v5, v4, v6}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v7

    :goto_1
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getParentNodeElem()Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->needToCheckExclude()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v5

    if-eq v4, v5, :cond_5

    new-instance v5, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3, v4}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v5

    :cond_5
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->addOrReplaceDecls(Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    :cond_7
    :goto_3
    return-void
.end method

.method public runtimeInit(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public setDOMBackPointer(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_endLineNumber:I

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_endColumnNumber:I

    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_lineNumber:I

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_columnNumber:I

    return-void
.end method

.method public setParentElem(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_parentNode:Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;

    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v3, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method

.method public setXmlSpace(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_defaultSpace:Z

    return-void
.end method

.method public shouldStripWhiteSpace(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Element;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->getStylesheetRoot()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->shouldStripWhiteSpace(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Element;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unexecuteNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->unexecuteNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/String;)V

    return-void
.end method

.method public unexecuteNSDecls(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getResultTreeHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;

    .line 6
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
