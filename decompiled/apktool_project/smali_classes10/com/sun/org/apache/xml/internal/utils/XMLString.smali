.class public interface abstract Lcom/sun/org/apache/xml/internal/utils/XMLString;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract charAt(I)C
.end method

.method public abstract compareTo(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
.end method

.method public abstract compareToIgnoreCase(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
.end method

.method public abstract concat(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract endsWith(Ljava/lang/String;)Z
.end method

.method public abstract equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract equalsIgnoreCase(Ljava/lang/String;)Z
.end method

.method public abstract fixWhiteSpace(ZZZ)Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract getChars(II[CI)V
.end method

.method public abstract hasString()Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract indexOf(I)I
.end method

.method public abstract indexOf(II)I
.end method

.method public abstract indexOf(Lcom/sun/org/apache/xml/internal/utils/XMLString;)I
.end method

.method public abstract indexOf(Ljava/lang/String;)I
.end method

.method public abstract indexOf(Ljava/lang/String;I)I
.end method

.method public abstract lastIndexOf(I)I
.end method

.method public abstract lastIndexOf(II)I
.end method

.method public abstract lastIndexOf(Ljava/lang/String;)I
.end method

.method public abstract lastIndexOf(Ljava/lang/String;I)I
.end method

.method public abstract length()I
.end method

.method public abstract startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
.end method

.method public abstract startsWith(Lcom/sun/org/apache/xml/internal/utils/XMLString;I)Z
.end method

.method public abstract startsWith(Ljava/lang/String;)Z
.end method

.method public abstract startsWith(Ljava/lang/String;I)Z
.end method

.method public abstract substring(I)Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract substring(II)Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract toDouble()D
.end method

.method public abstract toLowerCase()Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract toLowerCase(Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toUpperCase()Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract toUpperCase(Ljava/util/Locale;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method

.method public abstract trim()Lcom/sun/org/apache/xml/internal/utils/XMLString;
.end method
