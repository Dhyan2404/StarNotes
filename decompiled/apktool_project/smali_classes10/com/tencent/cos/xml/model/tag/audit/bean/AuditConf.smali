.class public Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Conf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf$Freeze;
    }
.end annotation


# instance fields
.field public async:I

.field public bizType:Ljava/lang/String;

.field public callback:Ljava/lang/String;

.field public callbackType:I
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        ignoreZero = true
    .end annotation
.end field

.field public detectType:Ljava/lang/String;

.field public freeze:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditConf$Freeze;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
