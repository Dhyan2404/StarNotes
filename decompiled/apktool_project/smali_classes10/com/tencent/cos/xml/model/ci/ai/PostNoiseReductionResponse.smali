.class public Lcom/tencent/cos/xml/model/ci/ai/PostNoiseReductionResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/ai/PostNoiseReductionResponse$PostNoiseReductionResponseOperation;,
        Lcom/tencent/cos/xml/model/ci/ai/PostNoiseReductionResponse$PostNoiseReductionResponseInput;,
        Lcom/tencent/cos/xml/model/ci/ai/PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail;
    }
.end annotation


# instance fields
.field public jobsDetail:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
        ignoreListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/ai/PostNoiseReductionResponse$PostNoiseReductionResponseJobsDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
