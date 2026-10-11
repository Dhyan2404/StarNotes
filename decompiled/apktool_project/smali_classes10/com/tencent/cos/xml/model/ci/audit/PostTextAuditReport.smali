.class public Lcom/tencent/cos/xml/model/ci/audit/PostTextAuditReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation


# instance fields
.field public contentType:I

.field public jobId:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public moderationTime:Ljava/lang/String;

.field public suggestedLabel:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/cos/xml/model/ci/audit/PostTextAuditReport;->contentType:I

    return-void
.end method
