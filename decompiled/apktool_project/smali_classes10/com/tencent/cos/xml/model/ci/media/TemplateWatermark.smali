.class public Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$TemplateWatermarkSlideConfig;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$TemplateWatermarkImage;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$TemplateWatermarkText;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$Watermark;
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public watermark:Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$Watermark;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Watermark"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark;->tag:Ljava/lang/String;

    return-void
.end method
