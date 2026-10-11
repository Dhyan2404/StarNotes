.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/dtm/DTM;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DOCHANDLE_MASK:I = -0x800000

.field protected static final DOCHANDLE_SHIFT:B = 0x16t

.field protected static final NODEHANDLE_MASK:I = 0x7fffff

.field private static final fixednames:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field currentParent:I

.field private done:Z

.field gotslot:[I

.field private m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

.field private m_char_current_start:I

.field protected m_currentNode:I

.field m_docElement:I

.field m_docHandle:I

.field protected m_documentBaseURI:Ljava/lang/String;

.field private m_expandedNames:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

.field private m_incrSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

.field m_isError:Z

.field private m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

.field private m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

.field private m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

.field private m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

.field nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

.field previousSibling:I

.field private previousSiblingWasParent:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "#text"

    const-string v4, "#cdata_section"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "#comment"

    const-string v9, "#document"

    const/4 v10, 0x0

    const-string v11, "#document-fragment"

    const/4 v12, 0x0

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;ILcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_currentNode:I

    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    const/4 p1, 0x4

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->done:Z

    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_isError:Z

    iput-boolean p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    new-instance v0, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    new-instance p1, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-direct {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_expandedNames:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    return-void
.end method

.method private final appendNode(IIII)I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->appendSlot(IIII)I

    move-result p1

    iget-boolean p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 p4, 0x2

    invoke-virtual {p2, p3, p4, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return p1
.end method

.method private processAccumulatedText()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    if-eq v0, v1, :cond_0

    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendTextChild(II)V

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    :cond_0
    return-void
.end method


# virtual methods
.method public appendAttribute(IIIZII)V
    .locals 2

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x2

    iget p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set w3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p2, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xffff

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p4, p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1, p5, p6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method public appendChild(IZZ)V
    .locals 0

    return-void
.end method

.method public appendComment(II)V
    .locals 2

    const/16 v0, 0x8

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    return-void
.end method

.method public appendEndDocument()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->done:Z

    return-void
.end method

.method public appendEndElement()V
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const v2, 0xffff

    and-int/2addr v0, v2

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method public appendNSDeclaration(IIZ)V
    .locals 1

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    const-string p3, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0xd

    iget p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    return-void
.end method

.method public appendStartDocument()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    return-void
.end method

.method public appendStartElement(III)V
    .locals 3

    shl-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p2, p3

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set w3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xffff

    and-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    iget p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docElement:I

    :cond_0
    return-void
.end method

.method public appendTextChild(II)V
    .locals 2

    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result p1

    .line 4
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->previousSibling:I

    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append([CII)V

    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append([CII)V

    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendComment(II)V

    iget p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    return-void
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public documentRegistration()V
    .locals 0

    return-void
.end method

.method public documentRelease()V
    .locals 0

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

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendEndDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendEndElement()V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

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

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p3

    const v0, 0x7fffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-short v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v4, v3, v1

    shl-int/lit8 v4, v4, 0x10

    if-ne p2, v4, :cond_1

    const/4 v4, 0x3

    aget v4, v3, v4

    if-ne v4, p3, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, p1

    return p0

    :cond_1
    aget p1, v3, v2

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v2, p1, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentBuffer()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    return-object p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocument()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    return p0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-object p0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentRoot()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docElement:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getDocumentRoot(I)I
    .locals 0

    .line 1
    const p0, 0x7fffff

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p0, p1

    return p0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpandedTypeID(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 2
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFirstAttribute(I)I
    .locals 5

    const v0, 0x7fffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v4, v0, :cond_0

    return v3

    :cond_0
    add-int/2addr p1, v4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    and-int/2addr v0, v2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int v3, p1, p0

    :cond_1
    return v3
.end method

.method public getFirstChild(I)I
    .locals 8

    const v0, 0x7fffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v2, v2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    const/16 v6, 0x9

    if-eq v2, v6, :cond_0

    const/4 v6, 0x5

    if-ne v2, v6, :cond_3

    :cond_0
    add-int/lit8 v2, p1, 0x1

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v6, v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v6, v0, v1

    and-int/2addr v6, v3

    const/4 v7, 0x2

    if-ne v7, v6, :cond_2

    aget v2, v0, v7

    if-ne v2, v4, :cond_1

    return v4

    :cond_1
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v6, v2, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_0

    :cond_2
    aget v0, v0, v5

    if-ne v0, p1, :cond_3

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v2

    return p0

    :cond_3
    return v4
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLastChild(I)I
    .locals 3

    const v0, 0x7fffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result p1

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    move v2, v1

    move v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v1

    return p0
.end method

.method public getLevel(I)S
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v2, 0x1

    const-string v3, ""

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x3

    aget p1, p1, v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    and-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p0

    :cond_2
    :goto_0
    return-object v3
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalNameTable()Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    return-object p0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextAttribute(I)I
    .locals 3

    const v0, 0x7fffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->getFirstAttribute(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p1, -0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    aget v0, v0, v2

    if-eq v0, p1, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v0

    return p0

    :cond_1
    return p1
.end method

.method public getNextDescendant(II)I
    .locals 6

    const v0, 0x7fffff

    and-int/2addr p1, v0

    and-int/2addr p2, v0

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_isError:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->done:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->slotsUsed()I

    move-result v1

    if-le p2, v1, :cond_1

    goto :goto_1

    :cond_1
    if-le p2, p1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x2

    aget v4, v1, v3

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    aget v4, v1, v4

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v4, v4

    if-ne v4, v3, :cond_2

    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    aget p2, v1, p2

    if-lt p2, p1, :cond_5

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v2

    return p0

    :cond_3
    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->done:Z

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public getNextFollowing(II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNextPreceding(II)I
    .locals 2

    const v0, 0x7fffff

    and-int/2addr p2, v0

    :goto_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->specialFind(II)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getNextSibling(I)I
    .locals 5

    const v0, 0x7fffff

    and-int/2addr p1, v0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    if-ne v1, v0, :cond_2

    return v0

    :cond_2
    if-eqz v1, :cond_3

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v1

    return p0

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    add-int/2addr p1, v3

    invoke-virtual {v2, p1, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    if-ne v2, v1, :cond_4

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, p1

    return p0

    :cond_4
    return v0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    sget-object v2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    aget-object v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget p1, p1, v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v3, p1, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNodeType(I)S
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    const/16 p1, 0x8

    if-eq v1, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v0, p0, v3

    aget p0, p0, v2

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNsNameTable()Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    return-object p0
.end method

.method public getOwnerDocument(I)I
    .locals 0

    const p0, 0x7fffff

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p0, p1

    return p0
.end method

.method public getParent(I)I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x3

    aget p1, p1, v0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    shr-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getPrefixNameTable()Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    return-object p0
.end method

.method public getPreviousSibling(I)I
    .locals 4

    const v0, 0x7fffff

    and-int/2addr p1, v0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    :goto_0
    move v3, v1

    move v1, v0

    move v0, v3

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr p0, v1

    return p0
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    const/4 v2, 0x2

    aget v2, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, v2, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_xsf:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0
.end method

.method public getStringValueChunk(II[I)[C
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [C

    return-object p0
.end method

.method public getStringValueChunkCount(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasChildNodes(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final initDocument(I)V
    .locals 6

    shl-int/lit8 p1, p1, 0x16

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->nodes:Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/ChunkedIntArray;->writeSlot(IIIII)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->done:Z

    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNodeAfter(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 0

    return-void
.end method

.method public needsTwoThreads()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    return-void
.end method

.method public setContentBuffer(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setIncrementalSAXSource(Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method public setLocalNameTable(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    return-void
.end method

.method public setNsNameTable(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    return-void
.end method

.method public setPrefixNameTable(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendStartDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v10, 0x0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefix="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v1, v3, v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendStartElement(III)V

    if-nez v8, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    const-string v11, "ID"

    const-string v12, "xmlns:"

    const-string v13, "xmlns"

    if-ltz v1, :cond_5

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    iget-object v4, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v7, v3, v4, v5}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendNSDeclaration(IIZ)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    move v14, v0

    :goto_4
    if-ltz v14, :cond_9

    invoke-interface {v8, v14}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    const-string v2, ""

    move-object v1, v0

    :goto_5
    iget-object v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-interface {v8, v14}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char:Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->length()I

    move-result v15

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_nsNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-interface {v8, v14}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_localNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v0, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v14}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iget v2, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v16, v15, v2

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v17, v2

    move v2, v4

    move v3, v5

    move v4, v6

    move/from16 v5, v17

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->appendAttribute(IIIZII)V

    :cond_7
    iput v15, v7, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    :cond_8
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public supportsPreStripping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
