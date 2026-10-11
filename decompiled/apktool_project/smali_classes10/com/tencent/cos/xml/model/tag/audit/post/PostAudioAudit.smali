.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit$AudioAuditConf;
    }
.end annotation


# instance fields
.field public conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit$AudioAuditConf;

.field public input:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit;->input:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;

    new-instance v0, Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit$AudioAuditConf;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit$AudioAuditConf;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit;->conf:Lcom/tencent/cos/xml/model/tag/audit/post/PostAudioAudit$AudioAuditConf;

    return-void
.end method
