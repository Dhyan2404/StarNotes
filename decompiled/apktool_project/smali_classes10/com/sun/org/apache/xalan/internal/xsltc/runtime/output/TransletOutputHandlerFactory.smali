.class public Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOM:I = 0x2

.field public static final SAX:I = 0x1

.field public static final STAX:I = 0x3

.field public static final STREAM:I


# instance fields
.field private _encoding:Ljava/lang/String;

.field private _handler:Lorg/xml/sax/ContentHandler;

.field private _indentNumber:I

.field private _lexHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private _method:Ljava/lang/String;

.field private _nextSibling:Lorg/w3c/dom/Node;

.field private _node:Lorg/w3c/dom/Node;

.field private _ostream:Ljava/io/OutputStream;

.field private _outputType:I

.field private _writer:Ljava/io/Writer;

.field private _xmlStAXEventWriter:Ljavax/xml/stream/XMLEventWriter;

.field private _xmlStAXStreamWriter:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_outputType:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_ostream:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_node:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_xmlStAXEventWriter:Ljavax/xml/stream/XMLEventWriter;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_xmlStAXStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_indentNumber:I

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public static newInstance()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;->getDOM()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSerializationHandler()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_outputType:I

    const-string v1, "text"

    const-string v2, "html"

    const-string v3, "xml"

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_node:Lorg/w3c/dom/Node;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_nextSibling:Lorg/w3c/dom/Node;

    invoke-direct {v5, v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;-><init>(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    invoke-direct {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2DOM;-><init>()V

    :goto_0
    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    check-cast v5, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_xmlStAXEventWriter:Ljavax/xml/stream/XMLEventWriter;

    if-eqz v0, :cond_3

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;

    invoke-direct {v5, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;-><init>(Ljavax/xml/stream/XMLEventWriter;)V

    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_xmlStAXStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    if-eqz v0, :cond_4

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;

    invoke-direct {v5, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    if-nez v0, :cond_6

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_7

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    invoke-direct {v4, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    invoke-direct {v4, v1, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_9

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    invoke-direct {v4, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    invoke-direct {v4, v1, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-nez v0, :cond_b

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToTextSAXHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    invoke-direct {v4, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToTextSAXHandler;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    invoke-direct {v4, v1, v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-object v4

    :cond_d
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    if-nez v0, :cond_e

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/serializer/ToUnknownStream;-><init>()V

    goto :goto_3

    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;-><init>()V

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;-><init>()V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;-><init>()V

    :cond_11
    :goto_3
    if-eqz v4, :cond_12

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_indentNumber:I

    if-ltz v0, :cond_12

    invoke-interface {v4, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setIndentAmount(I)V

    :cond_12
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_13

    invoke-interface {v4, v0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_4

    :cond_13
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_ostream:Ljava/io/OutputStream;

    invoke-interface {v4, p0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    :goto_4
    return-object v4
.end method

.method public getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->getEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->getStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_encoding:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_handler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setIndentNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_indentNumber:I

    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_lexHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_nextSibling:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_node:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setOutputMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_method:Ljava/lang/String;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_ostream:Ljava/io/OutputStream;

    return-void
.end method

.method public setOutputType(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_outputType:I

    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_writer:Ljava/io/Writer;

    return-void
.end method

.method public setXMLEventWriter(Ljavax/xml/stream/XMLEventWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_xmlStAXEventWriter:Ljavax/xml/stream/XMLEventWriter;

    return-void
.end method

.method public setXMLStreamWriter(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/output/TransletOutputHandlerFactory;->_xmlStAXStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method
