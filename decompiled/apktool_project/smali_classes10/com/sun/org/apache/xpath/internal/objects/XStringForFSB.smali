.class public Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;
.super Lcom/sun/org/apache/xpath/internal/objects/XString;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x154673048d1b5474L


# instance fields
.field protected m_hash:I

.field m_length:I

.field m_start:I

.field protected m_strCache:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_hash:I

    .line 4
    iput p2, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    .line 5
    iput p3, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_FASTSTRINGBUFFER_CANNOT_BE_NULL"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_hash:I

    .line 10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_FSB_CANNOT_TAKE_STRING"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isSpace(C)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public appendToFsb(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public charAt(I)C
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result p0

    return p0
.end method

.method public compareTo(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v3

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result v2

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v2, v6, :cond_0

    sub-int/2addr v2, v6

    return v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public compareToIgnoreCase(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v3

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v3, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v2, v6, :cond_0

    sub-int/2addr v2, v6

    return v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public concat(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXComment(Lorg/xml/sax/ext/LexicalHandler;II)V

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void
.end method

.method public equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    .line 2
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v2

    .line 4
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    move v4, v3

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v1, v6, :cond_1

    return v3

    :cond_1
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v3
.end method

.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v2

    .line 12
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    move v4, v3

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v1, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 19
    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 21
    :cond_1
    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 23
    :cond_2
    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;

    if-eqz v0, :cond_3

    .line 24
    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/XMLString;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result p0

    return p0

    .line 25
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->equals(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 6

    .line 14
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v1

    .line 17
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    move v3, v2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public fixWhiteSpace(ZZZ)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 12

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, v0

    new-array v0, v0, [C

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->isSpace(C)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v6, :cond_3

    if-eq v8, v10, :cond_0

    move v7, v9

    :cond_0
    add-int/lit8 v10, v5, 0x1

    aput-char v8, v0, v5

    if-eqz p3, :cond_1

    if-eqz v10, :cond_1

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v0, v5

    const/16 v8, 0x2e

    if-eq v5, v8, :cond_2

    const/16 v8, 0x21

    if-eq v5, v8, :cond_2

    const/16 v8, 0x3f

    if-eq v5, v8, :cond_2

    :cond_1
    move v6, v9

    :cond_2
    move v5, v10

    goto :goto_1

    :cond_3
    move v6, v9

    move v7, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v5, 0x1

    aput-char v10, v0, v5

    move v5, v6

    move v6, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    if-gt v9, v5, :cond_6

    add-int/lit8 p2, v5, -0x1

    aget-char p2, v0, p2

    if-ne v8, p2, :cond_6

    add-int/lit8 v5, v5, -0x1

    move v7, v9

    :cond_6
    if-eqz p1, :cond_7

    if-lez v5, :cond_7

    aget-char p1, v0, v4

    if-ne v8, p1, :cond_7

    move v4, v9

    goto :goto_2

    :cond_7
    move v9, v7

    :goto_2
    invoke-static {}, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->getFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    move-result-object p1

    if-eqz v9, :cond_8

    sub-int/2addr v5, v4

    invoke-virtual {p1, v0, v4, v5}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr([CII)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    return-object p0
.end method

.method public getChars(II[CI)V
    .locals 2

    sub-int/2addr p2, p1

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    array-length v0, p3

    sub-int/2addr v0, p4

    if-le p2, v0, :cond_1

    array-length p2, p3

    sub-int/2addr p2, p4

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object p2

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr p1, p0

    :goto_0
    if-ge p1, v0, :cond_2

    add-int/lit8 p0, p4, 0x1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result v1

    aput-char v1, p3, p4

    add-int/lit8 p1, p1, 0x1

    move p4, p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hasString()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public indexOf(II)I
    .locals 4

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v1

    const/4 v2, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-lt p2, v3, :cond_1

    return v2

    .line 5
    :cond_1
    :goto_0
    iget v3, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr v3, p2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 6
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result p2

    if-ne p2, p1, :cond_2

    .line 7
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    sub-int/2addr v3, p0

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public length()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    return p0
.end method

.method public object()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;I)Z

    move-result p0

    return p0
.end method

.method public startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, p2

    .line 3
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ltz p2, :cond_3

    .line 4
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    sub-int/2addr p0, v2

    if-le p2, p0, :cond_0

    goto :goto_1

    :cond_0
    move p0, v3

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->charAt(I)C

    move-result p2

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->charAt(I)C

    move-result v4

    if-eq p2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v3
.end method

.method public str()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    iget v2, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_strCache:Ljava/lang/String;

    return-object p0
.end method

.method public substring(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 2

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    sub-int/2addr v0, p1

    if-gtz v0, :cond_0

    .line 2
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0

    .line 3
    :cond_0
    iget v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr v1, p1

    .line 4
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object p0

    invoke-direct {p1, p0, v1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)V

    return-object p1
.end method

.method public substring(II)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    sub-int/2addr p2, p1

    .line 5
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-gtz p2, :cond_1

    .line 6
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0

    .line 7
    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    add-int/2addr v0, p1

    .line 8
    new-instance p1, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object p0

    invoke-direct {p1, p0, v0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)V

    return-object p1
.end method

.method public toDouble()D
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fsb()Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;

    move-result-object v0

    iget v3, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_start:I

    iget v4, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    invoke-virtual {v0, v3, v4}, Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v4, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-ne v3, v4, :cond_3

    return-wide v1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    iget v4, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-ge v3, v4, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_6

    const/16 v5, 0x39

    if-le v4, v5, :cond_4

    :cond_6
    :goto_2
    iget v4, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-ge v3, v4, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->m_length:I

    if-eq v3, p0, :cond_9

    return-wide v1

    :cond_9
    :try_start_0
    new-instance p0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public trim()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;->fixWhiteSpace(ZZZ)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    return-object p0
.end method
