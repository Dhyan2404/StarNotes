.class public Lorg/apache/http/message/BasicHeaderElementIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HeaderElementIterator;


# instance fields
.field public final e:Lorg/apache/http/HeaderIterator;

.field public final f:Lorg/apache/http/message/HeaderValueParser;

.field public g:Lorg/apache/http/HeaderElement;

.field public h:Lorg/apache/http/util/CharArrayBuffer;

.field public i:Lorg/apache/http/message/ParserCursor;


# direct methods
.method public constructor <init>(Lorg/apache/http/HeaderIterator;)V
    .locals 1

    .line 7
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParser;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HeaderIterator;Lorg/apache/http/message/HeaderValueParser;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->g:Lorg/apache/http/HeaderElement;

    .line 3
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->h:Lorg/apache/http/util/CharArrayBuffer;

    .line 4
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    const-string v0, "Header iterator"

    .line 5
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/HeaderIterator;

    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->e:Lorg/apache/http/HeaderIterator;

    const-string p1, "Parser"

    .line 6
    invoke-static {p2, p1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/message/HeaderValueParser;

    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->f:Lorg/apache/http/message/HeaderValueParser;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->h:Lorg/apache/http/util/CharArrayBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->e:Lorg/apache/http/HeaderIterator;

    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->e:Lorg/apache/http/HeaderIterator;

    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/FormattedHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/http/FormattedHeader;

    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->h:Lorg/apache/http/util/CharArrayBuffer;

    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v3, v2, v1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v3, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result p0

    invoke-virtual {v3, p0}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->h:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/message/ParserCursor;

    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->h:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->e:Lorg/apache/http/HeaderIterator;

    invoke-interface {v0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->a()V

    :cond_4
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->f:Lorg/apache/http/message/HeaderValueParser;

    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->h:Lorg/apache/http/util/CharArrayBuffer;

    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/message/HeaderValueParser;->parseHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_6
    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->g:Lorg/apache/http/HeaderElement;

    return-void

    :cond_7
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->i:Lorg/apache/http/message/ParserCursor;

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->h:Lorg/apache/http/util/CharArrayBuffer;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->g:Lorg/apache/http/HeaderElement;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->b()V

    :cond_0
    iget-object p0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->g:Lorg/apache/http/HeaderElement;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public nextElement()Lorg/apache/http/HeaderElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->g:Lorg/apache/http/HeaderElement;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/message/BasicHeaderElementIterator;->b()V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->g:Lorg/apache/http/HeaderElement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/message/BasicHeaderElementIterator;->g:Lorg/apache/http/HeaderElement;

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more header elements available"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Remove not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
