.class public Lcom/tencent/cos/xml/model/ci/media/TemplateVoiceSeparateResponse$TemplateVoiceSeparateResponseTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Template"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateVoiceSeparateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateVoiceSeparateResponseTemplate"
.end annotation


# instance fields
.field public bucketId:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public templateId:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public voiceSeparate:Lcom/tencent/cos/xml/model/ci/media/TemplateVoiceSeparateResponse$TemplateVoiceSeparateResponseVoiceSeparate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
