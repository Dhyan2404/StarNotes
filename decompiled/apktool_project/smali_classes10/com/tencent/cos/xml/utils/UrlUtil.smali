.class public Lcom/tencent/cos/xml/utils/UrlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrlUploadPolicy(Ljava/lang/String;)Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;
    .locals 5

    invoke-static {p0}, Lcom/tencent/cos/xml/utils/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    sget-object v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->NOTSUPPORT:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;-><init>(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;J)V

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance p0, Lcom/tencent/cos/xml/common/Range;

    const-wide/16 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/tencent/cos/xml/common/Range;-><init>(JJ)V

    new-instance v3, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    invoke-direct {v3}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->url(Ljava/net/URL;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->method(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object v0

    const-string v3, "Range"

    invoke-virtual {p0}, Lcom/tencent/cos/xml/common/Range;->getRange()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->build()Lcom/tencent/qcloud/core/http/HttpRequest;

    move-result-object p0

    invoke-static {}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->getDefault()Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->resolveRequest(Lcom/tencent/qcloud/core/http/HttpRequest;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->executeNow()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/HttpResult;
    :try_end_1
    .catch Lcom/tencent/qcloud/core/common/QCloudServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResult;->headers()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResult;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Accept-Ranges"

    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/http/HttpResult;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Content-Range"

    invoke-virtual {p0, v3}, Lcom/tencent/qcloud/core/http/HttpResult;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bytes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/tencent/qcloud/core/util/QCloudHttpUtils;->parseContentRange(Ljava/lang/String;)[J

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    sget-object v1, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->RANGE:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;-><init>(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;J)V

    return-object v0

    :cond_1
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/http/HttpResult;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    sget-object v1, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->ENTIRETY:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;-><init>(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;J)V

    return-object v0

    :cond_2
    new-instance p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    sget-object v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->NOTSUPPORT:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;-><init>(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;J)V

    return-object p0

    :catch_0
    new-instance p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    sget-object v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->NOTSUPPORT:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;-><init>(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;J)V

    return-object p0

    :catch_1
    new-instance p0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;

    sget-object v0, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;->NOTSUPPORT:Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy;-><init>(Lcom/tencent/cos/xml/model/tag/UrlUploadPolicy$Type;J)V

    return-object p0
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
