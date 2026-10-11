.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit$DocumentAuditInput;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/post/PostDocumentAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentAuditInput"
.end annotation


# instance fields
.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;-><init>()V

    return-void
.end method
