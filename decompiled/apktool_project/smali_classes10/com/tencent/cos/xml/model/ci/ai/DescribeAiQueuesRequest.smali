.class public final Lcom/tencent/cos/xml/model/ci/ai/DescribeAiQueuesRequest;
.super Lcom/tencent/cos/xml/model/ci/BaseDescribeQueuesRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/ci/BaseDescribeQueuesRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/model/ci/BaseDescribeQueuesRequest;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/tencent/cos/xml/model/CosXmlRequest;->region:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    const-string p0, "/ai_queue"

    return-object p0
.end method
