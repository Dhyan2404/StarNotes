.class public Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/utils/XMLString;


# instance fields
.field private m_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public compareTo(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public compareToIgnoreCase(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public concat(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public fixWhiteSpace(ZZZ)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getChars(II[CI)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p3, p4

    add-int/lit8 p1, p1, 0x1

    move p4, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasString()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public indexOf(II)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0
.end method

.method public indexOf(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(II)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public substring(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public substring(II)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toDouble()D
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public toLowerCase()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    return-object p0
.end method

.method public toUpperCase()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public trim()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;->m_str:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
