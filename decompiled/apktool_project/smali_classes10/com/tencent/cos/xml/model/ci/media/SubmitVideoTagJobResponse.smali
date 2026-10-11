.class public Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseBBox;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseDetailPerSecond;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseObjects;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseObjectTags;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseActionTags;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponsePersonTags;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponsePlaceTags;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseTags;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseData;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseStreamData;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseVideoTagResult;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseOperation;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseInput;,
        Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseJobsDetail;
    }
.end annotation


# instance fields
.field public jobsDetail:Lcom/tencent/cos/xml/model/ci/media/SubmitVideoTagJobResponse$SubmitVideoTagJobResponseJobsDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
