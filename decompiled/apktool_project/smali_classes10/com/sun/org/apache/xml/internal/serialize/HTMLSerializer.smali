.class public Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;
.super Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;
.source "SourceFile"


# static fields
.field public static final XHTMLNamespace:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# instance fields
.field private _xhtml:Z

.field private fUserXHTMLNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v0}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    invoke-direct {p1, v1, v2, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    invoke-direct {p2, v1, v2, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v1, "html"

    const-string v2, "ISO-8859-1"

    invoke-direct {p2, v1, v2, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;-><init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(ZLcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;-><init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    .line 3
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    .line 6
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p1

    iget-object p2, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    const-string p3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p3, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p2, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->localName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->rawName:Ljava/lang/String;

    :goto_2
    iget-boolean p3, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    const-string v0, "]]>"

    const-string v1, "</"

    const/16 v2, 0x3e

    if-eqz p3, :cond_6

    iget-boolean p3, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p3, " />"

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-boolean p3, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_5
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->rawName:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_6
    iget-boolean p3, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p3, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isOnlyOpening(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    :cond_8
    iget-boolean p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p3, :cond_9

    iget-boolean p3, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-nez p3, :cond_9

    iget-boolean p3, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    :cond_9
    iget-boolean p3, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_a
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->leaveElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p1

    if-eqz p2, :cond_c

    const-string p3, "A"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    const-string p3, "TD"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_d

    :cond_c
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    :cond_d
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->flush()V

    :cond_e
    return-void
.end method

.method public escapeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getEntityRef(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->fromChar(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public serializeElement(Lorg/w3c/dom/Element;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    const/16 v3, 0x3e

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_1
    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    :cond_3
    :goto_0
    iget-boolean v2, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-boolean v4, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->indent()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    move v6, v5

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_c

    invoke-interface {v4, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printSpace()V

    iget-boolean v7, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    const/16 v10, 0x22

    const-string v11, "=\""

    if-eqz v7, :cond_6

    if-nez v9, :cond_5

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v8, "=\"\""

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v11}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v10}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_6
    if-nez v9, :cond_7

    const-string v9, ""

    :cond_7
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-static {v0, v8}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v11}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v9}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v10}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_9
    invoke-static {v0, v8}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v11}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v10}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_b
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_d

    move v2, v6

    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isEmptyTag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->unindent()V

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v0, " />"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_4
    iput-boolean v6, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    iput-boolean v5, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->flush()V

    goto :goto_8

    :cond_10
    :goto_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v2

    const-string v4, "A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "TD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    iput-boolean v5, v2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_12
    const-string v3, "SCRIPT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "STYLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_13
    iget-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v3, :cond_14

    iput-boolean v6, v2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    goto :goto_6

    :cond_14
    iput-boolean v6, v2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    :cond_15
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_7
    if-eqz p1, :cond_16

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_7

    :cond_16
    invoke-virtual {p0, v1, v1, v0}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_8
    return-void
.end method

.method public setOutputFormat(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v0, "ISO-8859-1"

    const/4 v1, 0x0

    const-string v2, "html"

    invoke-direct {p1, v2, v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->setOutputFormat(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    return-void
.end method

.method public setXHTMLNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    return-void
.end method

.method public startDocument(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->leaveDTD()Ljava/lang/String;

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_0

    const-string p1, "-//W3C//DTD XHTML 1.0 Strict//EN"

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string p1, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "-//W3C//DTD HTML 4.01//EN"

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    const-string p1, "http://www.w3.org/TR/html4/strict.dtd"

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    const/16 v0, 0x3e

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v1, :cond_6

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "<!DOCTYPE html PUBLIC "

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "<!DOCTYPE HTML PUBLIC "

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "                      "

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "<!DOCTYPE html SYSTEM "

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "<!DOCTYPE HTML SYSTEM "

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    :cond_8
    :goto_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializePreRoot()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1
    :try_start_0
    iget-object v4, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v6

    const/16 v7, 0x3e

    if-eqz v6, :cond_2

    .line 4
    iget-boolean v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v6, :cond_5

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v6, p3

    :goto_1
    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_2
    iget-boolean v6, v4, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-eqz v6, :cond_3

    .line 7
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    .line 8
    :cond_3
    iget-boolean v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v4, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-nez v6, :cond_5

    iget-boolean v6, v4, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-nez v6, :cond_4

    iget-boolean v6, v4, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    if-eqz v6, :cond_5

    .line 9
    :cond_4
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    .line 10
    :cond_5
    :goto_2
    iget-boolean v4, v4, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    const/4 v8, 0x0

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    move v9, v8

    :goto_3
    if-eqz p3, :cond_8

    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v10, p3

    move v11, v8

    goto :goto_6

    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 14
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_9

    .line 15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_9
    move-object v10, v2

    :goto_5
    const/4 v11, 0x1

    :goto_6
    if-nez v9, :cond_a

    move-object v5, v10

    goto :goto_7

    :cond_a
    const-string v12, "http://www.w3.org/1999/xhtml"

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz v12, :cond_c

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    move-object v5, v2

    .line 17
    :cond_c
    :goto_7
    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v13, 0x3c

    invoke-virtual {v12, v13}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    .line 18
    iget-boolean v12, v0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v12, :cond_d

    .line 19
    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_8

    .line 20
    :cond_d
    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v12, v10}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 21
    :goto_8
    iget-object v12, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v12}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->indent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "=\""

    const/16 v13, 0x22

    if-eqz v3, :cond_15

    move v14, v8

    .line 22
    :goto_9
    :try_start_1
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_15

    .line 23
    iget-object v15, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v15}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printSpace()V

    .line 24
    invoke-interface {v3, v14}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v15

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-interface {v3, v14}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    .line 26
    iget-boolean v7, v0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-nez v7, :cond_13

    if-eqz v9, :cond_e

    goto :goto_a

    :cond_e
    if-nez v15, :cond_f

    const-string v15, ""

    .line 27
    :cond_f
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_10

    .line 28
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_b

    .line 29
    :cond_10
    invoke-static {v10, v6}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 30
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 31
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v12}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 32
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, v15}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 33
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v13}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_b

    .line 34
    :cond_11
    invoke-static {v10, v6}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 35
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_b

    .line 36
    :cond_12
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 37
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v12}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v15}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 39
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v13}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_b

    :cond_13
    :goto_a
    if-nez v15, :cond_14

    .line 40
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 41
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v7, "=\"\""

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_b

    .line 42
    :cond_14
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 43
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v12}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v15}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 45
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v13}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_b
    add-int/lit8 v14, v14, 0x1

    const/16 v7, 0x3e

    goto/16 :goto_9

    :cond_15
    if-eqz v5, :cond_16

    .line 46
    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v4, 0x1

    :cond_16
    if-eqz v11, :cond_18

    .line 47
    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 48
    :goto_c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 49
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printSpace()V

    .line 50
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 51
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 52
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_17

    .line 53
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v9, "xmlns=\""

    invoke-virtual {v7, v9}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 55
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v13}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_c

    .line 56
    :cond_17
    iget-object v9, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v11, "xmlns:"

    invoke-virtual {v9, v11}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 57
    iget-object v9, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v9, v7}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 58
    iget-object v7, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v12}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 60
    iget-object v6, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v13}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_c

    .line 61
    :cond_18
    invoke-virtual {v0, v1, v2, v10, v4}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v1

    if-eqz v5, :cond_1a

    const-string v2, "A"

    .line 62
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "TD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 63
    :cond_19
    iput-boolean v8, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    .line 64
    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_1a
    if-eqz v5, :cond_1d

    const-string v2, "SCRIPT"

    .line 65
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "STYLE"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 66
    :cond_1b
    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    goto :goto_d

    :cond_1c
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, v1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    :cond_1d
    :goto_d
    return-void

    .line 69
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "http://apache.org/xml/serializer"

    const-string v2, "NoWriterSupplied"

    invoke-static {v1, v2, v5}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 72
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    const/16 v3, 0x3e

    if-eqz v2, :cond_0

    .line 74
    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v2, :cond_3

    .line 75
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    .line 78
    :cond_1
    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    if-eqz v2, :cond_3

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    .line 80
    :cond_3
    :goto_0
    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    .line 81
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    .line 82
    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_4

    .line 83
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 85
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->indent()V

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    move v4, v2

    .line 86
    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 87
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printSpace()V

    .line 88
    invoke-interface {p2, v4}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-interface {p2, v4}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    iget-boolean v7, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x22

    const-string v9, "=\""

    if-eqz v7, :cond_6

    if-nez v6, :cond_5

    .line 91
    :try_start_1
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v6, "=\"\""

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    .line 93
    :cond_5
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_6
    if-nez v6, :cond_7

    const-string v6, ""

    .line 97
    :cond_7
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v7}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    .line 98
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    .line 99
    :cond_8
    invoke-static {p1, v5}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 100
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_3

    .line 104
    :cond_9
    invoke-static {p1, v5}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 105
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    .line 106
    :cond_a
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v7, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5, v9}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 109
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5, v8}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 110
    :cond_b
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result p2

    const/4 v4, 0x1

    if-eqz p2, :cond_c

    move v0, v4

    .line 111
    :cond_c
    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p2

    const-string v0, "A"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "TD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    :cond_d
    iput-boolean v2, p2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    .line 114
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_e
    const-string v0, "SCRIPT"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "STYLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 116
    :cond_f
    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz p0, :cond_10

    .line 117
    iput-boolean v4, p2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    goto :goto_4

    .line 118
    :cond_10
    iput-boolean v4, p2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    :cond_11
    :goto_4
    return-void

    .line 119
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "http://apache.org/xml/serializer"

    const-string p2, "NoWriterSupplied"

    invoke-static {p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 120
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
