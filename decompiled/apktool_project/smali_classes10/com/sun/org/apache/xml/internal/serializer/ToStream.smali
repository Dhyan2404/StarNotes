.class public abstract Lcom/sun/org/apache/xml/internal/serializer/ToStream;
.super Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;,
        Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;
    }
.end annotation


# static fields
.field private static final COMMENT_BEGIN:Ljava/lang/String; = "<!--"

.field private static final COMMENT_END:Ljava/lang/String; = "-->"


# instance fields
.field m_canConvertMeth:Ljava/lang/reflect/Method;

.field protected m_cdataStartCalled:Z

.field protected m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

.field m_charToByteConverter:Ljava/lang/Object;

.field protected m_disableOutputEscapingStates:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

.field m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

.field private m_escaping:Z

.field private m_expandDTDEntities:Z

.field protected m_format:Ljava/util/Properties;

.field protected m_inDoctype:Z

.field m_isUTF8:Z

.field protected m_ispreserve:Z

.field protected m_isprevtext:Z

.field protected m_lineSep:[C

.field protected m_lineSepLen:I

.field protected m_lineSepUse:Z

.field protected m_maxCharacter:I

.field protected m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

.field m_shouldFlush:Z

.field protected m_spaceBeforeClose:Z

.field m_startNewLine:Z

.field m_triedToGetConverter:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_disableOutputEscapingStates:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_triedToGetConverter:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charToByteConverter:Ljava/lang/Object;

    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    invoke-static {}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getLastPrintable()I

    move-result v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_maxCharacter:I

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    array-length v1, v1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_shouldFlush:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_inDoctype:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isUTF8:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_cdataStartCalled:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_expandDTDEntities:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_escaping:Z

    return-void
.end method

.method private DTDprolog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    :cond_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_inDoctype:Z

    if-eqz v1, :cond_1

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_inDoctype:Z

    :cond_1
    return-void
.end method

.method private addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 2

    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, "{}"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private declared-synchronized init(Ljava/io/Writer;Ljava/util/Properties;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/Writer;Ljava/util/Properties;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized init(Ljava/io/Writer;Ljava/util/Properties;ZZ)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_shouldFlush:Z

    .line 2
    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p4, :cond_0

    instance-of p4, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    invoke-direct {p4, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 5
    :goto_0
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_format:Ljava/util/Properties;

    const-string p1, "cdata-section-elements"

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setCdataSectionElements(Ljava/lang/String;Ljava/util/Properties;)V

    const-string p1, "{http://xml.apache.org/xalan}indent-amount"

    .line 7
    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertyUtils;->getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setIndentAmount(I)V

    const-string p1, "indent"

    .line 8
    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setIndent(Z)V

    const-string p1, "{http://xml.apache.org/xalan}line-separator"

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    :cond_1
    const-string p1, "omit-xml-declaration"

    .line 12
    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setOmitXMLDeclaration(Z)V

    const-string p1, "doctype-system"

    .line 14
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDoctypeSystem(Ljava/lang/String;)V

    const-string p1, "doctype-public"

    .line 15
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDoctypePublic(Ljava/lang/String;)V

    const-string p4, "standalone"

    .line 17
    invoke-virtual {p2, p4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_3

    const-string p4, "standalone"

    .line 18
    invoke-virtual {p2, p4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_2

    .line 19
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setStandaloneInternal(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setStandalone(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p3, "media-type"

    .line 21
    invoke-virtual {p2, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setMediaType(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string p3, "-//W3C//DTD XHTML"

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_spaceBeforeClose:Z

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "version"

    .line 25
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setVersion(Ljava/lang/String;)V

    .line 27
    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "encoding"

    .line 28
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    :cond_6
    const-string p3, "UTF-8"

    .line 30
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isUTF8:Z

    const-string p1, "{http://xml.apache.org/xalan}entities"

    .line 31
    invoke-virtual {p2, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p3, "method"

    .line 32
    invoke-virtual {p2, p3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 33
    invoke-static {p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isCharacterInC0orC1Range(C)Z
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    const/4 v2, 0x1

    if-lt p0, v0, :cond_1

    const/16 v0, 0x9f

    if-le p0, v0, :cond_2

    :cond_1
    if-lt p0, v2, :cond_3

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private isEscapingDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_disableOutputEscapingStates:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result p0

    return p0
.end method

.method private static isNELorLSEPCharacter(C)Z
    .locals 1

    const/16 v0, 0x85

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2028

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isUTF16Surrogate(C)Z
    .locals 1

    const v0, 0xfc00

    and-int/2addr p0, v0

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private printSpace(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processDirty([CIICIZ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p5, p5, 0x1

    if-le p3, p5, :cond_0

    sub-int v0, p3, p5

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v1, p1, p5, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    const/16 p5, 0xa

    if-ne p5, p4, :cond_1

    if-eqz p6, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    const/4 p4, 0x0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p1, p2, p4, p0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move v5, p2

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    move-result p0

    add-int/lit8 p3, p0, -0x1

    :goto_0
    return p3
.end method

.method private resetToStream()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_cdataStartCalled:Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_disableOutputEscapingStates:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_escaping:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_inDoctype:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isUTF8:Z

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->clear()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_shouldFlush:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_spaceBeforeClose:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_expandDTDEntities:Z

    return-void
.end method

.method private setCdataSectionElements(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 7

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_4

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 6
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    :cond_0
    const/16 v6, 0x7b

    if-ne v6, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0x7d

    if-ne v6, v5, :cond_2

    move v4, v2

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->addCdataSectionElement(Ljava/lang/String;Ljava/util/Vector;)V

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 14
    :cond_5
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setCdataSectionElements(Ljava/util/Vector;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p7, :cond_0

    const/16 p4, 0xa

    if-ne p4, p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    const/4 p4, 0x0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {p1, p2, p4, p0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {p4, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextChar(I)Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    if-nez p6, :cond_3

    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {p4, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrChar(I)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 p3, p3, 0x1

    :cond_3
    return p3
.end method

.method public accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result p7

    if-ne p3, p7, :cond_8

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v0

    const/16 v1, 0x3b

    const-string v2, "&#"

    if-eqz v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    const-string p0, "ER_INVALID_UTF16_SURROGATE"

    if-ge p3, p5, :cond_1

    aget-char p3, p4, p3

    invoke-static {p3}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->toCodePoint(CC)I

    move-result p0

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p7, p7, 0x2

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    sget-object p4, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    sget-object p3, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->isCharacterInC0orC1Range(C)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "1.1"

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->isNELorLSEPCharacter(C)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p6, :cond_4

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextChar(I)Z

    move-result p3

    if-nez p3, :cond_5

    :cond_4
    if-nez p6, :cond_6

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrChar(I)Z

    move-result p3

    if-eqz p3, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    if-lez p0, :cond_6

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 p7, p7, 0x1

    :cond_8
    :goto_2
    return p7
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p1, v0, p5}, Lorg/xml/sax/helpers/AttributesImpl;->setValue(ILjava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->firePseudoAttributes()V

    goto :goto_2

    :cond_2
    if-eqz p6, :cond_5

    const/16 p6, 0x3a

    invoke-virtual {p3, p6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->getMappingFromPrefix(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget v2, v2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object p3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p6

    invoke-virtual {p6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    move-object v3, p3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->firePseudoAttributes()V

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_2
    return v1
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean p5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz p5, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->DTDprolog()V

    const-string v0, "<!ATTLIST "

    invoke-virtual {p5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x20

    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p5, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p5, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p5, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    const/16 p1, 0x3e

    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    const/4 p2, 0x0

    invoke-virtual {p5, p1, p2, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public cdata([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_1
    if-lt p3, v0, :cond_2

    aget-char v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v3, "<![CDATA["

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_3
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->isEscapingDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->charactersRaw([CII)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeNormalizedChars([CIIZZ)V

    :goto_0
    if-eqz v1, :cond_5

    add-int v1, p2, p3

    sub-int/2addr v1, v0

    aget-char v0, p1, v1

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_6

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCDATAEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    sget-object p2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string p3, "ER_OIERROR"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public characters(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 32
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 35
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 37
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, p1, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->characters([CII)V

    return-void
.end method

.method public characters([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_18

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    .line 7
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_cdataStartCalled:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isCdataSection:Z

    if-eqz v0, :cond_3

    goto/16 :goto_8

    .line 8
    :cond_3
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_disableOutputEscapingStates:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->peekOrFalse()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_escaping:Z

    if-nez v0, :cond_5

    goto/16 :goto_7

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    .line 13
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_6
    add-int v0, p2, p3

    add-int/lit8 v1, p2, -0x1

    move v5, p2

    move v7, v1

    :goto_1
    const/4 v1, 0x1

    if-ge v5, v0, :cond_a

    .line 14
    :try_start_0
    aget-char v6, p1, v5

    const/16 v2, 0x20

    if-eq v6, v2, :cond_8

    const/16 v2, 0xa

    if-ne v6, v2, :cond_7

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    if-nez v2, :cond_8

    :cond_7
    const/16 v2, 0xd

    if-eq v6, v2, :cond_8

    const/16 v2, 0x9

    if-ne v6, v2, :cond_a

    .line 15
    :cond_8
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isTextASCIIClean(I)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    .line 16
    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->processDirty([CIICIZ)I

    move-result v5

    move v7, v5

    :cond_9
    add-int/2addr v5, v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_a
    if-ge v5, v0, :cond_b

    .line 17
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    :cond_b
    const-string v2, "1.0"

    .line 18
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_2
    if-ge v5, v0, :cond_12

    :goto_3
    if-ge v5, v0, :cond_c

    .line 19
    aget-char v2, p1, v5

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_c

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isTextASCIIClean(I)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    if-ne v5, v0, :cond_d

    goto :goto_5

    .line 20
    :cond_d
    aget-char v6, p1, v5

    .line 21
    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->isCharacterInC0orC1Range(C)Z

    move-result v2

    if-nez v2, :cond_f

    if-nez v9, :cond_e

    invoke-static {v6}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->isNELorLSEPCharacter(C)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual {p0, v6}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {v2, v6}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialTextChar(I)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    const/16 v2, 0x22

    if-ne v2, v6, :cond_10

    goto :goto_4

    :cond_10
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    .line 22
    invoke-direct/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->processDirty([CIICIZ)I

    move-result v7

    move v5, v7

    :cond_11
    :goto_4
    add-int/2addr v5, v1

    goto :goto_2

    :cond_12
    :goto_5
    add-int/2addr v7, v1

    if-le v5, v7, :cond_13

    sub-int/2addr v5, v7

    .line 23
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, v7, v5}, Ljava/io/Writer;->write([CII)V

    .line 24
    :cond_13
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_14

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCharEvent([CII)V

    :cond_14
    return-void

    .line 27
    :goto_6
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 28
    :cond_15
    :goto_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->charactersRaw([CII)V

    .line 29
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_16

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCharEvent([CII)V

    :cond_16
    return-void

    .line 31
    :cond_17
    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->cdata([CII)V

    :cond_18
    :goto_9
    return-void
.end method

.method public charactersRaw([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public closeCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public closeStartTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->isCdataSection()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_isCdataSection:Z

    :cond_2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->push(Z)Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    :cond_3
    add-int v0, p2, p3

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v3, p2

    move v5, v3

    move v4, v1

    :goto_1
    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ge v3, v0, :cond_7

    if-eqz v4, :cond_5

    aget-char v4, p1, v3

    if-ne v4, v6, :cond_5

    sub-int v4, v3, v5

    invoke-virtual {v2, p1, v5, v4}, Ljava/io/Writer;->write([CII)V

    const-string v4, " -"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    :cond_5
    aget-char v4, p1, v3

    if-ne v4, v6, :cond_6

    move v4, v7

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-lez p3, :cond_9

    sub-int v1, v0, v5

    if-lez v1, :cond_8

    invoke-virtual {v2, p1, v5, v1}, Ljava/io/Writer;->write([CII)V

    :cond_8
    sub-int/2addr v0, v7

    aget-char v0, p1, v0

    if-ne v0, v6, :cond_9

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(I)V

    :cond_9
    const-string v0, "-->"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v7, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireCommentEvent([CII)V

    :cond_a
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->DTDprolog()V

    const-string v1, "<!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public endDTD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_inDoctype:Z

    if-nez v2, :cond_1

    const-string v2, "]>"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v2, v1, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0, v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget p2, p2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->popNamespaces(ILorg/xml/sax/ContentHandler;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 4
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, p2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    .line 6
    iget-object p2, p2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p2}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result p2

    if-lez p2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    .line 9
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->clear()V

    .line 10
    :cond_2
    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_spaceBeforeClose:Z

    if-eqz p2, :cond_3

    const-string p2, " />"

    .line 11
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "/>"

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget p2, p2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent(I)V

    :cond_6
    const/16 p2, 0x3c

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    const/16 p2, 0x2f

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 19
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p2, 0x3e

    .line 20
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean p1, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    const/4 p2, 0x0

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, p2

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_preserves:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->pop()Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    .line 23
    :cond_8
    iput-boolean p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    .line 24
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_9

    .line 25
    invoke-super {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    .line 26
    :cond_9
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_prev:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    return-void

    :catch_0
    move-exception p0

    .line 27
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endNonEscaping()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_disableOutputEscapingStates:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->pop()Z

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

.method public ensureAttributesNamespaceIsDeclared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v2, "xmlns:"

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0, p3, p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v3, "http://www.w3.org/2000/xmlns/"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3

    :cond_2
    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v4, "http://www.w3.org/2000/xmlns/"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-object p2
.end method

.method public ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "http://www.w3.org/2000/xmlns/"

    const-string v0, "xmlns"

    if-eqz v2, :cond_3

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, p2

    :goto_2
    if-eqz v2, :cond_4

    move-object v6, v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    :goto_3
    const-string v7, "CDATA"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_5
    return-void
.end method

.method public escapingNotNeeded(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_2

    const/16 p0, 0x20

    if-ge p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p0, p1, :cond_1

    const/16 p0, 0xd

    if-eq p0, p1, :cond_1

    const/16 p0, 0x9

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->isInEncoding(C)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->DTDprolog()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p3, " PUBLIC \""

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " SYSTEM \""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, "\" >"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public firePseudoAttributes()V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;

    invoke-direct {v2, p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;-><init>(Lcom/sun/org/apache/xml/internal/serializer/ToStream;Ljava/lang/StringBuffer;)V

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->processAttributes(Ljava/io/Writer;I)V

    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    array-length v1, v0

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public flushPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_2
    return-void
.end method

.method public final flushWriter()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_3

    :try_start_0
    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_shouldFlush:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->flush()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->flushBuffer()V

    :cond_1
    :goto_0
    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/serializer/WriterToASCI;

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_shouldFlush:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
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

.method public getIndentAmount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_indentAmount:I

    return p0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_format:Ljava/util/Properties;

    return-object p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToASCI;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sun/org/apache/xml/internal/serializer/WriterToASCI;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/WriterToASCI;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->characters([CII)V

    return-void
.end method

.method public indent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent(I)V

    return-void
.end method

.method public indent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputLineSep()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_indentAmount:I

    if-lez v0, :cond_1

    mul-int/2addr p1, v0

    .line 4
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->printSpace(I)V

    :cond_1
    return-void
.end method

.method public declared-synchronized init(Ljava/io/OutputStream;Ljava/util/Properties;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "encoding"

    .line 38
    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    :cond_0
    const-string v1, "UTF-8"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 41
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isUTF8:Z

    .line 42
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/WriterToUTF8Buffered;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/Writer;Ljava/util/Properties;ZZ)V

    goto :goto_2

    :cond_1
    const-string v1, "WINDOWS-1250"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    :try_start_1
    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catch_0
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: encoding \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" not supported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", using "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    .line 46
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->setEncoding(Ljava/lang/String;)V

    .line 47
    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p1

    .line 48
    :goto_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/Writer;Ljava/util/Properties;ZZ)V

    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/WriterToASCI;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/WriterToASCI;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p2, p3, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/Writer;Ljava/util/Properties;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->DTDprolog()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->DTDprolog()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!NOTATION "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p3, " PUBLIC \""

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " SYSTEM \""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, "\" >"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public outputDocTypeDecl(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x22

    if-eqz p1, :cond_1

    const-string v2, " PUBLIC \""

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_2

    const-string p1, " SYSTEM \""

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, " \""

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string p1, "\">"

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/Writer;->write([CII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public outputEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, " \""

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "\">"

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    const/4 p2, 0x0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, p1, p2, p0}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public final outputLineSep()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v2, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v3, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "=\""

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->resetToStream()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    return-void
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_expandDTDEntities:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setEncoding(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->getEncodingInfo(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    if-eqz p1, :cond_3

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string v1, "ER_ENCODING_NOT_SUPPORTED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljavax/xml/transform/Transformer;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v1, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_escaping:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_escaping:Z

    return v0
.end method

.method public setIndentAmount(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_indentAmount:I

    return-void
.end method

.method public setLineSepUse(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepUse:Z

    return v0
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_shouldFlush:Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/Writer;Ljava/util/Properties;ZZ)V

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_shouldFlush:Z

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_format:Ljava/util/Properties;

    if-nez v0, :cond_0

    const-string v0, "xml"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->init(Ljava/io/OutputStream;Ljava/util/Properties;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setTransformer(Ljavax/xml/transform/Transformer;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    instance-of p1, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    invoke-direct {p1, v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    invoke-direct {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTraceWriter;-><init>(Ljava/io/Writer;Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    :goto_0
    return-void
.end method

.method public shouldIndent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_cdataStartCalled:Z

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDoctypeSystem(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setDoctypePublic(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object p1, p2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_inDoctype:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0, v0, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    .line 7
    :cond_2
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v2, 0x1

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, p3, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->outputDocTypeDecl(Ljava/lang/String;Z)V

    .line 9
    :cond_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeStartTag()V

    .line 12
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->ensurePrefixIsDeclared(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_5
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_ispreserve:Z

    .line 15
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->indent()V

    .line 17
    :cond_6
    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_startNewLine:Z

    .line 18
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v2, 0x3c

    .line 19
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 20
    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_7

    .line 21
    invoke-virtual {p0, p4}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 22
    :cond_7
    iget-object p4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-virtual {p4, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    .line 23
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_isprevtext:Z

    .line 24
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->firePseudoAttributes()V

    :cond_8
    return-void

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_expandDTDEntities:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startNonEscaping()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->characters(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->endNonEscaping()V

    :cond_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    return-void
.end method

.method public startNonEscaping()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_disableOutputEscapingStates:Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream$BoolStack;->push(Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->flushPending()V

    .line 3
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget p3, p3, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget p3, p3, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_currentElemDepth:I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->pushNamespace(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string v0, ""

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v5, "xmlns"

    const-string v3, "http://www.w3.org/2000/xmlns/"

    const-string v6, "CDATA"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v5

    move-object v7, p2

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "http://www.w3.org/2000/xmlns/"

    const-string v6, "CDATA"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    .line 10
    invoke-virtual/range {v2 .. v8}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_2
    :goto_1
    return p3
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->DTDprolog()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p3, " PUBLIC \""

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " SYSTEM \""

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, "\" NDATA "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const-string p2, " >"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p0}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    array-length v0, v0

    if-le p3, v0, :cond_0

    mul-int/lit8 v0, p3, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p3, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    move v8, v1

    :goto_0
    if-ge v8, p3, :cond_2

    aget-char v2, p2, v8

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_charInfo:Lcom/sun/org/apache/xml/internal/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/serializer/CharInfo;->isSpecialAttrChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v8

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->accumDefaultEscape(Ljava/io/Writer;CI[CIZZ)I

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeNormalizedChars([CIIZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_a

    aget-char v1, p1, p2

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSep:[C

    const/4 v2, 0x0

    iget v4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_lineSepLen:I

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x3b

    const-string v4, "&#"

    if-eqz p4, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_1
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v5, p3, -0x2

    if-ge p2, v5, :cond_4

    const/16 v5, 0x5d

    if-ne v5, v1, :cond_4

    add-int/lit8 v6, p2, 0x1

    aget-char v6, p1, v6

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, p2, 0x2

    aget-char v6, p1, v5

    const/16 v7, 0x3e

    if-ne v7, v6, :cond_4

    const-string p2, "]]]]><![CDATA[>"

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move p2, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p4, :cond_5

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-nez v2, :cond_5

    const-string v2, "<![CDATA["

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    :cond_5
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_7
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    goto :goto_1

    :cond_8
    iget-boolean v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->closeCDATA()V

    :cond_9
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :goto_2
    add-int/2addr p2, v3

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public writeUTF16Surrogate(C[CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    const-string v1, "ER_INVALID_UTF16_SURROGATE"

    if-ge v0, p4, :cond_3

    aget-char p4, p2, v0

    invoke-static {p4}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->isLowUTF16Surrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream;->m_encodingInfo:Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;

    invoke-virtual {v1, p1, p4}, Lcom/sun/org/apache/xml/internal/serializer/EncodingInfo;->isInEncoding(CC)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, p3, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1, p4}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->toCodePoint(CC)I

    move-result p0

    const/16 p1, 0x26

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    const/16 p1, 0x23

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2, p3, v2}, Ljava/io/Writer;->write([CII)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    sget-object p2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    sget-object p2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
