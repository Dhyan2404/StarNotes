.class abstract Lorg/apache/xmlbeans/impl/store/CharNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/CharacterData;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field _cch:I

.field private _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field _next:Lorg/apache/xmlbeans/impl/store/CharNode;

.field _off:I

.field _prev:Lorg/apache/xmlbeans/impl/store/CharNode;

.field private _src:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-void
.end method

.method public static appendNode(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->insertNode(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;

    move-result-object p0

    return-object p0
.end method

.method public static appendNodes(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    return-object p0
.end method

.method public static copyNodes(Lorg/apache/xmlbeans/impl/store/CharNode;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/CharNode;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_3

    instance-of v2, p0, Lorg/apache/xmlbeans/impl/store/TextNode;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/TextNode;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->createCdataNode()Lorg/apache/xmlbeans/impl/store/CdataNode;

    move-result-object v2

    :goto_1
    iget v3, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-virtual {v2, p1, v3, v4}, Lorg/apache/xmlbeans/impl/store/CharNode;->setChars(Ljava/lang/Object;II)V

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    if-eqz v1, :cond_2

    iput-object v2, v1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object v1, v2, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    move-object v1, v2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static insertNode(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, p2, :cond_1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    :goto_0
    move-object p0, p1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eq v1, p2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iput-object v1, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v1, :cond_3

    iget-object p2, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object p1, p2, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    :cond_3
    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    :goto_2
    return-object p0
.end method

.method public static isOnList(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Z
    .locals 0

    :goto_0
    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isValid()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static remove(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Lorg/apache/xmlbeans/impl/store/CharNode;
    .locals 2

    if-ne p0, p1, :cond_0

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    :goto_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_next:Lorg/apache/xmlbeans/impl/store/CharNode;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/CharNode;->_prev:Lorg/apache/xmlbeans/impl/store/CharNode;

    return-object p0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_appendChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public appendData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_appendData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_cloneNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_compareDocumentPosition(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)S

    move-result p0

    return p0
.end method

.method public deleteData(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_deleteData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)V

    return-void
.end method

.method public dump()V
    .locals 1

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/CharNode;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->dump(Ljava/io/PrintStream;Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->dump(Ljava/io/PrintStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Lonely CharNode: \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getBaseURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    sget-object p0, Lorg/apache/xmlbeans/impl/store/DomImpl;->_emptyNodeList:Lorg/w3c/dom/NodeList;

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getFeature(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

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

.method public getLength()I
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_getLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p0

    return p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getLocalName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNextSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeType(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)S

    move-result p0

    return p0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    return-object p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getOwnerDocument(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getParentNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getPreviousSibling(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getQName()Ljavax/xml/namespace/QName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_getUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/Object;

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

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_insertBefore(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_insertData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;ILjava/lang/String;)V

    return-void
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isDefaultNamespace(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isEqualNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0
.end method

.method public isNodeAftertext()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-nez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/CharNode;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->isOnList(Lorg/apache/xmlbeans/impl/store/CharNode;Lorg/apache/xmlbeans/impl/store/CharNode;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isSameNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_isSupported(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public locale()Lorg/apache/xmlbeans/impl/store/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_lookupNamespaceURI(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_lookupPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nodeCanHavePrefixUri()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public normalize()V
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_normalize(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_removeChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_replaceChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_replaceData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;IILjava/lang/String;)V

    return-void
.end method

.method public setChars(Ljava/lang/Object;II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_off:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_cch:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setNodeValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setPrefix(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setTextContent(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_node_setUserData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_characterData_substringData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/CharNode;->_src:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCharNode(Lorg/apache/xmlbeans/impl/store/CharNode;)V

    return-object v0
.end method
