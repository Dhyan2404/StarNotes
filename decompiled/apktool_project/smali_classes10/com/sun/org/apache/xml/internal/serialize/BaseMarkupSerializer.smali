.class public abstract Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lcom/sun/org/apache/xml/internal/serialize/DOMSerializer;
.implements Lcom/sun/org/apache/xml/internal/serialize/Serializer;


# instance fields
.field protected _docTypePublicId:Ljava/lang/String;

.field protected _docTypeSystemId:Ljava/lang/String;

.field private _elementStateCount:I

.field private _elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

.field protected _encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

.field protected _format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

.field protected _indenting:Z

.field private _output:Ljava/io/OutputStream;

.field private _preRoot:Ljava/util/Vector;

.field protected _prefixes:Ljava/util/Hashtable;

.field private _prepared:Z

.field protected _printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

.field protected _started:Z

.field private _writer:Ljava/io/Writer;

.field protected fCurrentNode:Lorg/w3c/dom/Node;

.field protected final fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

.field protected fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field protected fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field protected final fStrBuffer:Ljava/lang/StringBuffer;

.field protected features:S


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->features:S

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/serialize/ElementState;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    return-void
.end method


# virtual methods
.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public asDOMSerializer()Lcom/sun/org/apache/xml/internal/serialize/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "<!ATTLIST "

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p2, " \""

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public characters(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    .line 27
    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getNextIndent()I

    move-result v1

    .line 30
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    .line 31
    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 32
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    goto :goto_1

    .line 33
    :cond_1
    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 34
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v4, "<![CDATA["

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 35
    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getNextIndent()I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printCDATAText(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    :goto_1
    return-void
.end method

.method public characters([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getNextIndent()I

    move-result v1

    .line 5
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    const/4 v8, 0x1

    .line 6
    iget-boolean v9, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x0

    .line 8
    iget-boolean v5, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v4, "<![CDATA["

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 10
    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getNextIndent()I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_a

    .line 13
    aget-char v1, p1, p2

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_4

    add-int/lit8 v4, p2, 0x2

    if-ge v4, p3, :cond_4

    add-int/lit8 v5, p2, 0x1

    .line 14
    aget-char v5, p1, v5

    if-ne v5, v2, :cond_4

    aget-char v2, p1, v4

    const/16 v5, 0x3e

    if-ne v2, v5, :cond_4

    .line 15
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    move p2, v4

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValid(I)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_5

    .line 17
    aget-char v2, p1, p2

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->surrogates(II)V

    goto :goto_3

    .line 18
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The character \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' is an invalid XML character"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/16 v2, 0x20

    if-lt v1, v2, :cond_7

    .line 19
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xf7

    if-ne v1, v2, :cond_9

    :cond_7
    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v2, 0xd

    if-eq v1, v2, :cond_9

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    goto :goto_2

    .line 20
    :cond_8
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v4, "]]>&#x"

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_3
    add-int/2addr p2, v3

    goto/16 :goto_1

    .line 24
    :cond_a
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getOmitComments()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    const-string v1, "-->"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "<!--"

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    .line 6
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_4

    iget-boolean p1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->indent()V

    .line 15
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 16
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->unindent()V

    .line 17
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_5

    .line 18
    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    .line 19
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 20
    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterComment:Z

    .line 21
    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V
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

.method public content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v3, "]]>"

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    :cond_0
    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    :cond_1
    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterComment:Z

    :cond_2
    return-object v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "<!ELEMENT "

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endCDATA()V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializePreRoot()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endNonEscaping()V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPreserving()V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method public enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serialize/ElementState;
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    array-length v3, v2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    array-length v0, v2

    add-int/lit8 v0, v0, 0xa

    new-array v2, v0, [Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    array-length v6, v5

    if-ge v3, v6, :cond_0

    aget-object v5, v5, v3

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v5

    :goto_1
    if-ge v3, v0, :cond_1

    new-instance v5, Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    invoke-direct {v5}, Lcom/sun/org/apache/xml/internal/serialize/ElementState;-><init>()V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    aget-object v0, v2, v0

    iput-object p1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    iput-object p2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->localName:Ljava/lang/String;

    iput-object p3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->rawName:Ljava/lang/String;

    iput-boolean p4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterComment:Z

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    iput-object p1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    return-object v0
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public fatalError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {p1, p0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public abstract getEntityRef(I)Ljava/lang/String;
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setThisIndent(I)V

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    aget-char v1, p1, p2

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    move p3, v0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v0, " \""

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p2, "\">"

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public isDocumentState()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public leaveElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string p0, "http://apache.org/xml/serializer"

    const-string v0, "Internal"

    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p3, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-short p2, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fSeverity:S

    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;-><init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;->fLocator:Lcom/sun/org/apache/xerces/internal/dom/DOMLocatorImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    return-object p0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "<!NOTATION "

    if-eqz p2, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v0, " PUBLIC "

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p2, " SYSTEM "

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prepared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "http://apache.org/xml/serializer"

    const-string v0, "NoWriterSupplied"

    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getEncodingInfo()Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getIndenting()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/IndentPrinter;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-direct {v0, v4, v5}, Lcom/sun/org/apache/xml/internal/serialize/IndentPrinter;-><init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    new-instance v0, Lcom/sun/org/apache/xml/internal/serialize/Printer;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-direct {v0, v4, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;-><init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    :goto_1
    iput v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStates:[Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    aget-object v0, v0, v3

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->localName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->rawName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v4

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->empty:Z

    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterComment:Z

    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prepared:Z

    return-void
.end method

.method public printCDATAText(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    add-int/lit8 v5, v1, 0x2

    if-ge v5, v0, :cond_4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3e

    if-ne v3, v6, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_3

    iget-short v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v1, v1, 0x10

    const-string v2, "http://apache.org/xml/serializer"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "EndingCDATA"

    invoke-static {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-short v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->features:S

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/16 v6, 0x52

    if-nez v2, :cond_1

    const-string v2, "cdata-section-not-splitted"

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, v3, v2, v7}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {v2, v3}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p0, v6, v1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "wf-invalid-character"

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {p1, p0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    new-instance p0, Lorg/w3c/dom/ls/LSException;

    invoke-direct {p0, v6, v1}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_2
    const-string v1, "SplittingCDATA"

    invoke-static {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v2, "]]]]><![CDATA[>"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    move v1, v5

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->surrogates(II)V

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The character \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/16 v3, 0x20

    if-lt v2, v3, :cond_7

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0xf7

    if-ne v2, v3, :cond_9

    :cond_7
    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-eq v2, v3, :cond_9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v5, "]]>&#x"

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v3, ";<![CDATA["

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_3
    add-int/2addr v1, v4

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public printDoctypeURL(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    return-void
.end method

.method public printEscaped(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getEntityRef(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf7

    if-ne p1, v0, :cond_3

    :cond_1
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_4

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 8
    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    sub-int/2addr p1, v0

    shr-int/lit8 v0, p1, 0xa

    const v2, 0xd800

    add-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    .line 9
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    and-int/lit16 p1, p1, 0x3ff

    const v0, 0xdc00

    add-int/2addr p1, v0

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_1
    return-void
.end method

.method public printEscaped(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xfc00

    and-int v3, v1, v2

    const v4, 0xd800

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v0, 0x1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/2addr v2, v5

    const v6, 0xdc00

    if-ne v2, v6, :cond_0

    sub-int/2addr v1, v4

    shl-int/lit8 v0, v1, 0xa

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    add-int/2addr v0, v5

    sub-int v1, v0, v6

    move v0, v3

    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final printHex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    return-void
.end method

.method public printText(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v2, p2, :cond_6

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_2

    .line 11
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v3, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v2, p2, :cond_6

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v3, 0x20

    if-eq p2, v3, :cond_5

    const/16 v3, 0xc

    if-eq p2, v3, :cond_5

    const/16 v3, 0x9

    if-eq p2, v3, :cond_5

    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v3, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_5

    .line 15
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_5

    .line 16
    :cond_5
    :goto_4
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printSpace()V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public printText([CIIZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    const/16 v1, 0xa

    if-eqz p4, :cond_2

    :goto_0
    add-int/lit8 p4, p3, -0x1

    if-lez p3, :cond_6

    .line 1
    aget-char p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_2

    .line 3
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, p3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :goto_2
    move p3, p4

    goto :goto_0

    :cond_2
    :goto_3
    add-int/lit8 p4, p3, -0x1

    if-lez p3, :cond_6

    .line 4
    aget-char p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x20

    if-eq p3, v2, :cond_5

    const/16 v2, 0xc

    if-eq p3, v2, :cond_5

    const/16 v2, 0x9

    if-eq p3, v2, :cond_5

    if-eq p3, v1, :cond_5

    if-ne p3, v0, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p5, :cond_4

    .line 5
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, p3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_5

    .line 6
    :cond_4
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_5

    .line 7
    :cond_5
    :goto_4
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printSpace()V

    :goto_5
    move p3, p4

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    const-string v1, "?>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "<?"

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->indent()V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->unindent()V

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_5

    iput-boolean p2, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->afterElement:Z

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public reset()Z
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prepared:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    return v2

    :cond_0
    const-string p0, "http://apache.org/xml/serializer"

    const-string v0, "ResetInMiddle"

    invoke-static {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serialize(Lorg/w3c/dom/Document;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->reset()Z

    .line 21
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    .line 23
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializePreRoot()V

    .line 24
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->flush()V

    .line 25
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public serialize(Lorg/w3c/dom/DocumentFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->reset()Z

    .line 15
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    .line 17
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->flush()V

    .line 18
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public serialize(Lorg/w3c/dom/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->reset()Z

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    .line 4
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->flush()V

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->reset()Z

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    .line 10
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializePreRoot()V

    .line 11
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->flush()V

    .line 12
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public serializeDTD(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    const-string v2, " ["

    const-string v3, "<!DOCTYPE "

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v3, " PUBLIC "

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    const-string v3, " "

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, " SYSTEM "

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v4}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v4}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v0, "]>"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    :cond_5
    :goto_2
    return-void
.end method

.method public serializeDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->leaveDTD()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getOmitXMLDeclaration()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<?xml version=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, " encoding=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getStandalone()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " standalone=\"yes\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/StringBuffer;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializePreRoot()V

    return-void
.end method

.method public abstract serializeElement(Lorg/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public serializeNode(Lorg/w3c/dom/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v2, :cond_19

    const/16 v5, 0xb

    if-eq v1, v5, :cond_18

    const/4 v5, 0x4

    if-eq v1, v4, :cond_15

    const/16 v6, 0x8

    if-eq v1, v5, :cond_11

    const/4 v7, 0x5

    if-eq v1, v7, :cond_b

    const/4 v5, 0x7

    if-eq v1, v5, :cond_8

    if-eq v1, v6, :cond_5

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeDocument()V

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V

    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->endDTD()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "getPublicId"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_2
    move-object v5, v4

    :goto_0
    :try_start_2
    const-string v6, "getSystemId"

    invoke-virtual {v1, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v0

    :catch_2
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V

    iput-object v5, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->endDTD()V

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeDTD(Ljava/lang/String;)V

    :cond_4
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_started:Z

    goto/16 :goto_9

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getOmitComments()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    if-eq p1, v3, :cond_6

    if-eq p1, v4, :cond_6

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    if-eq v0, v3, :cond_9

    if-eq v0, v4, :cond_9

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    :goto_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_b
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->endCDATA()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    iget-short v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->features:S

    and-int/2addr v0, v5

    if-nez v0, :cond_d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_4

    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    if-eq v0, v3, :cond_f

    if-eq v0, v4, :cond_e

    goto :goto_7

    :cond_e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_6
    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_6

    :cond_f
    return-void

    :cond_10
    :goto_7
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->features:S

    and-int/2addr v1, v6

    if-eqz v1, :cond_14

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/2addr v1, v6

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    if-eq p1, v3, :cond_12

    if-eq p1, v4, :cond_12

    goto :goto_8

    :cond_12
    return-void

    :cond_13
    :goto_8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->startCDATA()V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->endCDATA()V

    goto/16 :goto_d

    :cond_14
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_15
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    if-eq p1, v3, :cond_1d

    if-eq p1, v4, :cond_1d

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-nez p1, :cond_17

    const/16 p1, 0xa

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1d

    :cond_17
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    :goto_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_a
    if-eqz p1, :cond_1d

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_a

    :cond_19
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    if-eq v0, v3, :cond_1b

    if-eq v0, v4, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_b
    if-eqz p1, :cond_1b

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_b

    :cond_1b
    return-void

    :cond_1c
    :goto_c
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->serializeElement(Lorg/w3c/dom/Element;)V

    :cond_1d
    :goto_d
    return-void
.end method

.method public serializePreRoot()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    :cond_2
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setOutputByteStream(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->reset()Z

    return-void

    :cond_0
    const-string p0, "output"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://apache.org/xml/serializer"

    const-string v0, "ArgumentIsNull"

    invoke-static {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputCharStream(Ljava/io/Writer;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->reset()Z

    return-void

    :cond_0
    const-string p0, "writer"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://apache.org/xml/serializer"

    const-string v0, "ArgumentIsNull"

    invoke-static {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputFormat(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->reset()Z

    return-void

    :cond_0
    const-string p0, "format"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "http://apache.org/xml/serializer"

    const-string v0, "ArgumentIsNull"

    invoke-static {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->endCDATA()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startCDATA()V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startNonEscaping()V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startPreserving()V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->getElementState()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method public surrogates(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    const-string v1, "\' is an invalid XML character"

    const-string v2, "The character \'"

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    int-to-char p2, p2

    invoke-static {p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->supplemental(CC)I

    move-result p1

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValid(I)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object p2

    iget-boolean p2, p2, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v0, "]]>&#x"

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p1, ";<![CDATA["

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->enterDTD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "<!ENTITY "

    if-nez p2, :cond_0

    :try_start_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p2, " SYSTEM "

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v0, " PUBLIC "

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p2, " NDATA "

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->breakLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
