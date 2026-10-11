.class public Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark$TemplateWatermarkImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateWatermarkImage"
.end annotation


# instance fields
.field public background:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public transparency:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
