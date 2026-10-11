.class public abstract Lcom/tencent/cos/xml/model/CosXmlRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/CosXmlRequest$OnRequestWeightListener;
    }
.end annotation


# instance fields
.field protected bucket:Ljava/lang/String;

.field private credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

.field private httpTask:Lcom/tencent/qcloud/core/http/HttpTask;

.field private isNeedMD5:Z

.field private isSupportAccelerate:Z

.field private keyTime:Ljava/lang/String;

.field private metrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

.field protected noSignHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected noSignParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onRequestWeightListener:Lcom/tencent/cos/xml/model/CosXmlRequest$OnRequestWeightListener;

.field protected priority:I

.field protected qCloudTaskStateListener:Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;

.field private queryParameterEncodedString:Ljava/lang/String;

.field protected queryParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected region:Ljava/lang/String;

.field protected requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected requestURL:Ljava/lang/String;

.field private signInUrl:Z

.field protected signSourceProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestHeaders:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->noSignHeaders:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->noSignParams:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5:Z

    iput-boolean v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->isSupportAccelerate:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->priority:I

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addNoSignHeader(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->noSignHeaders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addNoSignHeader(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->noSignHeaders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addNoSignParams(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->noSignParams:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->metrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    return-void
.end method

.method public checkParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    return-void
.end method

.method public getBucket()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->bucket:Ljava/lang/String;

    return-object p0
.end method

.method public getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    return-object p0
.end method

.method public getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->httpTask:Lcom/tencent/qcloud/core/http/HttpTask;

    return-object p0
.end method

.method public getKeyTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->keyTime:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->metrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    return-object p0
.end method

.method public getNoSignHeaders()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->noSignHeaders:Ljava/util/Set;

    return-object p0
.end method

.method public getNoSignParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->noSignParams:Ljava/util/Set;

    return-object p0
.end method

.method public abstract getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->priority:I

    return p0
.end method

.method public getQueryEncodedString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameterEncodedString:Ljava/lang/String;

    return-object p0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->region:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v1, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getRequestHost(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->region:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->bucket:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->isSupportAccelerate:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRequestHost(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestURL:Ljava/lang/String;

    return-object p0
.end method

.method public getSTSCredentialScope(Lcom/tencent/cos/xml/CosXmlServiceConfig;)[Lcom/tencent/qcloud/core/auth/STSCredentialScope;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name/cos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    iget-object v2, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->bucket:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getBucket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/tencent/qcloud/core/auth/STSCredentialScope;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/auth/STSCredentialScope;->toArray()[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    move-result-object p0

    return-object p0
.end method

.method public getSignSourceProvider()Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->signSourceProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qcloud/core/auth/COSXmlSignSourceProvider;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/auth/COSXmlSignSourceProvider;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->signSourceProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->signSourceProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->onRequestWeightListener:Lcom/tencent/cos/xml/model/CosXmlRequest$OnRequestWeightListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tencent/cos/xml/model/CosXmlRequest$OnRequestWeightListener;->onWeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public headersHasUnsafeNonAscii()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNeedMD5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5:Z

    return p0
.end method

.method public isSignInUrl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->signInUrl:Z

    return p0
.end method

.method public isSupportAccelerate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->isSupportAccelerate:Z

    return-void
.end method

.method public isSupportAccelerate()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->isSupportAccelerate:Z

    return p0
.end method

.method public setCredential(Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/CosXmlRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest$1;-><init>(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    return-void
.end method

.method public setCredentialProvider(Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    return-void
.end method

.method public setNeedMD5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5:Z

    return-void
.end method

.method public setOnRequestWeightListener(Lcom/tencent/cos/xml/model/CosXmlRequest$OnRequestWeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->onRequestWeightListener:Lcom/tencent/cos/xml/model/CosXmlRequest$OnRequestWeightListener;

    return-void
.end method

.method public setQueryEncodedString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameterEncodedString:Ljava/lang/String;

    return-void
.end method

.method public setQueryParameters(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->region:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Lcom/tencent/cos/xml/utils/URLEncodeUtils;->cosPathEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRequestHeaders(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-static {p2}, Lcom/tencent/cos/xml/utils/URLEncodeUtils;->cosPathEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->requestURL:Ljava/lang/String;

    return-void
.end method

.method public setSign(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public setSign(JJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    return-void
.end method

.method public setSign(JJLjava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0, p5, p6}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSignParamsAndHeaders(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public setSign(JLjava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p3, p4}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setSignParamsAndHeaders(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Authorization"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSignInUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->signInUrl:Z

    return-void
.end method

.method public setSignKeyTime(I)V
    .locals 4

    invoke-static {}, Lcom/tencent/qcloud/core/http/HttpConfiguration;->getDeviceTimeWithOffset()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v2, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->keyTime:Ljava/lang/String;

    return-void
.end method

.method public setSignParamsAndHeaders(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qcloud/core/auth/COSXmlSignSourceProvider;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/auth/COSXmlSignSourceProvider;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/qcloud/core/auth/COSXmlSignSourceProvider;->parameters(Ljava/util/Set;)V

    invoke-virtual {v0, p2}, Lcom/tencent/qcloud/core/auth/COSXmlSignSourceProvider;->headers(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->signSourceProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    return-void
.end method

.method public setSignSourceProvider(Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->signSourceProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    return-void
.end method

.method public setTask(Lcom/tencent/qcloud/core/http/HttpTask;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->httpTask:Lcom/tencent/qcloud/core/http/HttpTask;

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->qCloudTaskStateListener:Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->addStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)Lcom/tencent/qcloud/core/task/QCloudTask;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->metrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/HttpTask;->attachMetric(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)Lcom/tencent/qcloud/core/http/HttpTask;

    return-void
.end method

.method public setTaskStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->qCloudTaskStateListener:Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;

    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "xmlBuilder empty implementation"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
