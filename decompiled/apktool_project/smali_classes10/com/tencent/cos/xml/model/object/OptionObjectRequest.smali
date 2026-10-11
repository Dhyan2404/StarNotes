.class public final Lcom/tencent/cos/xml/model/object/OptionObjectRequest;
.super Lcom/tencent/cos/xml/model/object/ObjectRequest;
.source "SourceFile"


# instance fields
.field private accessControlHeaders:Ljava/lang/String;

.field private accessControlMethod:Ljava/lang/String;

.field private origin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->origin:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->accessControlMethod:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->setOrigin(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->setAccessControlMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/cos/xml/model/object/ObjectRequest;->checkParameters()V

    iget-object v0, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->origin:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->accessControlMethod:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "option request accessControlMethod must not be null"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_ARGUMENT:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    const-string v1, "option request origin must not be null"

    invoke-direct {p0, v0, v1}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getAccessControlHeaders()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->accessControlHeaders:Ljava/lang/String;

    return-object p0
.end method

.method public getAccessControlMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->accessControlMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "OPTIONS"

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAccessControlHeaders(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->accessControlHeaders:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "Access-Control-Request-Headers"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAccessControlMethod(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->accessControlMethod:Ljava/lang/String;

    const-string v0, "Access-Control-Request-Method"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/OptionObjectRequest;->origin:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "Origin"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
