.class public Lcom/tencent/cos/xml/model/tag/audit/get/GetWebPageAuditJobResponse$WebPageAuditJobsDetail;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "JobsDetail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/get/GetWebPageAuditJobResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPageAuditJobsDetail"
.end annotation


# instance fields
.field public highlightHtml:Ljava/lang/String;

.field public imageResults:Lcom/tencent/cos/xml/model/tag/audit/get/GetWebPageAuditJobResponse$ImageResults;

.field public labels:Lcom/tencent/cos/xml/model/tag/audit/get/GetWebPageAuditJobResponse$Labels;

.field public pageCount:I

.field public suggestion:I

.field public textResults:Lcom/tencent/cos/xml/model/tag/audit/get/GetWebPageAuditJobResponse$TextResults;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditJobsDetail;-><init>()V

    return-void
.end method
