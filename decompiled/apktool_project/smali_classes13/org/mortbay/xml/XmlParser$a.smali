.class public Lorg/mortbay/xml/XmlParser$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Lorg/mortbay/xml/XmlParser$Node;

.field public f:Lorg/xml/sax/SAXParseException;

.field public g:Lorg/mortbay/xml/XmlParser$Node;

.field public h:Lorg/mortbay/xml/XmlParser$b;

.field public final synthetic i:Lorg/mortbay/xml/XmlParser;


# direct methods
.method public constructor <init>(Lorg/mortbay/xml/XmlParser;)V
    .locals 2

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/mortbay/xml/XmlParser$Node;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->e:Lorg/mortbay/xml/XmlParser$Node;

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    new-instance v0, Lorg/mortbay/xml/XmlParser$b;

    invoke-direct {v0, p1, p0}, Lorg/mortbay/xml/XmlParser$b;-><init>(Lorg/mortbay/xml/XmlParser;Lorg/mortbay/xml/XmlParser$a;)V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->h:Lorg/mortbay/xml/XmlParser$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->e:Lorg/mortbay/xml/XmlParser$Node;

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->f:Lorg/xml/sax/SAXParseException;

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    return-void
.end method

.method public final b(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " line:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " col:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    iget-object v0, v0, Lorg/mortbay/xml/XmlParser$Node;->e:Lorg/mortbay/xml/XmlParser$Node;

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {p0}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->f:Lorg/xml/sax/SAXParseException;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$a;->f:Lorg/xml/sax/SAXParseException;

    :cond_0
    const-string v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ERROR@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$a;->b(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$a;->f:Lorg/xml/sax/SAXParseException;

    const-string v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FATAL@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$a;->b(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    throw p1
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "resolveEntity("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ".dtd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0, p2}, Lorg/mortbay/xml/XmlParser;->e(Lorg/mortbay/xml/XmlParser;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->f(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {p1}, Lorg/mortbay/xml/XmlParser;->f(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    :cond_3
    if-nez p1, :cond_6

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, p2

    :goto_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t exact match entity in redirect map, trying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {p0}, Lorg/mortbay/xml/XmlParser;->f(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/net/URL;

    :cond_6
    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Redirected entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_7
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :cond_8
    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p3

    :goto_1
    new-instance v1, Lorg/mortbay/xml/XmlParser$Node;

    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {v1, v2, v0, p4}, Lorg/mortbay/xml/XmlParser$Node;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v2}, Lorg/mortbay/xml/XmlParser;->b(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lorg/mortbay/xml/XmlParser$Node;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v4}, Lorg/mortbay/xml/XmlParser;->b(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    move v5, v3

    :goto_2
    if-nez v5, :cond_4

    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_4

    iget-object v4, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v4}, Lorg/mortbay/xml/XmlParser;->b(Lorg/mortbay/xml/XmlParser;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v5, v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_2

    goto :goto_3

    :cond_2
    move v5, v3

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v4, 0x1

    move v5, v4

    :goto_4
    move v4, v6

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->a(Lorg/mortbay/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$a;->h:Lorg/mortbay/xml/XmlParser$b;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->g:Lorg/mortbay/xml/XmlParser$Node;

    :goto_5
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->c(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->c(Lorg/mortbay/xml/XmlParser;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v1}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$a;->i:Lorg/mortbay/xml/XmlParser;

    invoke-static {v0}, Lorg/mortbay/xml/XmlParser;->d(Lorg/mortbay/xml/XmlParser;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    const-string v0, "EXCEPTION "

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "WARNING@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$a;->b(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    return-void
.end method
