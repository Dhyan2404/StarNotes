.class public Lcom/tencent/cos/xml/model/tag/audit/get/GetAudioAuditJobResponse$AudioAuditJobsDetail;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/get/GetAudioAuditJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioAuditJobsDetail"
.end annotation


# instance fields
.field public adsInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetAudioAuditJobResponse$AudioAuditScenarioInfo;

.field public audioText:Ljava/lang/String;

.field public bucketId:Ljava/lang/String;

.field public cosHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public object:Ljava/lang/String;

.field public politicsInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetAudioAuditJobResponse$AudioAuditScenarioInfo;

.field public pornInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetAudioAuditJobResponse$AudioAuditScenarioInfo;

.field public region:Ljava/lang/String;

.field public section:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/tag/audit/get/GetAudioAuditJobResponse$AudioSection;",
            ">;"
        }
    .end annotation
.end field

.field public terrorismInfo:Lcom/tencent/cos/xml/model/tag/audit/get/GetAudioAuditJobResponse$AudioAuditScenarioInfo;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;-><init>()V

    return-void
.end method
