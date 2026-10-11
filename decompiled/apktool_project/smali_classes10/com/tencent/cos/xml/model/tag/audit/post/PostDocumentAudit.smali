.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit$DocumentAuditInput;
    }
.end annotation


# instance fields
.field public conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

.field public input:Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit$DocumentAuditInput;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit$DocumentAuditInput;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit$DocumentAuditInput;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit$DocumentAuditInput;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;

    return-void
.end method
