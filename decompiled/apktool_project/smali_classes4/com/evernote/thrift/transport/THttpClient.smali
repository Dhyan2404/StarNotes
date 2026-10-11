.class public Lcom/evernote/thrift/transport/THttpClient;
.super Lcom/evernote/thrift/transport/TTransport;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/URL;

.field public final b:Ljava/io/ByteArrayOutputStream;

.field public c:Ljava/io/InputStream;

.field public d:I

.field public e:I

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/evernote/thrift/transport/TTransport;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->a:Ljava/net/URL;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/evernote/thrift/transport/THttpClient;->b:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->c:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput v1, p0, Lcom/evernote/thrift/transport/THttpClient;->d:I

    iput v1, p0, Lcom/evernote/thrift/transport/THttpClient;->e:I

    iput-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->f:Ljava/util/Map;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/evernote/thrift/transport/TTransportException;

    invoke-direct {p1, p0}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->c:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    const-string v0, "application/x-thrift"

    iget-object v1, p0, Lcom/evernote/thrift/transport/THttpClient;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/thrift/transport/THttpClient;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v2, p0, Lcom/evernote/thrift/transport/THttpClient;->a:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/evernote/thrift/transport/THttpClient;->d:I

    if-lez v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_0
    iget v3, p0, Lcom/evernote/thrift/transport/THttpClient;->e:I

    if-lez v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_1
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept"

    invoke-virtual {v2, v3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v3, "Java/THttpClient"

    invoke-virtual {v2, v0, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->f:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->c:Ljava/io/InputStream;

    return-void

    :cond_3
    new-instance p0, Lcom/evernote/thrift/transport/TTransportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/evernote/thrift/transport/TTransportException;

    invoke-direct {v0, p0}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public open()V
    .locals 0

    return-void
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/thrift/transport/THttpClient;->c:Ljava/io/InputStream;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/evernote/thrift/transport/TTransportException;

    const-string p1, "No more data available."

    invoke-direct {p0, p1}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/evernote/thrift/transport/TTransportException;

    invoke-direct {p1, p0}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/evernote/thrift/transport/TTransportException;

    const-string p1, "Response buffer is empty, no request."

    invoke-direct {p0, p1}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/thrift/transport/THttpClient;->d:I

    return-void
.end method

.method public setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/thrift/transport/THttpClient;->f:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/evernote/thrift/transport/THttpClient;->f:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCustomHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/thrift/transport/THttpClient;->f:Ljava/util/Map;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/evernote/thrift/transport/THttpClient;->e:I

    return-void
.end method

.method public write([BII)V
    .locals 0

    iget-object p0, p0, Lcom/evernote/thrift/transport/THttpClient;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
