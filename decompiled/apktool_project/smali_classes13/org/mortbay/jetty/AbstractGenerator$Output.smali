.class public Lorg/mortbay/jetty/AbstractGenerator$Output;
.super Ljavax/servlet/ServletOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/AbstractGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Output"
.end annotation


# instance fields
.field protected _buf:Lorg/mortbay/io/ByteArrayBuffer;

.field protected _closed:Z

.field protected _generator:Lorg/mortbay/jetty/AbstractGenerator;

.field protected _maxIdleTime:J

.field public g:Ljava/lang/String;

.field public h:Ljava/io/Writer;

.field public i:[C

.field public j:Lorg/mortbay/util/ByteArrayOutputStream2;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/AbstractGenerator;J)V
    .locals 2

    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([B)V

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iput-wide p2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_maxIdleTime:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    return-void
.end method

.method public f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->close()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    iget-wide v1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_maxIdleTime:J

    invoke-interface {v0, v1, v2}, Lorg/mortbay/io/EndPoint;->blockWritable(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator;->flush()J

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->close()V

    new-instance p0, Lorg/mortbay/jetty/EofException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator;->_content:Lorg/mortbay/io/Buffer;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->flush()J

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v2, v2, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v2}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->f()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractGenerator$Output;->write([B)V

    return-void
.end method

.method public final w(Lorg/mortbay/io/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    const-string v1, "Closed"

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->f()V

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/mortbay/jetty/EofException;

    invoke-direct {p0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/mortbay/jetty/Generator;->addContent(Lorg/mortbay/io/Buffer;Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->f()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p0, Lorg/mortbay/jetty/EofException;

    invoke-direct {p0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    const-string v1, "Closed"

    if-nez v0, :cond_6

    .line 8
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->f()V

    .line 11
    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lorg/mortbay/jetty/EofException;

    invoke-direct {p0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Generator;->addContent(B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 17
    :cond_3
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {p1}, Lorg/mortbay/jetty/AbstractGenerator;->isContentWritten()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 19
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    :cond_4
    return-void

    .line 20
    :cond_5
    new-instance p0, Lorg/mortbay/jetty/EofException;

    invoke-direct {p0}, Lorg/mortbay/jetty/EofException;-><init>()V

    throw p0

    .line 21
    :cond_6
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([B)V

    .line 5
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractGenerator$Output;->w(Lorg/mortbay/io/Buffer;)V

    .line 6
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->a()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([BII)V

    .line 2
    iget-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractGenerator$Output;->w(Lorg/mortbay/io/Buffer;)V

    .line 3
    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_buf:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->a()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->wrap([B)V

    return-void
.end method
