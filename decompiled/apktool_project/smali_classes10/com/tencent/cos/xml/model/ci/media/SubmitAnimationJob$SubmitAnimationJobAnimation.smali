.class public Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Animation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitAnimationJobAnimation"
.end annotation


# instance fields
.field public container:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationContainer;

.field public timeInterval:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationTimeInterval;

.field public video:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
