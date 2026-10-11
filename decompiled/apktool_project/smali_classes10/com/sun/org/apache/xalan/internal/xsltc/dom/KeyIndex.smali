.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;
.super Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;
.source "SourceFile"


# instance fields
.field private _dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

.field private _index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private _markedPosition:I

.field private _nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;-><init>()V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_markedPosition:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    return-void
.end method

.method public cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;-><init>(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iput-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    iput p0, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    return-object v0
.end method

.method public containsID(ILjava/lang/Object;)I
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_3

    new-instance p2, Ljava/util/StringTokenizer;

    invoke-direct {p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->hasDOMSource()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->getDOMNodeById(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    return v3

    :cond_2
    return v4

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->hasDOMSource()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->getDOMNodeById(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_0
    return v3
.end method

.method public containsKey(ILjava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDOMNodeById(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->getElementById(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLast()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    return p0
.end method

.method public getStartNode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public gotoMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_markedPosition:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    return-void
.end method

.method public isReverse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lookupId(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    new-instance v0, Ljava/util/StringTokenizer;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;->hasDOMSource()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->getDOMNodeById(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->merge(Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public lookupKey(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_index:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    return-void
.end method

.method public merge(Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->merge(Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public next()I
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->at(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeHandle(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    return-object p0
.end method

.method public setDom(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getDOMImpl()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p1

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_enhancedDOM:Lcom/sun/org/apache/xalan/internal/xsltc/DOMEnhancedForDTM;

    :cond_1
    :goto_0
    return-void
.end method

.method public setMark()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_markedPosition:I

    return-void
.end method

.method public setRestartable(Z)V
    .locals 0

    return-void
.end method

.method public setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/KeyIndex;->_nodes:Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->_position:I

    :cond_1
    :goto_0
    return-object p0
.end method
