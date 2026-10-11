.class public Lorg/xmlresolver/ResourceConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/net/URI;

.field public c:Ljava/net/URI;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/xmlresolver/ResourceConnection;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;Z)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->a:Ljava/io/InputStream;

    .line 4
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    .line 5
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->c:Ljava/net/URI;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lorg/xmlresolver/ResourceConnection;->d:I

    .line 7
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->e:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->f:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->g:Ljava/lang/Long;

    .line 10
    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->h:Ljava/lang/Long;

    .line 11
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->i:Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    .line 12
    :try_start_0
    invoke-static {p2}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    .line 13
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    const-string v2, "http"

    .line 14
    iget-object v3, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "Etag"

    if-nez v2, :cond_2

    :try_start_1
    const-string v2, "https"

    iget-object v4, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    if-eqz p3, :cond_1

    .line 17
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/xmlresolver/ResourceConnection;->a:Ljava/io/InputStream;

    .line 19
    :goto_0
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->f:Ljava/lang/String;

    .line 21
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->g:Ljava/lang/Long;

    .line 22
    invoke-virtual {v1}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->h:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 23
    :try_start_2
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 24
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/xmlresolver/ResourceConnection;->d:I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_0
    const/16 v0, 0xc8

    .line 25
    :try_start_3
    iput v0, p0, Lorg/xmlresolver/ResourceConnection;->d:I

    goto/16 :goto_5

    .line 26
    :cond_2
    :goto_1
    invoke-static {}, Lorg/apache/hc/client5/http/impl/classic/HttpClients;->createDefault()Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->i:Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    .line 27
    invoke-static {}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->create()Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v1

    if-eqz p3, :cond_3

    .line 28
    new-instance v2, Lorg/apache/hc/client5/http/classic/methods/HttpHead;

    iget-object v4, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    invoke-direct {v2, v4}, Lorg/apache/hc/client5/http/classic/methods/HttpHead;-><init>(Ljava/net/URI;)V

    goto :goto_2

    .line 29
    :cond_3
    new-instance v2, Lorg/apache/hc/client5/http/classic/methods/HttpGet;

    iget-object v4, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    invoke-direct {v2, v4}, Lorg/apache/hc/client5/http/classic/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 30
    :goto_2
    iget-object v4, p0, Lorg/xmlresolver/ResourceConnection;->i:Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    invoke-virtual {v4, v2, v1}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/impl/classic/CloseableHttpResponse;

    move-result-object v4

    .line 31
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/hc/client5/http/RouteInfo;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/hc/client5/http/RouteInfo;->getTargetHost()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v5

    .line 32
    invoke-virtual {v1}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRedirectLocations()Lorg/apache/hc/client5/http/protocol/RedirectLocations;

    move-result-object v1

    .line 33
    invoke-virtual {v2}, Lorg/apache/hc/client5/http/classic/methods/HttpUriRequestBase;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/protocol/RedirectLocations;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v5, v1}, Lorg/apache/hc/client5/http/utils/URIUtils;->resolve(Ljava/net/URI;Lorg/apache/hc/core5/http/HttpHost;Ljava/util/List;)Ljava/net/URI;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    invoke-virtual {v2, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 35
    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->c:Ljava/net/URI;

    goto :goto_3

    .line 36
    :cond_4
    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->c:Ljava/net/URI;

    .line 37
    :goto_3
    invoke-interface {v4}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    iput v1, p0, Lorg/xmlresolver/ResourceConnection;->d:I

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 38
    invoke-virtual {p0, v4, v1, v2}, Lorg/xmlresolver/ResourceConnection;->a(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v4, v3, v0}, Lorg/xmlresolver/ResourceConnection;->a(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->f:Ljava/lang/String;

    if-nez p3, :cond_5

    .line 40
    move-object v1, v4

    check-cast v1, Lorg/apache/hc/core5/http/ClassicHttpResponse;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/ClassicHttpResponse;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/hc/core5/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlresolver/ResourceConnection;->a:Ljava/io/InputStream;

    .line 41
    :cond_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "Last-Modified"

    .line 42
    invoke-virtual {p0, v4, v2, v0}, Lorg/xmlresolver/ResourceConnection;->a(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_6

    .line 43
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/xmlresolver/ResourceConnection;->g:Ljava/lang/Long;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    :cond_6
    :try_start_5
    const-string v2, "Date"

    .line 45
    invoke-virtual {p0, v4, v2, v0}, Lorg/xmlresolver/ResourceConnection;->a(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v0, :cond_8

    .line 46
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlresolver/ResourceConnection;->h:Ljava/lang/Long;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    .line 48
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p3, :cond_7

    const-string p3, "HEAD"

    goto :goto_4

    :cond_7
    const-string p3, "GET"

    :goto_4
    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const/4 p2, 0x2

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p2

    const-string p0, "warning"

    const-string p2, "Failed to %s: %s: %s"

    invoke-interface {p1, p0, p2, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_3
    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/hc/core5/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/hc/core5/http/Header;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    array-length p1, p0

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-interface {p0}, Lorg/apache/hc/core5/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->i:Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getDate()J
    .locals 2

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->h:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModified()J
    .locals 2

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->g:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRedirect()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->c:Ljava/net/URI;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lorg/xmlresolver/ResourceConnection;->d:I

    return p0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method public getUri()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/ResourceConnection;->b:Ljava/net/URI;

    return-object p0
.end method
