.class public Lcom/tencent/cos/xml/model/ci/ai/PostVideoTargetTemplete;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public videoTargetRec:Lcom/tencent/cos/xml/model/ci/common/VideoTargetRec;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoTargetRec"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/ai/PostVideoTargetTemplete;->tag:Ljava/lang/String;

    return-void
.end method
