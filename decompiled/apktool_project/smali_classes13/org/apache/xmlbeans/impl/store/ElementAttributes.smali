.class final Lorg/apache/xmlbeans/impl/store/ElementAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field private _elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/ElementXobj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0

    return p0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_getNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_item(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_removeNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItem(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/ElementAttributes;->_elementXobj:Lorg/apache/xmlbeans/impl/store/ElementXobj;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_attributes_setNamedItemNS(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
