.class public final Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;
.super Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;
.source "SourceFile"


# static fields
.field private static final EMPTY_STR:Ljava/lang/String; = ""


# instance fields
.field private _buffer:Ljava/lang/StringBuffer;

.field private _nestedLevel:I

.field private _str:Ljava/lang/String;

.field private m_escaping:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/EmptySerializer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->m_escaping:Z

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_nestedLevel:I

    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_nestedLevel:I

    if-lez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_nestedLevel:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_nestedLevel:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_nestedLevel:I

    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_str:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getValueOfPI()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "?>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3f

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_0

    const-string v2, "? >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public setEscaping(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->m_escaping:Z

    return p1
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_nestedLevel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/StringValueHandler;->_nestedLevel:I

    return-void
.end method
