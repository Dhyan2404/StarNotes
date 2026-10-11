.class public Lcom/tencent/cos/xml/model/object/RestoreRequest;
.super Lcom/tencent/cos/xml/model/object/ObjectRequest;
.source "SourceFile"


# instance fields
.field private restoreConfigure:Lcom/tencent/cos/xml/model/tag/RestoreConfigure;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/object/ObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/cos/xml/model/tag/RestoreConfigure;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/tag/RestoreConfigure;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/model/object/RestoreRequest;->restoreConfigure:Lcom/tencent/cos/xml/model/tag/RestoreConfigure;

    new-instance p0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$CASJobParameters;

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$CASJobParameters;-><init>()V

    iput-object p0, p1, Lcom/tencent/cos/xml/model/tag/RestoreConfigure;->casJobParameters:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$CASJobParameters;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "POST"

    return-object p0
.end method

.method public getQueryString()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    const-string v1, "restore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->queryParameters:Ljava/util/Map;

    return-object p0
.end method

.method public getRestoreConfigure()Lcom/tencent/cos/xml/model/tag/RestoreConfigure;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/RestoreRequest;->restoreConfigure:Lcom/tencent/cos/xml/model/tag/RestoreConfigure;

    return-object p0
.end method

.method public isNeedMD5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setExpireDays(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/RestoreRequest;->restoreConfigure:Lcom/tencent/cos/xml/model/tag/RestoreConfigure;

    iput p1, p0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure;->days:I

    return-void
.end method

.method public setTier(Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/RestoreRequest;->restoreConfigure:Lcom/tencent/cos/xml/model/tag/RestoreConfigure;

    iget-object p0, p0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure;->casJobParameters:Lcom/tencent/cos/xml/model/tag/RestoreConfigure$CASJobParameters;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$Tier;->getTier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/cos/xml/model/tag/RestoreConfigure$CASJobParameters;->tier:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public xmlBuilder()Lcom/tencent/qcloud/core/http/RequestBodySerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/RestoreRequest;->restoreConfigure:Lcom/tencent/cos/xml/model/tag/RestoreConfigure;

    invoke-static {p0}, Lcom/tencent/cos/xml/transfer/XmlBuilder;->buildRestore(Lcom/tencent/cos/xml/model/tag/RestoreConfigure;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/xml"

    invoke-static {v0, p0}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->string(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object p0

    return-object p0
.end method
