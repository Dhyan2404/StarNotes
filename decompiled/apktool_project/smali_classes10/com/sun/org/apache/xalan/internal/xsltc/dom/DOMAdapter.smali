.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/DOM;


# instance fields
.field private _NSmapping:[S

.field private _NSreverse:[S

.field private _dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

.field private _filter:Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

.field private _mapping:[S

.field private _multiDOMMask:I

.field private _namesArray:[Ljava/lang/String;

.field private _namespaceArray:[Ljava/lang/String;

.field private _reverse:[I

.field private _typesArray:[I

.field private _urisArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_mapping:[S

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_reverse:[I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSmapping:[S

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSreverse:[S

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_filter:Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namesArray:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_urisArray:[Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_typesArray:[I

    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namespaceArray:[Ljava/lang/String;

    return-void
.end method

.method private getMapping()[S
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_mapping:[S

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namesArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_urisArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_typesArray:[I

    invoke-interface {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getMapping([Ljava/lang/String;[Ljava/lang/String;[I)[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_mapping:[S

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_mapping:[S

    return-object p0
.end method

.method private getNSMapping()[S
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSmapping:[S

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namespaceArray:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getNamespaceMapping([Ljava/lang/String;)[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSmapping:[S

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSmapping:[S

    return-object p0
.end method

.method private getNSReverse()[S
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSreverse:[S

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namespaceArray:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getReverseNamespaceMapping([Ljava/lang/String;)[S

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSreverse:[S

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_NSreverse:[S

    return-object p0
.end method

.method private getReverse()[I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_reverse:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namesArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_urisArray:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_typesArray:[I

    invoke-interface {v0, v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getReverseMapping([Ljava/lang/String;[Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_reverse:[I

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_reverse:[I

    return-object p0
.end method


# virtual methods
.method public characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :goto_0
    return-void
.end method

.method public copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    return-void
.end method

.method public getAttributeNode(II)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getReverse()[I

    move-result-object p0

    aget p0, p0, p1

    invoke-interface {v0, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAttributeNode(II)I

    move-result p0

    return p0
.end method

.method public getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getDOMImpl()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    return-object p0
.end method

.method public getDocument()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result p0

    return p0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getDocumentURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getDocumentURI(I)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocumentURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedTypeID(I)I
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getMapping()[S

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getExpandedTypeID2(I)I

    move-result p0

    aget-short p0, v0, p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result p0

    aget-short p0, v0, p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getLanguage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiDOMMask()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_multiDOMMask:I

    return p0
.end method

.method public getNSType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNSType(I)I

    move-result p0

    return p0
.end method

.method public getNamesArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namesArray:[Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namespaceArray:[Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getNSReverse()[S

    move-result-object p0

    aget-short p0, p0, p2

    invoke-interface {v0, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNamespaceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceType(I)I
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getNSMapping()[S

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNSType(I)I

    move-result p0

    aget-short p0, v0, p0

    return p0
.end method

.method public getNodeHandle(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getNodeIdent(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeIdent(I)I

    move-result p0

    return p0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getReverse()[I

    move-result-object p0

    aget p0, p0, p1

    invoke-interface {v0, p0, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0
.end method

.method public getParent(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getParent(I)I

    move-result p0

    return p0
.end method

.method public getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0
.end method

.method public getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getSize()I

    move-result p0

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValueX(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getReverse()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v1, :cond_0

    aget p0, v0, p2

    invoke-interface {v1, p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getReverse()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v1, :cond_0

    aget p0, v0, p1

    invoke-interface {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getTypesArray()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_typesArray:[I

    return-object p0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrisArray()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_urisArray:[Ljava/lang/String;

    return-object p0
.end method

.method public isAttribute(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->isAttribute(I)Z

    move-result p0

    return p0
.end method

.method public isElement(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->isElement(I)Z

    move-result p0

    return p0
.end method

.method public lessThan(II)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->lessThan(II)Z

    move-result p0

    return p0
.end method

.method public lookupNamespace(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->lookupNamespace(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeNode(I)Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public makeNodeList(I)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNodeList(I)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->setDocumentURI(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_filter:Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    return-void
.end method

.method public setMultiDOMMask(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_multiDOMMask:I

    return-void
.end method

.method public setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namesArray:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_urisArray:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_typesArray:[I

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_namespaceArray:[Ljava/lang/String;

    return-void
.end method

.method public shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
