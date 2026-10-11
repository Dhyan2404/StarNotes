.class public Lcom/tencent/cos/xml/model/ci/media/TemplateAnimationResponse$TransTplVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateAnimationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransTplVideo"
.end annotation


# instance fields
.field public animateFramesPerSecond:Ljava/lang/String;

.field public animateOnlyKeepKeyFrame:Ljava/lang/String;

.field public animateTimentervalOfFrame:Ljava/lang/String;

.field public codec:Ljava/lang/String;

.field public fps:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public quality:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
