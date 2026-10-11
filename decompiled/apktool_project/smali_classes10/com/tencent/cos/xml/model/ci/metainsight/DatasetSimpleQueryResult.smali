.class public final Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public response:Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    return-void
.end method


# virtual methods
.method public parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;,
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/model/CosXmlResult;->parseResponseBody(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    const-class v0, Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResponse;

    invoke-static {p1, v0}, Lcom/tencent/cos/xml/utils/QCloudJsonUtils;->fromJson(Lcom/tencent/qcloud/core/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResponse;

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResult;->response:Lcom/tencent/cos/xml/model/ci/metainsight/DatasetSimpleQueryResponse;

    return-void
.end method
