.class public Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationTimeInterval;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationContainer;,
        Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationVideo;
    }
.end annotation


# instance fields
.field public container:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationContainer;

.field public name:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public timeInterval:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationTimeInterval;

.field public video:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationVideo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Animation"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation;->tag:Ljava/lang/String;

    return-void
.end method
