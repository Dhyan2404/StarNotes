.class public Lcom/tencent/cos/xml/model/ci/media/SubmitSmartCoverJobResponse$SubmitSmartCoverJobResponseJobsDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitSmartCoverJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitSmartCoverJobResponseJobsDetail"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public creationTime:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public input:Lcom/tencent/cos/xml/model/ci/media/SubmitSmartCoverJobResponse$SubmitSmartCoverJobResponseInput;

.field public jobId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public operation:Lcom/tencent/cos/xml/model/ci/media/SubmitSmartCoverJobResponse$SubmitSmartCoverJobResponseOperation;

.field public queueId:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
