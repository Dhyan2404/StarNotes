.class Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation$$XmlAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/qcloudxml/core/ChildElementBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation$$XmlAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/qcloud/qcloudxml/core/ChildElementBinder<",
        "Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation$$XmlAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation$$XmlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation$$XmlAdapter$2;->this$0:Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation$$XmlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2
    const-class p0, Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationVideo;

    const-string p3, "Video"

    invoke-static {p1, p0, p3}, Lcom/tencent/qcloud/qcloudxml/core/QCloudXml;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationVideo;

    iput-object p0, p2, Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation;->video:Lcom/tencent/cos/xml/model/ci/media/TemplateAnimation$TemplateAnimationVideo;

    return-void
.end method

.method public bridge synthetic fromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation$$XmlAdapter$2;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/tencent/cos/xml/model/ci/media/SubmitAnimationJob$SubmitAnimationJobAnimation;Ljava/lang/String;)V

    return-void
.end method
