.class public Lcom/tencent/cos/xml/model/ci/media/TemplateConcat$TemplateConcatVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateConcatVideo"
.end annotation


# instance fields
.field public bitrate:Ljava/lang/String;

.field public codec:Ljava/lang/String;

.field public crf:Ljava/lang/String;

.field public fps:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public remove:Ljava/lang/String;

.field public rotate:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
