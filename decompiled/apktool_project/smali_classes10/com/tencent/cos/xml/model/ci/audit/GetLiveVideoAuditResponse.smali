.class public Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$AudioSectionInfoLibResults;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$SnapshotInfoOcrResultsLocation;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$SnapshotInfoObjectResults;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$SnapshotInfoOcrResults;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$SnapshotInfoLibResults;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSectionInfo;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseSnapshotInfo;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSection;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseSnapshot;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseInfo;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseUserInfo;,
        Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail;
    }
.end annotation


# instance fields
.field public jobsDetail:Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail;

.field public requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
