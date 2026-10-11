.class public Lcom/tencent/qcloud/core/http/ResponseFileConverter;
.super Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/http/ProgressBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
        "TT;>;",
        "Lcom/tencent/qcloud/core/http/ProgressBody;"
    }
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private contentUri:Landroid/net/Uri;

.field private countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

.field private filePath:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected isQuic:Z

.field private offset:J

.field protected progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->isQuic:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;J)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->isQuic:Z

    .line 7
    iput-object p1, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->contentUri:Landroid/net/Uri;

    .line 8
    iput-object p2, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->contentResolver:Landroid/content/ContentResolver;

    .line 9
    iput-wide p3, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->offset:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->isQuic:Z

    .line 3
    iput-object p1, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->filePath:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->offset:J

    return-void
.end method

.method private downloadToAbsolutePath(Lcom/tencent/qcloud/core/http/HttpResponse;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResponse<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "local file directory can not create."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->writeRandomAccessFile(Ljava/io/File;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "write local file error for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    const-string p1, "response body is empty !"

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private pipeToContentUri(Lcom/tencent/qcloud/core/http/HttpResponse;J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResponse<",
            "TT;>;J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 v1, 0x2000

    new-array v1, v1, [B

    new-instance v2, Lcom/tencent/qcloud/core/http/CountingSink;

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    iget-object v4, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    invoke-direct {v2, v3, p2, p3, v4}, Lcom/tencent/qcloud/core/http/CountingSink;-><init>(Lokio/Sink;JLcom/tencent/qcloud/core/common/QCloudProgressListener;)V

    iput-object v2, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {v0, v1, p3, p2}, Ljava/io/OutputStream;->write([BII)V

    iget-object p3, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    int-to-long v2, p2

    invoke-virtual {p3, v2, v3}, Lcom/tencent/qcloud/core/http/CountingSink;->writeBytesInternal(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "write local uri error for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    throw p0
.end method

.method private writeRandomAccessFile(Ljava/io/File;Ljava/io/InputStream;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->getBytesTransferred()J

    move-result-wide v5

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->offset:J

    add-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->offset:J

    add-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v0

    move-object v8, v1

    goto :goto_2

    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v8, v0

    move-object p1, v1

    :goto_0
    :try_start_3
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/high16 v0, 0x100000

    :try_start_4
    new-array v0, v0, [B

    new-instance v10, Lcom/tencent/qcloud/core/http/CountingSink;

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    iget-object v7, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    move-object v1, v10

    move-wide v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/tencent/qcloud/core/http/CountingSink;-><init>(Lokio/Sink;JJLcom/tencent/qcloud/core/common/QCloudProgressListener;)V

    iput-object v10, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_1

    const/4 p4, 0x0

    invoke-virtual {v9, v0, p4, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object p4, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    int-to-long v1, p3

    invoke-virtual {p4, v1, v2}, Lcom/tencent/qcloud/core/http/CountingSink;->writeBytesInternal(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_1
    invoke-static {v9}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    move-object v0, v9

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object p1, v0

    move-object v8, p1

    :goto_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {v8}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    throw p0

    :cond_6
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "response body stream is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public convert(Lcom/tencent/qcloud/core/http/HttpResponse;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->isQuic:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->checkResponseSuccessful(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    const-string v0, "Content-Range"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/QCloudHttpUtils;->parseContentRange(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->contentLength()J

    move-result-wide v1

    :goto_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->downloadToAbsolutePath(Lcom/tencent/qcloud/core/http/HttpResponse;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->pipeToContentUri(Lcom/tencent/qcloud/core/http/HttpResponse;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath or ContentUri are both null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public enableQuic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->isQuic:Z

    return-void
.end method

.method public getBytesTransferred()J
    .locals 2

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/CountingSink;->getTotalTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "local file directory can not create."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {v0, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {v0, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filePath or ContentUri are both null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public getProgressListener()Lcom/tencent/qcloud/core/common/QCloudProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-object p0
.end method

.method public isFilePathConverter()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->filePath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-void
.end method
