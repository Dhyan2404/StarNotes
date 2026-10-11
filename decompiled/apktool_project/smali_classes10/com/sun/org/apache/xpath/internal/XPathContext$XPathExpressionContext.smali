.class public Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xpath/internal/XPathContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XPathExpressionContext"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getCurrentNode()I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getContextNodes()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getContextNodeList()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;)V

    return-object v0
.end method

.method public getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext;->m_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0
.end method

.method public final getVariableOrParam(Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-static {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->access$000(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/VariableStack;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/VariableStack;->getVariableOrParam(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-object p0
.end method

.method public toNumber(Lorg/w3c/dom/Node;)D
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->num()D

    move-result-wide p0

    return-wide p0
.end method

.method public toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p1

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->this$0:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
