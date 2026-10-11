.class public Lorg/mortbay/jetty/HttpConnection$Output;
.super Lorg/mortbay/jetty/AbstractGenerator$Output;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation


# instance fields
.field public final synthetic k:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 3

    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, p1, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    check-cast v0, Lorg/mortbay/jetty/AbstractGenerator;

    iget-object p1, p1, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {p1}, Lorg/mortbay/jetty/Connector;->getMaxIdleTime()I

    move-result p1

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lorg/mortbay/jetty/AbstractGenerator$Output;-><init>(Lorg/mortbay/jetty/AbstractGenerator;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->flushResponse()V

    :goto_0
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendContent(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_closed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->getContentWritten()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    instance-of v0, p1, Lorg/mortbay/jetty/HttpContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lorg/mortbay/jetty/HttpContent;

    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/HttpFields;->containsKey(Lorg/mortbay/io/Buffer;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Response;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v4, v5, v0}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    :cond_0
    instance-of v6, v0, Lorg/mortbay/io/BufferCache$CachedBuffer;

    const-string v7, ";= "

    const-string v8, ";charset="

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v6, v4}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v0, v5, v6}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v6, v6, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v6, v6, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4, v7}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/mortbay/jetty/HttpFields;->putLongField(Lorg/mortbay/io/Buffer;J)V

    :cond_4
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    if-eqz v0, :cond_5

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v5, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v4, v5, v0, v2, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_6

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v4, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v4, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    :cond_6
    :goto_1
    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Lorg/mortbay/jetty/HttpContent;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_2

    :cond_7
    move-object p1, v0

    goto :goto_2

    :cond_8
    instance-of v0, p1, Lorg/mortbay/resource/Resource;

    if-eqz v0, :cond_9

    move-object v1, p1

    check-cast v1, Lorg/mortbay/resource/Resource;

    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object p1, p1, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :cond_9
    :goto_2
    instance-of v0, p1, Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    check-cast p1, Lorg/mortbay/io/Buffer;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/mortbay/jetty/Generator;->addContent(Lorg/mortbay/io/Buffer;Z)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    goto :goto_4

    :cond_a
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/io/InputStream;

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v0

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->getUncheckedBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v0

    :goto_3
    if-ltz v0, :cond_b

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->c()V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection$Output;->flush()V

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v0

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v2}, Lorg/mortbay/jetty/AbstractGenerator;->getUncheckedBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v0

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator;->c()V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$Output;->k:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection$Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->release()V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->release()V

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_5
    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown content type?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "!empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendResponse(Lorg/mortbay/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    check-cast p0, Lorg/mortbay/jetty/HttpGenerator;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/HttpGenerator;->sendResponse(Lorg/mortbay/io/Buffer;)V

    return-void
.end method
