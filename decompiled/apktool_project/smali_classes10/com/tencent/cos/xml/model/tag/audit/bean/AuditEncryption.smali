.class public Lcom/tencent/cos/xml/model/tag/audit/bean/AuditEncryption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Encryption"
.end annotation


# instance fields
.field public algorithm:Ljava/lang/String;

.field public iV:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public keyId:Ljava/lang/String;

.field public keyType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditEncryption;->keyId:Ljava/lang/String;

    return-void
.end method
