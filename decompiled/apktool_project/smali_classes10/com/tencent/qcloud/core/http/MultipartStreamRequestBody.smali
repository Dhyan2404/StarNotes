.class public Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/http/ProgressBody;
.implements Lcom/tencent/qcloud/core/common/QCloudDigistListener;
.implements Lcom/tencent/qcloud/core/http/ReactiveBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;
    }
.end annotation


# instance fields
.field private bodyParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileName:Ljava/lang/String;

.field multipartBody:Lokhttp3/MultipartBody;

.field private name:Ljava/lang/String;

.field streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->bodyParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addMd5()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->bodyParameters:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->onGetMd5()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->multipartBody:Lokhttp3/MultipartBody;

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->multipartBody:Lokhttp3/MultipartBody;

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public end(Lcom/tencent/qcloud/core/http/HttpResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/qcloud/core/http/HttpResult<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getBytesTransferred()J
    .locals 2

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->getBytesTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public onGetMd5()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->onGetMd5()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->bodyParameters:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public prepare()V
    .locals 4

    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->bodyParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->multipartBody:Lokhttp3/MultipartBody;

    return-void
.end method

.method public setBodyParameters(Ljava/util/Map;)V
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

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->bodyParameters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JJ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    iput-object p2, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->name:Ljava/lang/String;

    .line 2
    :cond_0
    iput-object p3, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->fileName:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v1, p1

    move-object v0, p4

    move-wide v2, p5

    move-wide v4, p7

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;->file(Ljava/io/File;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    if-eqz v1, :cond_0

    .line 10
    iput-object v1, v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->name:Ljava/lang/String;

    :cond_0
    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->fileName:Ljava/lang/String;

    move-object v1, p5

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p6

    move-wide/from16 v6, p8

    .line 12
    invoke-static/range {v1 .. v7}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;->steam(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJ)V
    .locals 6

    if-eqz p2, :cond_0

    .line 7
    iput-object p2, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->name:Ljava/lang/String;

    .line 8
    :cond_0
    iput-object p3, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->fileName:Ljava/lang/String;

    move-object v0, p4

    move-object v1, p1

    move-wide v2, p5

    move-wide v4, p7

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody$ExStreamingRequestBody;->bytes([BLjava/lang/String;JJ)Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    return-void
.end method

.method public setProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->setProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)V

    :cond_0
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->bodyParameters:Ljava/util/Map;

    const-string v0, "Signature"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->multipartBody:Lokhttp3/MultipartBody;

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody;->writeTo(Lokio/BufferedSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/MultipartStreamRequestBody;->streamingRequestBody:Lcom/tencent/qcloud/core/http/StreamingRequestBody;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/StreamingRequestBody;->countingSink:Lcom/tencent/qcloud/core/http/CountingSink;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method
