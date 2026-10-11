.class public Lcom/evernote/client/conn/mobile/TAndroidTransport;
.super Lcom/evernote/thrift/transport/TTransport;
.source "SourceFile"


# static fields
.field public static final f:Lcom/squareup/okhttp/MediaType;


# instance fields
.field public final a:Lcom/squareup/okhttp/OkHttpClient;

.field public final b:Lcom/evernote/client/conn/mobile/ByteStore;

.field public final c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;

.field public e:Ljava/util/Map;
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
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-thrift"

    invoke-static {v0}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->f:Lcom/squareup/okhttp/MediaType;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/evernote/client/conn/mobile/ByteStore;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/squareup/okhttp/OkHttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/conn/mobile/ByteStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/evernote/client/conn/mobile/TAndroidTransport;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/evernote/client/conn/mobile/ByteStore;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/evernote/client/conn/mobile/ByteStore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/OkHttpClient;",
            "Lcom/evernote/client/conn/mobile/ByteStore;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/evernote/thrift/transport/TTransport;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->a:Lcom/squareup/okhttp/OkHttpClient;

    .line 4
    iput-object p2, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->b:Lcom/evernote/client/conn/mobile/ByteStore;

    .line 5
    iput-object p3, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/evernote/client/conn/mobile/TAndroidTransport;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b()Lcom/squareup/okhttp/MediaType;
    .locals 1

    sget-object v0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->f:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public static synthetic c(Lcom/evernote/client/conn/mobile/TAndroidTransport;)Lcom/evernote/client/conn/mobile/ByteStore;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->b:Lcom/evernote/client/conn/mobile/ByteStore;

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->d:Ljava/io/InputStream;

    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->d:Ljava/io/InputStream;

    new-instance v0, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;

    invoke-direct {v0, p0}, Lcom/evernote/client/conn/mobile/TAndroidTransport$a;-><init>(Lcom/evernote/client/conn/mobile/TAndroidTransport;)V

    :try_start_0
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Request$Builder;->post(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->b:Lcom/evernote/client/conn/mobile/ByteStore;

    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/ByteStore;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lcom/evernote/thrift/transport/TTransportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/evernote/thrift/transport/TTransportException;

    invoke-direct {v1, v0}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->b:Lcom/evernote/client/conn/mobile/ByteStore;

    invoke-virtual {p0}, Lcom/evernote/client/conn/mobile/ByteStore;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    throw v0
.end method

.method public isOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    return-void
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->d:Ljava/io/InputStream;

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

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/evernote/client/conn/mobile/TAndroidTransport;->b:Lcom/evernote/client/conn/mobile/ByteStore;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/evernote/thrift/transport/TTransportException;

    invoke-direct {p1, p0}, Lcom/evernote/thrift/transport/TTransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
