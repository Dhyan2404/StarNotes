.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;
.super Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;
.source "SourceFile"


# static fields
.field private static _documentURIIndex:I


# instance fields
.field private final _attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

.field private _buildIdIndex:Z

.field private _dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

.field private _initSize:I

.field private _openElementName:Ljava/lang/String;

.field private _wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;I)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-direct {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    iput p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_initSize:I

    iput-boolean p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_buildIdIndex:Z

    return-void
.end method

.method private maybeEmitStartElement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :goto_0
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private prepareNewDOM()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_wsfilter:Lcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_initSize:I

    iget-boolean v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_buildIdIndex:Z

    invoke-virtual/range {v0 .. v8}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZIZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->startDocument()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v4, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->characters([CII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "STRAY_ATTRIBUTE_ERR"

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appendChild(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->appendChild(IZZ)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->appendChild(IZZ)V

    :goto_0
    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->appendTextChild(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->appendTextChild(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :goto_0
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->characters([CII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->characters(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->maybeEmitStartElement()V

    .line 9
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->characters([CII)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->characters([CII)V

    :goto_0
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->prepareNewDOM()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->maybeEmitStartElement()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->comment([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->prepareNewDOM()V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->maybeEmitStartElement()V

    .line 9
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->comment([CII)V

    return-void
.end method

.method public copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :goto_0
    return-void
.end method

.method public copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    :goto_0
    return-void
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :goto_0
    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->dispatchToEvents(ILorg/xml/sax/ContentHandler;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->dispatchToEvents(ILorg/xml/sax/ContentHandler;)V

    :goto_0
    return-void
.end method

.method public documentRegistration()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->documentRegistration()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->documentRegistration()V

    :goto_0
    return-void
.end method

.method public documentRelease()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->documentRelease()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->documentRelease()V

    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->endDocument()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->endDocument()V

    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->maybeEmitStartElement()V

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->endElement(Ljava/lang/String;)V

    return-void
.end method

.method public getAttributeNode(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getAttributeNode(II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getAttributeNode(II)I

    move-result p0

    return p0
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBaseTraversers;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;

    move-result-object p0

    return-object p0
.end method

.method public getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p0

    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object p0

    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocument()I

    move-result p0

    return p0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentAllDeclarationsProcessed()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentAllDeclarationsProcessed()Z

    move-result p0

    return p0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentEncoding(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentEncoding(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentRoot(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentRoot(I)I

    move-result p0

    return p0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentStandalone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentStandalone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentSystemIdentifier(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentSystemIdentifier(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentURI(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getDocumentURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "adaptive_rtf"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_documentURIIndex:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_documentURIIndex:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getDocumentVersion(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocumentVersion(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getElementById(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getElementById(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    return-object p0
.end method

.method public getExpandedTypeID(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getExpandedTypeID(I)I

    move-result p0

    return p0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFirstAttribute(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttribute(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getFirstAttribute(I)I

    move-result p0

    return p0
.end method

.method public getFirstChild(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstChild(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getFirstChild(I)I

    move-result p0

    return p0
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getFirstNamespaceNode(IZ)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getFirstNamespaceNode(IZ)I

    move-result p0

    return p0
.end method

.method public getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getLanguage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getLanguage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastChild(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getLastChild(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getLastChild(I)I

    move-result p0

    return p0
.end method

.method public getLevel(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getLevel(I)S

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getLevel(I)S

    move-result p0

    return p0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p0

    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNSType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNSType(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNSType(I)I

    move-result p0

    return p0
.end method

.method public getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNamespaceFromExpandedNameID(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNamespaceFromExpandedNameID(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNamespaceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNamespaceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNamespaceType(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNamespaceType(I)I

    move-result p0

    return p0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNestedDOM()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    return-object p0
.end method

.method public getNextAttribute(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNextAttribute(I)I

    move-result p0

    return p0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNextNamespaceNode(IIZ)I

    move-result p0

    return p0
.end method

.method public getNextSibling(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNextSibling(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNextSibling(I)I

    move-result p0

    return p0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeHandle(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeHandle(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public final getNodeIdent(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeIdent(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p0

    return p0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeNameX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeType(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeType(I)S

    move-result p0

    return p0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 0

    return-object p0
.end method

.method public getOwnerDocument(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getOwnerDocument(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getOwnerDocument(I)I

    move-result p0

    return p0
.end method

.method public getParent(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getParent(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getParent(I)I

    move-result p0

    return p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSibling(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getPreviousSibling(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getPreviousSibling(I)I

    move-result p0

    return p0
.end method

.method public getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getSize()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getSize()I

    move-result p0

    return p0
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    return-object p0
.end method

.method public getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValueChunk(II[I)[C
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getStringValueChunk(II[I)[C

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getStringValueChunk(II[I)[C

    move-result-object p0

    return-object p0
.end method

.method public getStringValueChunkCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getStringValueChunkCount(I)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getStringValueChunkCount(I)I

    move-result p0

    return p0
.end method

.method public getStringValueX(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasChildNodes(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->hasChildNodes(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->hasChildNodes(I)Z

    move-result p0

    return p0
.end method

.method public isAttribute(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->isAttribute(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->isAttribute(I)Z

    move-result p0

    return p0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->isAttributeSpecified(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->isAttributeSpecified(I)Z

    move-result p0

    return p0
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->isCharacterElementContentWhitespace(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->isCharacterElementContentWhitespace(I)Z

    move-result p0

    return p0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->isDocumentAllDeclarationsProcessed(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->isDocumentAllDeclarationsProcessed(I)Z

    move-result p0

    return p0
.end method

.method public isElement(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->isElement(I)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->isElement(I)Z

    move-result p0

    return p0
.end method

.method public isNodeAfter(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->isNodeAfter(II)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->isNodeAfter(II)Z

    move-result p0

    return p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public lessThan(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->lessThan(II)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->lessThan(II)Z

    move-result p0

    return p0
.end method

.method public lookupNamespace(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->lookupNamespace(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->lookupNamespace(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeNode(I)Lorg/w3c/dom/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->makeNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->makeNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public makeNodeList(I)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->makeNodeList(I)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->makeNodeList(I)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->prepareNewDOM()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needsTwoThreads()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->needsTwoThreads()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->needsTwoThreads()Z

    move-result p0

    return p0
.end method

.method public orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->prepareNewDOM()V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->maybeEmitStartElement()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->setDocumentBaseURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->setDocumentBaseURI(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->setEscaping(Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->setEscaping(Z)Z

    move-result p0

    return p0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V

    :goto_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/sax2dtm/SAX2DTM;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->prepareNewDOM()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->maybeEmitStartElement()V

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_openElementName:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_attributes:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;->clear()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->startElement(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->startElement(Ljava/lang/String;)V

    return-void
.end method

.method public supportsPreStripping()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AdaptiveResultTreeImpl;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->supportsPreStripping()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->supportsPreStripping()Z

    move-result p0

    return p0
.end method
