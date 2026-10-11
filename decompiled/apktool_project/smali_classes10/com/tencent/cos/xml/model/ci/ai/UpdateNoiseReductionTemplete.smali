.class public Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTemplete;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public noiseReduction:Lcom/tencent/cos/xml/model/ci/common/NoiseReduction;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NoiseReduction"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/ai/UpdateNoiseReductionTemplete;->tag:Ljava/lang/String;

    return-void
.end method
