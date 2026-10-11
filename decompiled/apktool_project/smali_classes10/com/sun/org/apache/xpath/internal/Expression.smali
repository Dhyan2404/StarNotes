.class public abstract Lcom/sun/org/apache/xpath/internal/Expression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/sun/org/apache/xpath/internal/ExpressionNode;
.implements Lcom/sun/org/apache/xpath/internal/XPathVisitable;


# static fields
.field static final serialVersionUID:J = 0x7d9a61c8dacacd6L


# instance fields
.field private m_parent:Lcom/sun/org/apache/xpath/internal/ExpressionNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asIterator(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNodeAndExpression(II)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    throw p0
.end method

.method public asIteratorRaw(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNodeAndExpression(II)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;->iterRaw()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    throw p0
.end method

.method public asNode(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->iter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->nextNode()I

    move-result p0

    return p0
.end method

.method public assertion(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p0

    return p0
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract deepEquals(Lcom/sun/org/apache/xpath/internal/Expression;)Z
.end method

.method public error(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p1, p3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method

.method public abstract execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/dtm/DTM;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Z)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public executeCharsToContentHandler(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->detach()V

    return-void
.end method

.method public exprAddChild(Lcom/sun/org/apache/xpath/internal/ExpressionNode;I)V
    .locals 0

    const/4 p1, 0x0

    const-string p2, "exprAddChild method not implemented!"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public exprGetChild(I)Lcom/sun/org/apache/xpath/internal/ExpressionNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public exprGetNumChildren()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Expression;->m_parent:Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    return-object p0
.end method

.method public exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V
    .locals 2

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can not parent an expression to itself!"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xpath/internal/Expression;->assertion(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/Expression;->m_parent:Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    return-void
.end method

.method public abstract fixupVariables(Ljava/util/Vector;I)V
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Expression;->m_parent:Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getExpressionOwner()Lcom/sun/org/apache/xpath/internal/ExpressionNode;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xpath/internal/ExpressionNode;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Expression;->m_parent:Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Expression;->m_parent:Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/Expression;->m_parent:Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNodesetExpr()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSameClass(Lcom/sun/org/apache/xpath/internal/Expression;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isStableNumber()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public num(Lcom/sun/org/apache/xpath/internal/XPathContext;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p0

    return-wide p0
.end method

.method public warn(Lcom/sun/org/apache/xpath/internal/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method

.method public xstr(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0
.end method
