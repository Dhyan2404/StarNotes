.class public Lcom/sun/org/apache/xalan/internal/lib/NodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static columnNumber(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static columnNumber(Lorg/w3c/dom/NodeList;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static lineNumber(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static lineNumber(Lorg/w3c/dom/NodeList;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static publicId(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static publicId(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static systemId(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static systemId(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method
