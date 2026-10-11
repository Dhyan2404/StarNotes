.class public final Lcom/tencent/cos/xml/model/ci/asr/DescribeSpeechQueuesRequest;
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
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/model/ci/BaseDescribeQueuesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;
    .locals 0

    const-string p0, "/asrqueue"

    return-object p0
.end method
