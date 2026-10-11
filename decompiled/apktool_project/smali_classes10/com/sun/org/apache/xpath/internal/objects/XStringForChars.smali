.class public Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;
.super Lcom/sun/org/apache/xpath/internal/objects/XString;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x1f0533052362cf23L


# instance fields
.field m_length:I

.field m_start:I

.field protected m_strCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_XSTRINGFORCHARS_CANNOT_TAKE_STRING"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([CII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_start:I

    .line 4
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_length:I

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_start:I

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_length:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append([CII)V

    return-void
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_start:I

    add-int/2addr p1, p0

    aget-char p0, v0, p1

    return p0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_start:I

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_length:I

    invoke-interface {p1, v0, v1, p0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_start:I

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_length:I

    invoke-interface {p1, v0, v1, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_FSB_NOT_SUPPORTED_XSTRINGFORCHARS"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getChars(II[CI)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, [C

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_start:I

    add-int/2addr p0, p1

    invoke-static {v0, p0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public hasString()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public length()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_length:I

    return p0
.end method

.method public object()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public str()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v1, [C

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_start:I

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;->m_strCache:Ljava/lang/String;

    return-object p0
.end method
