.class public Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode$TemplateTranscodeAudio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/media/TemplateTranscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateTranscodeAudio"
.end annotation


# instance fields
.field public bitrate:Ljava/lang/String;

.field public channels:Ljava/lang/String;

.field public codec:Ljava/lang/String;

.field public keepTwoTracks:Ljava/lang/String;

.field public remove:Ljava/lang/String;

.field public sampleFormat:Ljava/lang/String;

.field public samplerate:Ljava/lang/String;

.field public switchTrack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
