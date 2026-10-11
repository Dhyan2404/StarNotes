.class public Lcom/tencent/cos/xml/model/tag/PutBucketDPState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation


# instance fields
.field public DocBucket:Lcom/tencent/cos/xml/model/tag/BucketDocumentPreviewState;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
    .end annotation
.end field

.field public RequestId:Ljava/lang/String;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
