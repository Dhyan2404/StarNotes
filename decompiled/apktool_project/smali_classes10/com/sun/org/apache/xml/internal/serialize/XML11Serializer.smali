.class public Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;
.super Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;
.source "SourceFile"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fDOML1:Z

.field protected fLocalNSBinder:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

.field protected fNSBinder:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

.field protected fNamespaceCounter:I

.field protected fNamespaces:Z

.field private fPreserveSpace:Z

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fDOML1:Z

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaces:Z

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;-><init>(Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 9
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaces:Z

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string p1, "1.1"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p2, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string v1, "xml"

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;-><init>(Ljava/io/OutputStream;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    .line 17
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fDOML1:Z

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 19
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaces:Z

    .line 20
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string p1, "1.1"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;-><init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fDOML1:Z

    const/4 p2, 0x1

    .line 13
    iput p2, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 14
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->fNamespaces:Z

    .line 15
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_format:Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;

    const-string p1, "1.1"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->content()Lcom/sun/org/apache/xml/internal/serialize/ElementState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->doCData:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->preserveSpace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getNextIndent()I

    move-result v1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    const/4 v8, 0x1

    iget-boolean v9, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->printText([CIIZZ)V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->printText([CIIZZ)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v4, "<![CDATA["

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/serialize/ElementState;->inCData:Z

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->getNextIndent()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V

    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_8

    aget-char v1, p1, p2

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_4

    add-int/lit8 v4, p2, 0x2

    if-ge v4, p3, :cond_4

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p1, v5

    if-ne v5, v2, :cond_4

    aget-char v2, p1, v4

    const/16 v5, 0x3e

    if-ne v2, v5, :cond_4

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    move p2, v4

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_5

    aget-char v2, p1, p2

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->surrogates(II)V

    goto :goto_2

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

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v4, "]]>&#x"

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    add-int/2addr p2, v3

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->setNextIndent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final printCDATAText(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    add-int/lit8 v5, v1, 0x2

    if-ge v5, v0, :cond_3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3e

    if-ne v3, v6, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_2

    iget-short v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v2, v1, 0x10

    const-string v3, "http://apache.org/xml/serializer"

    const/4 v6, 0x0

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, "EndingCDATA"

    invoke-static {v3, v1, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, v2, v6, v3}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    const-string v1, "SplittingCDATA"

    invoke-static {v3, v1, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v1, v4, v6, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fDOMError:Lcom/sun/org/apache/xerces/internal/dom/DOMErrorImpl;

    invoke-interface {v1, v2}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v2, "]]]]><![CDATA[>"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    move v1, v5

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->surrogates(II)V

    goto :goto_2

    :cond_4
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

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_6
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

    :goto_2
    add-int/2addr v1, v4

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public printEscaped(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->surrogates(II)V

    goto/16 :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v3, 0xa

    if-eq v2, v3, :cond_7

    const/16 v3, 0xd

    if-eq v2, v3, :cond_7

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    const/16 v3, 0x85

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2028

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v3, 0x26

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v3, 0x22

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v3, 0x20

    if-lt v2, v3, :cond_6

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printHex(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public printText(Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\' is an invalid XML character"

    const-string v2, "The character \'"

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    :goto_0
    if-ge v3, v0, :cond_7

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_0

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, p2, v4}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->surrogates(II)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v4, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v3, v0, :cond_7

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 10
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_4

    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, p2, v4}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->surrogates(II)V

    goto :goto_3

    .line 12
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    .line 13
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 14
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v4, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public printText([CIIZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\' is an invalid XML character"

    const-string v1, "The character \'"

    if-eqz p4, :cond_3

    :goto_0
    add-int/lit8 p4, p3, -0x1

    if-lez p3, :cond_7

    add-int/lit8 p3, p2, 0x1

    .line 16
    aget-char p2, p1, p2

    .line 17
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p4, -0x1

    if-lez p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    .line 18
    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->surrogates(II)V

    move p2, p4

    goto :goto_1

    .line 19
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    :goto_1
    move p3, v2

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 20
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_2
    move p2, p3

    move p3, p4

    goto :goto_0

    :cond_3
    :goto_3
    add-int/lit8 p4, p3, -0x1

    if-lez p3, :cond_7

    add-int/lit8 p3, p2, 0x1

    .line 23
    aget-char p2, p1, p2

    .line 24
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v2, p4, -0x1

    if-lez p4, :cond_4

    add-int/lit8 p4, p3, 0x1

    .line 25
    aget-char p3, p1, p3

    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->surrogates(II)V

    move p2, p4

    goto :goto_4

    .line 26
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    move p2, p3

    :goto_4
    move p3, v2

    goto :goto_3

    :cond_5
    if-eqz p5, :cond_6

    .line 27
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_5

    .line 29
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/XML11Serializer;->printXMLChar(I)V

    :goto_5
    move p2, p3

    move p3, p4

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-eq p1, v0, :cond_5

    const/16 v0, 0x85

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2028

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p1, "&lt;"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x26

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p1, "&amp;"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    const-string p1, "&gt;"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->_printer:Lcom/sun/org/apache/xml/internal/serialize/Printer;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/BaseMarkupSerializer;->printHex(I)V

    :goto_1
    return-void
.end method

.method public reset()Z
    .locals 0

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serialize/XMLSerializer;->reset()Z

    const/4 p0, 0x1

    return p0
.end method

.method public final surrogates(II)V
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

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

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
