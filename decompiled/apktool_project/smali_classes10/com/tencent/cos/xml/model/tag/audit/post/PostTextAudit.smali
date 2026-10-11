.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditInput;,
        Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditConf;
    }
.end annotation


# instance fields
.field public conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditConf;

.field public input:Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditInput;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditInput;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditInput;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditInput;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditConf;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditConf;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostTextAudit$TextAuditConf;

    return-void
.end method
