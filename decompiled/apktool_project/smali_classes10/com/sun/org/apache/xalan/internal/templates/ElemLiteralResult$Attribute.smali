.class public Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Attr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attribute"
.end annotation


# instance fields
.field private m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

.field private m_owner:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;Lcom/sun/org/apache/xalan/internal/templates/AVT;Lorg/w3c/dom/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    new-instance p1, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-direct {p1, v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;Lcom/sun/org/apache/xalan/internal/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object p1
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute$1;-><init>(Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Node;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->m_attribute:Lcom/sun/org/apache/xalan/internal/templates/AVT;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAttributes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasChildNodes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult$Attribute;->this$0:Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method
