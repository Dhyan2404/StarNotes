.class public Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseJobsDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLiveVideoAuditResponseJobsDetail"
.end annotation


# instance fields
.field public adsInfo:Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseInfo;

.field public audioSection:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseAudioSection;",
            ">;"
        }
    .end annotation
.end field

.field public code:Ljava/lang/String;

.field public creationTime:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public jobId:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public listInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditListInfo;

.field public meaninglessInfo:Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseInfo;

.field public message:Ljava/lang/String;

.field public pornInfo:Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseInfo;

.field public result:I

.field public snapshot:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public snapshotCount:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userInfo:Lcom/tencent/cos/xml/model/ci/audit/GetLiveVideoAuditResponse$GetLiveVideoAuditResponseUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
