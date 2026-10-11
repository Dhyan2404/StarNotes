.class public Lcom/tencent/beacon/base/net/adapter/h;
.super Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/tencent/beacon/base/net/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/beacon/base/net/a/c<",
            "[B",
            "Lcom/tencent/beacon/pack/SocketResponsePackage;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/beacon/base/net/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/beacon/base/net/a/c<",
            "Lcom/tencent/beacon/base/net/call/JceRequestEntity;",
            "Lcom/tencent/beacon/pack/SocketRequestPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;-><init>()V

    new-instance v0, Lcom/tencent/beacon/base/net/a/e;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/a/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/adapter/h;->a:Lcom/tencent/beacon/base/net/a/c;

    new-instance v0, Lcom/tencent/beacon/base/net/a/d;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/base/net/adapter/h;->b:Lcom/tencent/beacon/base/net/a/c;

    return-void
.end method

.method public static a()Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/beacon/base/net/adapter/h;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/adapter/h;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SocketAdapter"

    const-string v1, "create socket domain: %s, port: %d"

    invoke-static {v0, v1, p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 39
    new-instance p1, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 p0, 0x7530

    .line 40
    invoke-virtual {p1, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    return-object p1
.end method

.method private a(Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;Lcom/tencent/beacon/pack/SocketResponsePackage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/tencent/beacon/pack/SocketResponsePackage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/beacon/base/net/NetException;
        }
    .end annotation

    .line 2
    iget-object p0, p3, Lcom/tencent/beacon/pack/SocketResponsePackage;->msg:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "decrypt Data fail!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/tencent/beacon/base/net/d;

    iget p3, p3, Lcom/tencent/beacon/pack/SocketResponsePackage;->statusCode:I

    const-string v0, "405"

    const-string v1, "server encrypt-status error!"

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 4
    :cond_0
    iget-object p0, p3, Lcom/tencent/beacon/pack/SocketResponsePackage;->body:[B

    invoke-interface {p1, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/net/Socket;Lcom/tencent/beacon/pack/SocketRequestPackage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/tencent/beacon/pack/b;

    invoke-direct {v0}, Lcom/tencent/beacon/pack/b;-><init>()V

    .line 23
    invoke-virtual {p2, v0}, Lcom/tencent/beacon/pack/SocketRequestPackage;->writeTo(Lcom/tencent/beacon/pack/b;)V

    .line 24
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 25
    invoke-virtual {v0}, Lcom/tencent/beacon/pack/b;->b()[B

    move-result-object p2

    .line 26
    array-length v0, p2

    .line 27
    invoke-direct {p0, p2, v0}, Lcom/tencent/beacon/base/net/adapter/h;->a([BI)[B

    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private a(Ljava/net/Socket;Z)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x800

    :try_start_2
    new-array v2, v2, [B

    .line 7
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 8
    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-nez p2, :cond_1

    .line 11
    array-length p2, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 12
    array-length v4, v2

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p2, v2, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 14
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    aput-object v3, p2, p0

    .line 16
    invoke-static {p2}, Lcom/tencent/beacon/base/util/b;->a([Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v3, v2

    :goto_1
    move-object v2, p1

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object v3, v2

    .line 17
    :goto_2
    :try_start_3
    invoke-static {p2}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    aput-object v3, p1, p0

    .line 18
    invoke-static {p1}, Lcom/tencent/beacon/base/util/b;->a([Ljava/io/Closeable;)V

    .line 19
    throw p2

    :catchall_3
    move-exception p1

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object v2, p2, v0

    aput-object v3, p2, p0

    .line 20
    invoke-static {p2}, Lcom/tencent/beacon/base/util/b;->a([Ljava/io/Closeable;)V

    .line 21
    throw p1
.end method

.method private a([BI)[B
    .locals 1

    add-int/lit8 p2, p2, 0x4

    .line 30
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v0, 0xffff

    and-int/2addr p2, v0

    int-to-short p2, p2

    .line 32
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p1, 0xd

    .line 34
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 p1, 0xa

    .line 35
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public request(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/HttpRequestEntity;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "Lcom/tencent/beacon/base/net/BResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public request(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/JceRequestEntity;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SocketAdapter"

    .line 2
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 5
    :try_start_0
    iget-object v6, p0, Lcom/tencent/beacon/base/net/adapter/h;->b:Lcom/tencent/beacon/base/net/a/c;

    invoke-interface {v6, p1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/beacon/pack/SocketRequestPackage;

    invoke-virtual {v6}, Lcom/tencent/beacon/pack/AbstractJceStruct;->toByteArray()[B

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    .line 6
    array-length v8, v6

    const v9, 0xffff

    if-le v8, v9, :cond_1

    .line 7
    new-instance p0, Lcom/tencent/beacon/base/net/d;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "406"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "content length is too long:"

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, p1, v7, v0}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getPort()I

    move-result v6

    invoke-direct {p0, v1, v6}, Lcom/tencent/beacon/base/net/adapter/h;->a(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v5

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "send data size: "

    :try_start_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getContent()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v6}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/tencent/beacon/base/net/adapter/h;->b:Lcom/tencent/beacon/base/net/a/c;

    invoke-interface {v1, p1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/beacon/pack/SocketRequestPackage;

    .line 11
    invoke-direct {p0, v5, v1}, Lcom/tencent/beacon/base/net/adapter/h;->a(Ljava/net/Socket;Lcom/tencent/beacon/pack/SocketRequestPackage;)V

    .line 12
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object p1

    sget-object v1, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    if-ne p1, v1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    invoke-direct {p0, v5, p1}, Lcom/tencent/beacon/base/net/adapter/h;->a(Ljava/net/Socket;Z)[B

    move-result-object p1
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "402"

    if-eqz p1, :cond_7

    .line 13
    :try_start_4
    array-length v6, p1

    if-gtz v6, :cond_3

    goto/16 :goto_3

    .line 14
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v8, "receivedData: "

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v6, v8}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v6, p0, Lcom/tencent/beacon/base/net/adapter/h;->a:Lcom/tencent/beacon/base/net/a/c;

    invoke-interface {v6, p1}, Lcom/tencent/beacon/base/net/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/beacon/pack/SocketResponsePackage;

    if-nez p1, :cond_5

    .line 16
    new-instance p0, Lcom/tencent/beacon/base/net/d;
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string p1, "responsePackage == null"

    :try_start_6
    invoke-direct {p0, v4, v1, v7, p1}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_4

    .line 17
    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_4

    .line 18
    :try_start_7
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 19
    invoke-static {p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v6, "socket response code: %s, header: %s, msg: %s"

    const/4 v7, 0x3

    :try_start_8
    new-array v7, v7, [Ljava/lang/Object;

    .line 20
    iget v8, p1, Lcom/tencent/beacon/pack/SocketResponsePackage;->statusCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p1, Lcom/tencent/beacon/pack/SocketResponsePackage;->header:Ljava/util/Map;

    aput-object v8, v7, v2

    iget-object v8, p1, Lcom/tencent/beacon/pack/SocketResponsePackage;->msg:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v0, v9, v6, v7}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget v0, p1, Lcom/tencent/beacon/pack/SocketResponsePackage;->statusCode:I

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_6

    .line 22
    invoke-direct {p0, p2, v4, p1}, Lcom/tencent/beacon/base/net/adapter/h;->a(Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;Lcom/tencent/beacon/pack/SocketResponsePackage;)V

    goto :goto_2

    .line 23
    :cond_6
    new-instance p0, Lcom/tencent/beacon/base/net/d;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v7, "responsePackage msg: "

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/beacon/pack/SocketResponsePackage;->msg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, v1, v0, p1}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_9
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_2
    if-eqz v5, :cond_9

    .line 24
    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_9

    .line 25
    :try_start_a
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_5

    .line 26
    :cond_7
    :goto_3
    :try_start_b
    new-instance p0, Lcom/tencent/beacon/base/net/d;
    :try_end_b
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string p1, "receiveData == null"

    :try_start_c
    invoke-direct {p0, v4, v1, v7, p1}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_c
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v5, :cond_8

    .line 27
    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_8

    .line 28
    :try_start_d
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 29
    invoke-static {p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    return-void

    :catchall_0
    move-exception p0

    move-object v8, p0

    move-object p0, v5

    const-string p1, "SocketAdapter socket request error: %s"

    :try_start_e
    new-array v0, v2, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {v8}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 32
    new-instance p1, Lcom/tencent/beacon/base/net/d;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-string v5, "449"

    const/4 v6, -0x1

    const-string v7, " unknown request error!"

    move-object v3, p1

    :try_start_f
    invoke-direct/range {v3 .. v8}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz p0, :cond_9

    .line 33
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_9

    .line 34
    :try_start_10
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v8, p0

    move-object p0, v5

    .line 35
    :try_start_11
    new-instance p1, Lcom/tencent/beacon/base/net/d;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    const-string v5, "401"

    const/4 v6, -0x1

    const-string v7, " request time more than 30s"

    move-object v3, p1

    :try_start_12
    invoke-direct/range {v3 .. v8}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz p0, :cond_9

    .line 36
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_9

    .line 37
    :try_start_13
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v8, p0

    move-object p0, v5

    .line 38
    :try_start_14
    new-instance p1, Lcom/tencent/beacon/base/net/d;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    const-string v5, "401"

    const/4 v6, -0x1

    const-string v7, " connect time more than 30s"

    move-object v3, p1

    :try_start_15
    invoke-direct/range {v3 .. v8}, Lcom/tencent/beacon/base/net/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lcom/tencent/beacon/base/net/call/Callback;->onFailure(Lcom/tencent/beacon/base/net/d;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz p0, :cond_9

    .line 39
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_9

    .line 40
    :try_start_16
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 41
    invoke-static {p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    return-void

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_a

    .line 42
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p2

    if-nez p2, :cond_a

    .line 43
    :try_start_17
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    .line 45
    :cond_a
    :goto_6
    throw p1
.end method
