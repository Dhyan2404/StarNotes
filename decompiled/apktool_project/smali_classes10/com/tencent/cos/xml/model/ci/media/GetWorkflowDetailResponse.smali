.class public Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseInputObjectInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseJudgementResult;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseSpriteObjectInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseFormat;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseAudio;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseVideo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseObjectInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseImageInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseMediaInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseBasicInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseJudgementInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseResultInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseFileInfo;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseTasks;,
        Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseWorkflowExecution;
    }
.end annotation


# instance fields
.field public requestId:Ljava/lang/String;

.field public workflowExecution:Lcom/tencent/cos/xml/model/ci/media/GetWorkflowDetailResponse$GetWorkflowDetailResponseWorkflowExecution;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
