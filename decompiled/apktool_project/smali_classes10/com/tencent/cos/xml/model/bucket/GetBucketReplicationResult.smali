.class public Lcom/tencent/cos/xml/model/bucket/GetBucketReplicationResult;
.super Lcom/tencent/cos/xml/model/CosXmlResult;
.source "SourceFile"


# instance fields
.field public replicationConfiguration:Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketReplicationResult;->replicationConfiguration:Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;

    return-void
.end method


# virtual methods
.method public printResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketReplicationResult;->replicationConfiguration:Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/tencent/cos/xml/model/CosXmlResult;->printResult()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public xmlParser(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/cos/xml/model/bucket/GetBucketReplicationResult;->replicationConfiguration:Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;

    invoke-static {p1, p0}, Lcom/tencent/cos/xml/transfer/XmlParser;->parseReplicationConfiguration(Ljava/io/InputStream;Lcom/tencent/cos/xml/model/tag/ReplicationConfiguration;)V

    return-void
.end method
