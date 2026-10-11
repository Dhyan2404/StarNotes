.class public Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$Watermark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Watermark"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Watermark"
.end annotation


# instance fields
.field public dx:Ljava/lang/String;

.field public dy:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public image:Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$TemplateWatermarkImage;

.field public locMode:Ljava/lang/String;

.field public pos:Ljava/lang/String;

.field public slideConfig:Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$TemplateWatermarkSlideConfig;

.field public startTime:Ljava/lang/String;

.field public text:Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$TemplateWatermarkText;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
