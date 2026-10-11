.class public Lcom/tencent/cos/xml/model/tag/MediaInfo$Audio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/tag/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation


# instance fields
.field public bitrate:F

.field public channel:I

.field public channelLayout:Ljava/lang/String;

.field public codecLongName:Ljava/lang/String;

.field public codecName:Ljava/lang/String;

.field public codecTag:Ljava/lang/String;

.field public codecTagString:Ljava/lang/String;

.field public codecTimeBase:Ljava/lang/String;

.field public duration:F

.field public index:I

.field public language:Ljava/lang/String;

.field public sampleFmt:Ljava/lang/String;

.field public sampleRate:F

.field public startTime:F

.field public timebase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
