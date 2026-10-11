.class public Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SentenceDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SentenceDetail"
.end annotation


# instance fields
.field public endMs:Ljava/lang/String;

.field public finalSentence:Ljava/lang/String;

.field public sliceSentence:Ljava/lang/String;

.field public speakerId:Ljava/lang/String;

.field public speechSpeed:Ljava/lang/String;

.field public startMs:Ljava/lang/String;

.field public words:Ljava/util/List;
    .annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlElement;
        flatListNote = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SentenceWords;",
            ">;"
        }
    .end annotation
.end field

.field public wordsNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
