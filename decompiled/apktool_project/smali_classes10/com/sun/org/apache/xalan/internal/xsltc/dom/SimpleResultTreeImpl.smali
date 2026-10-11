.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;
.super Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
.implements Lcom/sun/org/apache/xml/internal/dtm/DTM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;,
        Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_ITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field public static final NUMBER_OF_NODES:I = 0x2

.field public static final RTF_ROOT:I = 0x0

.field public static final RTF_TEXT:I = 0x1

.field private static _documentURIIndex:I


# instance fields
.field private _documentID:I

.field private _dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

.field protected _dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

.field private _escaping:Z

.field protected _size:I

.field private _text:Ljava/lang/String;

.field protected _textArray:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$1;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$1;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->EMPTY_ITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    const/4 v0, 0x0

    sput v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_documentURIIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_escaping:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_documentID:I

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendChild(IZZ)V
    .locals 0

    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    move v2, v1

    .line 2
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    if-ge v0, v3, :cond_3

    .line 3
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->getBit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEscaping(Z)Z

    move-result v2

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {p2, v3}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->characters(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p2, v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEscaping(Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public characters(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 10
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 11
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_escaping:Z

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    .line 16
    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 17
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->resize(I)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->setBit(I)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    aput-object p1, v0, v1

    return-void
.end method

.method public characters([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 20
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 21
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_escaping:Z

    if-nez v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    .line 27
    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 28
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->resize(I)V

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dontEscape:Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/BitArray;->setBit(I)V

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    aput-object p0, v0, v1

    return-void
.end method

.method public copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    return-void
.end method

.method public copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    :cond_0
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

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_text:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_size:I

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_textArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_text:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public getAttributeNode(II)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 2
    const/4 p0, -0x1

    return p0
.end method

.method public getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->EMPTY_ITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V

    return-object p1
.end method

.method public getAxisTraverser(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_dtmManager:Lcom/sun/org/apache/xalan/internal/xsltc/dom/XSLTCDTMManager;

    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocument()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_documentID:I

    return p0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDocumentRoot(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocument()I

    move-result p0

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

.method public getDocumentURI(I)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "simple_rtf"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_documentURIIndex:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_documentURIIndex:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getElementsWithIDs()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Hashtable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public getFirstAttribute(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFirstChild(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocument()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V

    return-object v0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastChild(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getFirstChild(I)I

    move-result p0

    return p0
.end method

.method public getLevel(I)S
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-nez p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getNSType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNamespaceAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getNamespaceName(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getNamespaceType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getNextAttribute(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNextSibling(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->makeNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getNodeHandle(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_documentID:I

    add-int v0, p1, p0

    :cond_0
    return v0
.end method

.method public getNodeIdent(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_documentID:I

    sub-int v0, p1, p0

    :cond_0
    return v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "#text"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getNodeType(I)S
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNodeValueIterator(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILjava/lang/String;Z)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNthDescendant(IIZ)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputDomBuilder()Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 0

    return-object p0
.end method

.method public getOwnerDocument(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getDocument()I

    move-result p0

    return p0
.end method

.method public getParent(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeHandle(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviousSibling(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getResultTreeFrag(II)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getResultTreeFrag(IIZ)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringValue(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_text:Ljava/lang/String;

    return-object p0
.end method

.method public getStringValueChunk(II[I)[C
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStringValueChunkCount(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStringValueX(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_text:Ljava/lang/String;

    return-object p0
.end method

.method public getTypedAxisIterator(II)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->EMPTY_ITERATOR:Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;

    invoke-direct {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SingletonIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;I)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;II)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;II)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;II)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    invoke-direct {p1, p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;II)V

    return-object p1
.end method

.method public getTypedChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl$SimpleIterator;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;II)V

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasChildNodes(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->getNodeIdent(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAttribute(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public isElement(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNodeAfter(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->lessThan(II)Z

    move-result p0

    return p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lessThan(II)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    if-ge p1, p2, :cond_2

    move p0, v1

    :cond_2
    return p0
.end method

.method public lookupNamespace(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNode(I)Lorg/w3c/dom/Node;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNodeList(I)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public migrateTo(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 0

    return-void
.end method

.method public needsTwoThreads()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public orderNodes(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 0

    return-object p1
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEscaping(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_escaping:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->_escaping:Z

    return v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setFilter(Lcom/sun/org/apache/xalan/internal/xsltc/StripFilter;)V
    .locals 0

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setupMapping([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shallowCopy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SimpleResultTreeImpl;->characters(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    const/4 p0, 0x0

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

.method public supportsPreStripping()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
