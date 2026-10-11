.class public Lcom/tencent/qcloud/core/http/StreamingRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/http/ProgressBody;
.implements Lcom/tencent/qcloud/core/common/QCloudDigistListener;


# instance fields
.field protected bytes:[B

.field protected contentRawLength:J

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentType:Ljava/lang/String;

.field protected countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

.field private deleteFileWhenComplete:Z

.field protected file:Ljava/io/File;

.field protected offset:J

.field protected progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

.field protected requiredLength:J

.field protected stream:Ljava/io/InputStream;

.field protected uri:Landroid/net/Uri;

.field protected url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentRawLength:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->deleteFileWhenComplete:Z

    return-void
.end method

.method public static bytes([BLjava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 2

    new-instance v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;-><init>()V

    iput-object p0, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->bytes:[B

    iput-object p1, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentType:Ljava/lang/String;

    const-wide/16 p0, 0x0

    cmp-long v1, p2, p0

    if-gez v1, :cond_0

    move-wide p2, p0

    :cond_0
    iput-wide p2, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    iput-wide p4, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    return-object v0
.end method

.method public static file(Ljava/io/File;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file(Ljava/io/File;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static file(Ljava/io/File;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 2

    .line 2
    new-instance v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;-><init>()V

    .line 3
    iput-object p0, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    .line 4
    iput-object p1, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentType:Ljava/lang/String;

    const-wide/16 p0, 0x0

    cmp-long v1, p2, p0

    if-gez v1, :cond_0

    move-wide p2, p0

    .line 5
    :cond_0
    iput-wide p2, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    .line 6
    iput-wide p4, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    return-object v0
.end method

.method public static steam(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 1

    new-instance v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;-><init>()V

    iput-object p0, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    iput-object p2, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentType:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    const-wide/16 p0, 0x0

    cmp-long p2, p3, p0

    if-gez p2, :cond_0

    move-wide p3, p0

    :cond_0
    iput-wide p3, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    iput-wide p5, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->deleteFileWhenComplete:Z

    return-object v0
.end method

.method public static uri(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 1

    new-instance v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;-><init>()V

    iput-object p0, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->uri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentResolver:Landroid/content/ContentResolver;

    iput-object p2, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentType:Ljava/lang/String;

    const-wide/16 p0, 0x0

    cmp-long p2, p3, p0

    if-gez p2, :cond_0

    move-wide p3, p0

    :cond_0
    iput-wide p3, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    iput-wide p5, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    return-object v0
.end method

.method public static url(Ljava/net/URL;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 2

    new-instance v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;-><init>()V

    iput-object p0, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->url:Ljava/net/URL;

    iput-object p1, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentType:Ljava/lang/String;

    const-wide/16 p0, 0x0

    cmp-long v1, p2, p0

    if-gez v1, :cond_0

    move-wide p2, p0

    :cond_0
    iput-wide p2, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    iput-wide p4, v0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->getContentRawLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, -0x1

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    cmp-long v4, v7, v2

    if-gtz v4, :cond_1

    iget-wide v7, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    sub-long/2addr v0, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v9, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    sub-long/2addr v0, v9

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v5, v0

    :goto_1
    return-wide v5
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentType:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBytesTransferred()J
    .locals 2

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/CountingSink;->getTotalTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getContentRawLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentRawLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentRawLength:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentRawLength:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->bytes:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentRawLength:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/tencent/qcloud/core/util/QCloudUtils;->getUriContentLength(Landroid/net/Uri;Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentRawLength:J

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentRawLength:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/tencent/qcloud/core/common/QCloudProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-object p0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->bytes:[B

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->bytes:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    invoke-virtual {p0, v0, v4}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->saveInputStreamToTmpFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    iput-object v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    iput-wide v1, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    iput-object v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    iput-wide v1, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->url:Ljava/net/URL;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->requiredLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v3

    :goto_0
    iget-object v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->url:Ljava/net/URL;

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_8

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "QCloudHttp"

    const-string v2, "skip  %d is small than offset %d"

    invoke-static {v1, v2, p0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-object v0
.end method

.method public isLargeData()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->stream:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onGetMd5()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->bytes:[B

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    long-to-int v3, v3

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentLength()J

    move-result-wide v4

    long-to-int p0, v4

    invoke-virtual {v1, v2, v3, p0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->getStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0x2000

    new-array v3, v2, [B

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentLength()J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-lez p0, :cond_2

    int-to-long v6, v2

    cmp-long p0, v6, v4

    if-lez p0, :cond_1

    long-to-int p0, v4

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v7, -0x1

    if-eq p0, v7, :cond_2

    invoke-virtual {v1, v3, v6, p0}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v6, p0

    sub-long/2addr v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unSupport Md5 algorithm"

    invoke-direct {v1, v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    throw p0
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->deleteFileWhenComplete:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->file:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public saveInputStreamToTmpFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x2000

    :try_start_1
    new-array p2, p2, [B

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    iget-wide v6, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->offset:J

    cmp-long p0, v6, v4

    if-lez p0, :cond_1

    invoke-virtual {p1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_1
    :goto_0
    cmp-long p0, v4, v2

    if-gez p0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    int-to-long v6, p0

    sub-long v8, v2, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int p0, v8

    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0, p0}, Ljava/io/FileOutputStream;->write([BII)V

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    throw p0
.end method

.method public setProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->getStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->contentLength()J

    move-result-wide v2

    new-instance v4, Lcom/tencent/qcloud/core/http/CountingSink;

    iget-object v5, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    invoke-direct {v4, p1, v2, v3, v5}, Lcom/tencent/qcloud/core/http/CountingSink;-><init>(Lokio/Sink;JLcom/tencent/qcloud/core/common/QCloudProgressListener;)V

    iput-object v4, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {p1, v0, v2, v3}, Lokio/BufferedSink;->write(Lokio/Source;J)Lokio/BufferedSink;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    :goto_0
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    if-eqz p0, :cond_7

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_7
    throw p1
.end method
