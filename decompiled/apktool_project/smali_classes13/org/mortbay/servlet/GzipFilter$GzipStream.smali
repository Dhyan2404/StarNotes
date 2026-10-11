.class public Lorg/mortbay/servlet/GzipFilter$GzipStream;
.super Ljavax/servlet/ServletOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/servlet/GzipFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GzipStream"
.end annotation


# instance fields
.field protected _bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

.field protected _bufferSize:I

.field protected _closed:Z

.field protected _contentLength:J

.field protected _gzOut:Ljava/util/zip/GZIPOutputStream;

.field protected _minGzipSize:I

.field protected _out:Ljava/io/OutputStream;

.field protected _request:Ljavax/servlet/http/HttpServletRequest;

.field protected _response:Ljavax/servlet/http/HttpServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    iput-object p1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_request:Ljavax/servlet/http/HttpServletRequest;

    iput-object p2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    iput-wide p3, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    iput p5, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bufferSize:I

    iput p6, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    if-nez p6, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_request:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "javax.servlet.include.request_uri"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->flush()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    :cond_1
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    :goto_2
    return-void
.end method

.method public doGzip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->setContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v1}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public doNotGzip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    long-to-int v0, v0

    invoke-interface {v2, v0}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final f(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v3, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v0, v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_2

    :cond_1
    new-instance p1, Lorg/mortbay/util/ByteArrayOutputStream2;

    iget v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bufferSize:I

    invoke-direct {p1, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object p1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    iput-object p1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v3, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_4

    iget v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v0, v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CLOSED"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget v2, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_minGzipSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doNotGzip()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->doGzip()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public resetBuffer()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_bOut:Lorg/mortbay/util/ByteArrayOutputStream2;

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v1}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_gzOut:Ljava/util/zip/GZIPOutputStream;

    return-void
.end method

.method public setContentEncodingGzip()Z
    .locals 3

    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "gzip"

    const-string v2, "Content-Encoding"

    invoke-interface {v0, v2, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {p0, v2}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_contentLength:J

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->f(I)V

    .line 2
    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->f(I)V

    .line 4
    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p3}, Lorg/mortbay/servlet/GzipFilter$GzipStream;->f(I)V

    .line 6
    iget-object p0, p0, Lorg/mortbay/servlet/GzipFilter$GzipStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
