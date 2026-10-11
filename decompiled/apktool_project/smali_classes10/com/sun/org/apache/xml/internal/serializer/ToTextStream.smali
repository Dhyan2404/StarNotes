.class public final Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;
.super Lcom/sun/org/apache/xml/internal/serializer/ToStream;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public cdata([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCDATAEvent([CII)V
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

.method public characters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 10
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 12
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->characters([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->flushPending()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->inTemporaryOutputState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCharEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public charactersRaw([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 3
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 5
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->comment([CII)V

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
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->flushPending()V

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->flushPending()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushWriter()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndDoc()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_0
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
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_0

    .line 2
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flushPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_0
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->writeNormalizedChars([CIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->flushPending()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 4
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToTextStream;->startDocumentInternal()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_1

    .line 7
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->firePseudoAttributes()V

    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_0

    .line 2
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->firePseudoAttributes()V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public writeNormalizedChars([CIIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_5

    aget-char v2, p1, p2

    const/16 v3, 0xa

    if-ne v3, v2, :cond_0

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v3

    const-string v4, "ER_ILLEGAL_CHARACTER"

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/16 v3, 0x26

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(I)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
