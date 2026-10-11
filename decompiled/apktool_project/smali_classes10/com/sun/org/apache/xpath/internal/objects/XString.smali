.class public Lcom/sun/org/apache/xpath/internal/objects/XString;
.super Lcom/sun/org/apache/xpath/internal/objects/XObject;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/utils/XMLString;


# static fields
.field public static final EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

.field static final serialVersionUID:J = 0x1c0a273b4816c5fdL


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private static isSpace(C)Z
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bool()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xpath/internal/XPathVisitor;->visitStringLiteral(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/objects/XString;)Z

    return-void
.end method

.method public charAt(I)C
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public compareTo(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 7

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->length()I

    move-result v0

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xpath/internal/objects/XString;->charAt(I)C

    move-result v2

    invoke-interface {p1, v4}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->charAt(I)C

    move-result v6

    if-eq v2, v6, :cond_0

    sub-int/2addr v2, v6

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public compareToIgnoreCase(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 1

    new-instance p0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v0, "Java 1.2 method, not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0
.end method

.method public concat(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

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

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 1

    .line 7
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->hasString()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->bool()Z

    move-result p0

    if-ne p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 v3, 0x2

    if-ne v3, v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->num()D

    move-result-wide p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 5
    :goto_0
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 12
    :cond_1
    instance-of v0, p1, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public fixWhiteSpace(ZZZ)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 11

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/sun/org/apache/xpath/internal/objects/XString;->getChars(II[CI)V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-char v4, v1, v3

    invoke-static {v4}, Lcom/sun/org/apache/xpath/internal/objects/XString;->isSpace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v5, v2

    move v6, v5

    move v4, v3

    :goto_2
    const/16 v7, 0x20

    const/4 v8, 0x1

    if-ge v3, v0, :cond_7

    aget-char v9, v1, v3

    invoke-static {v9}, Lcom/sun/org/apache/xpath/internal/objects/XString;->isSpace(C)Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v5, :cond_5

    if-eq v7, v9, :cond_2

    move v6, v8

    :cond_2
    add-int/lit8 v9, v4, 0x1

    aput-char v7, v1, v4

    if-eqz p3, :cond_3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aget-char v4, v1, v4

    const/16 v7, 0x2e

    if-eq v4, v7, :cond_4

    const/16 v7, 0x21

    if-eq v4, v7, :cond_4

    const/16 v7, 0x3f

    if-eq v4, v7, :cond_4

    :cond_3
    move v5, v8

    :cond_4
    move v4, v9

    goto :goto_3

    :cond_5
    move v5, v8

    move v6, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v4, 0x1

    aput-char v9, v1, v4

    move v4, v5

    move v5, v2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    if-gt v8, v4, :cond_8

    add-int/lit8 p2, v4, -0x1

    aget-char p2, v1, p2

    if-ne v7, p2, :cond_8

    add-int/lit8 v4, v4, -0x1

    move v6, v8

    :cond_8
    if-eqz p1, :cond_9

    if-lez v4, :cond_9

    aget-char p1, v1, v2

    if-ne v7, p1, :cond_9

    move v2, v8

    goto :goto_4

    :cond_9
    move v8, v6

    :goto_4
    invoke-static {}, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->getFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    move-result-object p1

    if-eqz v8, :cond_a

    new-instance p0, Ljava/lang/String;

    sub-int/2addr v4, v2

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public getChars(II[CI)V
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 0

    const-string p0, "#STRING"

    return-object p0
.end method

.method public hasString()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public indexOf(II)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public indexOf(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(II)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public num()D
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public rtf(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->createDocumentFragment()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTM;->getDocument()I

    move-result p0

    return p0
.end method

.method public startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;I)Z

    move-result p0

    return p0
.end method

.method public startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;I)Z
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->length()I

    move-result v0

    .line 4
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ltz p2, :cond_3

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 5
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XString;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public str()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public substring(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public substring(II)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toDouble()D
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->trim()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->length()I

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_1

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_1

    const/16 v4, 0x30

    if-lt v1, v4, :cond_0

    const/16 v4, 0x39

    if-le v1, v4, :cond_1

    :cond_0
    return-wide v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v2
.end method

.method public toLowerCase()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public trim()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    return-object p0
.end method
