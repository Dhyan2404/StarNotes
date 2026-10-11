.class public Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResponse$DetectLabelResponseLabelsItem;,
        Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResponse$DetectLabelResponseLabels;
    }
.end annotation


# instance fields
.field public albumLabels:Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResponse$DetectLabelResponseLabels;

.field public cameraLabels:Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResponse$DetectLabelResponseLabels;

.field public newsLabels:Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResponse$DetectLabelResponseLabels;

.field public webLabels:Lcom/tencent/cos/xml/model/ci/ai/DetectLabelResponse$DetectLabelResponseLabels;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
