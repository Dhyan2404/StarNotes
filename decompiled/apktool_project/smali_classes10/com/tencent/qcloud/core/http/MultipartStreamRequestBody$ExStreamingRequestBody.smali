.class Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;
.super Lcom/tencent/qcloud/core/http/StreamingRequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExStreamingRequestBody"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;-><init>()V

    return-void
.end method

.method public static bytes([BLjava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 2

    new-instance v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;-><init>()V

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
    invoke-static/range {v0 .. v5}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;->file(Ljava/io/File;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static file(Ljava/io/File;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 2

    .line 2
    new-instance v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;-><init>()V

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

    new-instance v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;-><init>()V

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

    return-object v0
.end method

.method public static uri(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;
    .locals 1

    new-instance v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;-><init>()V

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

    new-instance v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;-><init>()V

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
.method public writeTo(Lokio/BufferedSink;)V
    .locals 6
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

    move-result-object p0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    invoke-interface {p0, v0, v2, v3}, Lokio/BufferedSink;->write(Lokio/Source;J)Lokio/BufferedSink;

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    :goto_0
    invoke-interface {p0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    throw p0
.end method
