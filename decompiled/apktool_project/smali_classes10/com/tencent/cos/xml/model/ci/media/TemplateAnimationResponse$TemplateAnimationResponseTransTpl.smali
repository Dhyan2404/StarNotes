.class public Lcom/tencent/cos/xml/model/ci/media/TemplateAnimationResponse$TemplateAnimationResponseTransTpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "TransTpl"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateAnimationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateAnimationResponseTransTpl"
.end annotation


# instance fields
.field public container:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimationResponse$TransTplContainer;

.field public timeInterval:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimationResponse$TransTplTimeInterval;

.field public video:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimationResponse$TransTplVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
