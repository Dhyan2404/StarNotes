.class public Lcom/tencent/cos/xml/model/ci/media/TemplateVoiceSeparateResponse$TemplateVoiceSeparateResponseVoiceSeparate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "VoiceSeparate"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateVoiceSeparateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateVoiceSeparateResponseVoiceSeparate"
.end annotation


# instance fields
.field public audioConfig:Lcom/tencent/cos/xml/model/ci/media/TemplateVoiceSeparate$AudioConfig;

.field public audioMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
