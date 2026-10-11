.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$Snapshot;,
        Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;,
        Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;
    }
.end annotation


# instance fields
.field public conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

.field public input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditInput;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostVideoAudit$VideoAuditConf;

    return-void
.end method
