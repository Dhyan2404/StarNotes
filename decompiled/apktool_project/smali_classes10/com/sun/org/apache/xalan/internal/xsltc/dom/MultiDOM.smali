.class public final Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/DOM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;,
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;
    }
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x4

.field private static final NO_TYPE:I = -0x2


# instance fields
.field private _adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _documents:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

.field private _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

.field private _free:I

.field private _main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

.field private _size:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_documents:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_size:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_free:I

    new-array v0, v0, [Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getDOMImpl()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v0

    instance-of v2, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;Z)I

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;)[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    return-object p0
.end method

.method private addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;Z)I
    .locals 11

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getDOMImpl()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    .line 5
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDTMIDs()Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 7
    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 9
    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;

    .line 10
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocument()I

    move-result v1

    ushr-int/lit8 v4, v1, 0x10

    move-object v1, v3

    move v3, v2

    goto :goto_0

    :cond_1
    move v4, v2

    move-object v1, v3

    move v3, v4

    .line 11
    :goto_0
    iget v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_size:I

    const/4 v6, 0x0

    if-lt v4, v5, :cond_3

    .line 12
    :cond_2
    iget v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_size:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_size:I

    if-le v7, v4, :cond_2

    .line 13
    new-array v7, v7, [Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    .line 14
    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-static {v8, v6, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    :cond_3
    add-int/lit8 v5, v4, 0x1

    .line 16
    iput v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_free:I

    if-ne v3, v2, :cond_4

    .line 17
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    aput-object p1, v1, v4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    sub-int/2addr v3, v2

    move v4, v6

    :goto_1
    if-ltz v3, :cond_5

    .line 18
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    ushr-int/lit8 v4, v2, 0x10

    .line 19
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    aput-object p1, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    .line 20
    invoke-virtual {p1, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getDocumentURI(I)Ljava/lang/String;

    move-result-object p2

    .line 21
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_documents:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p2, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_6
    instance-of p2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;

    if-eqz p2, :cond_7

    .line 23
    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;

    .line 24
    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->getNestedDOM()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 25
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getNamesArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getUrisArray()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getTypesArray()[I

    move-result-object v9

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getNamespaceArray()[Ljava/lang/String;

    move-result-object v10

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;)I

    :cond_7
    return v4
.end method


# virtual methods
.method public addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;Z)I

    move-result p0

    return p0
.end method

.method public characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :cond_0
    return-void
.end method

.method public copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v2, v0, 0x10

    aget-object v1, v1, v2

    invoke-interface {v1, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAttributeNode(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p2, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAttributeNode(II)I

    move-result p0

    return p0
.end method

.method public getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;

    const/4 v1, -0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;II)V

    return-object v0
.end method

.method public getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getDOMAdapter(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_documents:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getDTMId(I)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    ushr-int/lit8 p1, p1, 0x10

    :goto_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    if-ne v1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    return-object p0
.end method

.method public getDocument()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getDocument()I

    move-result p0

    return p0
.end method

.method public getDocumentMask(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_documents:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDocumentURI(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 p1, p1, 0x10

    aget-object p0, p0, p1

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocumentURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedTypeID(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getExpandedTypeID(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getLanguage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMain()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    return-object p0
.end method

.method public getNSType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNSType(I)I

    move-result p0

    return p0
.end method

.method public getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

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
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNamespaceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNamespaceType(I)I

    move-result p0

    return p0
.end method

.method public getNodeHandle(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public getNodeIdent(I)I
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

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
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

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
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$NodeValueIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)V

    return-object v6
.end method

.method public getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0
.end method

.method public getParent(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getParent(I)I

    move-result p0

    return p0
.end method

.method public getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0
.end method

.method public getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_size:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValueX(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;II)V

    return-object v0
.end method

.method public getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM$AxisIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;II)V

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAttribute(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->isAttribute(I)Z

    move-result p0

    return p0
.end method

.method public isElement(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->isElement(I)Z

    move-result p0

    return p0
.end method

.method public lessThan(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    aget-object p0, p0, v1

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->lessThan(II)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-ge v1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public lookupNamespace(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->lookupNamespace(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeNode(I)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public makeNodeList(I)Lorg/w3c/dom/NodeList;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNodeList(I)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_main:Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public nextMask()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_free:I

    return p0
.end method

.method public orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getDTMId(I)I

    move-result p0

    aget-object p0, v0, p0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_free:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->_adapters:[Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    ushr-int/lit8 v0, p1, 0x10

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
