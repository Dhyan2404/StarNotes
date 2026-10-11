.class public final Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Source;


# instance fields
.field private _dom:Ljava/lang/ThreadLocal;

.field private _source:Ljavax/xml/transform/Source;

.field private _systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_systemId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_source:Ljavax/xml/transform/Source;

    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_dom:Ljava/lang/ThreadLocal;

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_systemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/transform/Source;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_systemId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_source:Ljavax/xml/transform/Source;

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_dom:Ljava/lang/ThreadLocal;

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_source:Ljavax/xml/transform/Source;

    return-void
.end method


# virtual methods
.method public getDOM(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_dom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_source:Ljavax/xml/transform/Source;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_systemId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_systemId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "XSLTC_SOURCE_ERR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    move-object v1, v0

    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMWSFilter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object v3, v0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->hasIdCall()Z

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    move v6, p2

    if-nez p1, :cond_5

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->newInstance()Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    move-result-object p1

    :cond_5
    move-object v0, p1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->setDocumentURI(Ljava/lang/String;)V

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_dom:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_source:Ljavax/xml/transform/Source;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_systemId:Ljava/lang/String;

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_systemId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/XSLTCSource;->_source:Ljavax/xml/transform/Source;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
