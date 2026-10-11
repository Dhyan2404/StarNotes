.class public final Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;
.super Lcom/sun/org/apache/xml/internal/serializer/ToStream;
.source "SourceFile"


# static fields
.field private static m_xmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;


# instance fields
.field m_cdataTagOpen:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.sun.org.apache.xml.internal.serializer.XMLEntities"

    const-string v1, "xml"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;->m_xmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;->m_cdataTagOpen:Z

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;->m_xmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->initCDATA()V

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    return-void
.end method

.method private getXMLVersion()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string v3, "ER_XML_VERSION_NOT_SUPPORTED"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v3, :cond_2

    new-instance v3, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v3, v0, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method private resetToXMLStream()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;->m_cdataTagOpen:Z

    return-void
.end method


# virtual methods
.method public CopyFrom(Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;)V
    .locals 1

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getOmitXMLDeclaration()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setOmitXMLDeclaration(Z)V

    iget-boolean v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    iget-boolean v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    iget-boolean v0, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->getIndentAmount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setIndentAmount(I)V

    iget-boolean v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    iget-boolean v0, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDoctypeSystem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDoctypePublic(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getStandalone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setStandalone(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setMediaType(Ljava/lang/String;)V

    iget v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_maxCharacter:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_maxCharacter:I

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    iget-boolean v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_spaceBeforeClose:Z

    iget-boolean p1, p1, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_cdataStartCalled:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p6, :cond_0

    const-string v0, "xmlns"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string p3, "ER_ILLEGAL_ATTRIBUTE_POSITION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz p3, :cond_2

    new-instance p3, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {p3, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p3, p3, 0x1

    const/16 v1, 0x22

    const-string v2, "=\""

    const/16 v3, 0x20

    if-lez p3, :cond_0

    :try_start_1
    sget-object p3, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;->m_xmlcharInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    iget-boolean p3, p3, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz p3, :cond_0

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
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

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushPending()V

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushWriter()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndDoc()V

    :cond_1
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endPreserving()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->pop()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushPending()V

    const-string v0, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startNonEscaping()V

    goto/16 :goto_2

    :cond_1
    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->endNonEscaping()V

    goto/16 :goto_2

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;->startDocumentInternal()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v2, "<?"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :cond_6
    const-string v2, "?>"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    if-lez v2, :cond_7

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_7
    const-string v3, "? >"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    :goto_1
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget v2, v2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    if-gtz v2, :cond_a

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public pushNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget v1, v1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToXMLStream;->resetToXMLStream()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startDocumentInternal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_3

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getOmitXMLDeclaration()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "1.0"

    :cond_1
    iget-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " standalone=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getStandalone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v5, "<?xml version=\""

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\" encoding=\""

    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "?>"

    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v4, v1, v0, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public startPreserving()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->push(Z)Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    return-void
.end method
