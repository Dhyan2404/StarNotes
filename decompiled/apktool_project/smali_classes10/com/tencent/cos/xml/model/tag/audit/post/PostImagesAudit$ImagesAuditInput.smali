.class public Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit$ImagesAuditInput;
.super Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/audit/post/PostImagesAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagesAuditInput"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public encryption:Lcom/tencent/cos/xml/model/tag/audit/bean/AuditEncryption;

.field public interval:I
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        ignoreZero = true
    .end annotation
.end field

.field public largeImageDetect:I

.field public maxFrames:I
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        ignoreZero = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/tag/audit/bean/AuditInput;-><init>()V

    return-void
.end method
