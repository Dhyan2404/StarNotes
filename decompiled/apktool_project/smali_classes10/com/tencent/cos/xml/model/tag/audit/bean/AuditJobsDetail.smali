.class public Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/BaseAuditJobsDetail;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public forbidState:I

.field public label:Ljava/lang/String;

.field public listInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditListInfo;

.field public message:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public subLabel:Ljava/lang/String;

.field public userInfo:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/BaseAuditJobsDetail;-><init>()V

    return-void
.end method
