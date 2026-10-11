.class public final Lcom/tencent/beacon/base/net/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tencent/beacon/base/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/beacon/base/util/f<",
            "Lcom/tencent/beacon/base/net/b/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/beacon/base/util/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tencent/beacon/base/util/f;-><init>(I)V

    sput-object v0, Lcom/tencent/beacon/base/net/b/a;->a:Lcom/tencent/beacon/base/util/f;

    return-void
.end method

.method public static a(I[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->f([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->c([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 3
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->a([B)[B

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/tencent/beacon/base/net/b/a/b;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/b/a/b;-><init>()V

    .line 6
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-direct {v12, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v13, 0x0

    .line 10
    :try_start_0
    sget-object v3, Lcom/tencent/beacon/base/net/b/a;->a:Lcom/tencent/beacon/base/util/f;

    invoke-virtual {v3}, Lcom/tencent/beacon/base/util/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/beacon/base/net/b/a/b/c;

    if-nez v3, :cond_0

    .line 11
    new-instance v3, Lcom/tencent/beacon/base/net/b/a/b/c;

    invoke-direct {v3}, Lcom/tencent/beacon/base/net/b/a/b/c;-><init>()V

    :cond_0
    move-object v14, v3

    .line 12
    iget v3, v0, Lcom/tencent/beacon/base/net/b/a/b;->k:I

    invoke-virtual {v14, v3}, Lcom/tencent/beacon/base/net/b/a/b/c;->g(I)Z

    .line 13
    iget v3, v0, Lcom/tencent/beacon/base/net/b/a/b;->c:I

    invoke-virtual {v14, v3}, Lcom/tencent/beacon/base/net/b/a/b/c;->h(I)Z

    .line 14
    iget v3, v0, Lcom/tencent/beacon/base/net/b/a/b;->h:I

    invoke-virtual {v14, v3}, Lcom/tencent/beacon/base/net/b/a/b/c;->j(I)Z

    .line 15
    iget v3, v0, Lcom/tencent/beacon/base/net/b/a/b;->l:I

    invoke-virtual {v14, v3}, Lcom/tencent/beacon/base/net/b/a/b/c;->i(I)Z

    .line 16
    iget v3, v0, Lcom/tencent/beacon/base/net/b/a/b;->e:I

    iget v4, v0, Lcom/tencent/beacon/base/net/b/a/b;->f:I

    iget v0, v0, Lcom/tencent/beacon/base/net/b/a/b;->g:I

    invoke-virtual {v14, v3, v4, v0}, Lcom/tencent/beacon/base/net/b/a/b/c;->c(III)Z

    .line 17
    invoke-virtual {v14, v13}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(Z)V

    .line 18
    invoke-virtual {v14, v12}, Lcom/tencent/beacon/base/net/b/a/b/c;->b(Ljava/io/OutputStream;)V

    .line 19
    array-length p0, p0

    int-to-long v3, p0

    move p0, v13

    :goto_0
    const/16 v0, 0x8

    if-ge p0, v0, :cond_1

    mul-int/lit8 v0, p0, 0x8

    ushr-long v5, v3, v0

    long-to-int v0, v5

    and-int/lit16 v0, v0, 0xff

    .line 20
    invoke-virtual {v12, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v3, v14

    move-object v4, v11

    move-object v5, v12

    .line 21
    invoke-virtual/range {v3 .. v10}, Lcom/tencent/beacon/base/net/b/a/b/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/tencent/beacon/base/net/b/a/a;)V

    .line 22
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 23
    sget-object p0, Lcom/tencent/beacon/base/net/b/a;->a:Lcom/tencent/beacon/base/util/f;

    invoke-virtual {p0, v14}, Lcom/tencent/beacon/base/util/f;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 24
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "lzma zip error msg: "

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v13, [Ljava/lang/Object;

    .line 25
    invoke-static {p0, v0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "521"

    :try_start_3
    invoke-virtual {v0, v3, p0}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :goto_1
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 28
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 29
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 30
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 31
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 32
    :goto_2
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 33
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 34
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 35
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 36
    throw p0
.end method

.method public static b(I[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->e([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->d([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 3
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->b([B)[B

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/a;->d([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/tencent/beacon/base/net/b/a/b;

    invoke-direct {v0}, Lcom/tencent/beacon/base/net/b/a/b;-><init>()V

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    const/4 v4, 0x5

    :try_start_0
    new-array v5, v4, [B

    .line 10
    invoke-virtual {v0, v5, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 11
    new-instance v4, Lcom/tencent/beacon/base/net/b/a/b/b;

    invoke-direct {v4}, Lcom/tencent/beacon/base/net/b/a/b/b;-><init>()V

    .line 12
    invoke-virtual {v4, v5}, Lcom/tencent/beacon/base/net/b/a/b/b;->a([B)Z

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_0
    const/16 v8, 0x8

    if-ge v7, v8, :cond_1

    .line 13
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    if-ltz v8, :cond_0

    int-to-long v8, v8

    mul-int/lit8 v10, v7, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v4, Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Can\'t read stream size"

    :try_start_1
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 15
    :cond_1
    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/tencent/beacon/base/net/b/a/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_1

    .line 17
    :cond_2
    new-instance v4, Ljava/lang/Exception;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "Error in data stream"

    :try_start_2
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 18
    :cond_3
    new-instance v4, Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "input file is too short"

    :try_start_3
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v4

    .line 19
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "lzma unZip error msg: "

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    invoke-static {v4, v3}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v5, "521"

    :try_start_6
    invoke-virtual {v3, v5, v4}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 22
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 23
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 25
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 26
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 27
    :goto_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 28
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 30
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 31
    throw v3
.end method

.method private static c([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method private static d([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v4, 0x400

    :try_start_2
    new-array v5, v4, [B

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-virtual {v3, v5, v0, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v6, v5, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v6

    goto/16 :goto_4

    :catch_0
    move-exception v4

    move-object v5, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v4, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catch_2
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto :goto_1

    :catchall_3
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v3, v2

    :goto_1
    move-object v5, v4

    move-object v4, v3

    :goto_2
    :try_start_4
    invoke-static {}, Lcom/tencent/beacon/a/b/j;->e()Lcom/tencent/beacon/a/b/j;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v7, "509"

    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v9, "unzipData length: "

    :try_start_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v7, p0, v5}, Lcom/tencent/beacon/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v6, "unGzip error "

    :try_start_7
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/beacon/base/util/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_3
    move-object v1, v4

    :goto_3
    return-object v1

    :goto_4
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_6
    throw p0
.end method

.method private static e([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v1, 0x400

    new-array v2, v1, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1
.end method

.method private static f([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "zip"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipEntry;->setSize(J)V

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method
