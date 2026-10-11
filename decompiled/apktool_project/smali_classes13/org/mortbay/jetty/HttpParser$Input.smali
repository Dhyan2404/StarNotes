.class public Lorg/mortbay/jetty/HttpParser$Input;
.super Ljavax/servlet/ServletInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation


# instance fields
.field protected _content:Lorg/mortbay/io/Buffer;

.field protected _endp:Lorg/mortbay/io/EndPoint;

.field protected _maxIdleTime:J

.field protected _parser:Lorg/mortbay/jetty/HttpParser;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpParser;J)V
    .locals 0

    invoke-direct {p0}, Ljavax/servlet/ServletInputStream;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-static {p1}, Lorg/mortbay/jetty/HttpParser;->a(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/EndPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    iput-wide p2, p0, Lorg/mortbay/jetty/HttpParser$Input;->_maxIdleTime:J

    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-static {p1}, Lorg/mortbay/jetty/HttpParser;->b(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/View;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    iget-object p1, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-static {p1, p0}, Lorg/mortbay/jetty/HttpParser;->c(Lorg/mortbay/jetty/HttpParser;Lorg/mortbay/jetty/HttpParser$Input;)Lorg/mortbay/jetty/HttpParser$Input;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getState()I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    goto/16 :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->close()V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    iget-wide v3, p0, Lorg/mortbay/jetty/HttpParser$Input;->_maxIdleTime:J

    invoke-interface {v0, v3, v4}, Lorg/mortbay/io/EndPoint;->blockReadable(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_parser:Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->close()V

    new-instance p0, Lorg/mortbay/jetty/EofException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->length()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser$Input;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p0}, Lorg/mortbay/io/Buffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser$Input;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lorg/mortbay/jetty/HttpParser$Input;->_content:Lorg/mortbay/io/Buffer;

    invoke-interface {p0, p1, p2, p3}, Lorg/mortbay/io/Buffer;->get([BII)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
