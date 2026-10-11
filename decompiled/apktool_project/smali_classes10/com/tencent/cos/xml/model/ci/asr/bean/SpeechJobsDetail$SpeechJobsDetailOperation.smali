.class public Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SpeechJobsDetailOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechJobsDetailOperation"
.end annotation


# instance fields
.field public jobLevel:I

.field public output:Lcom/tencent/cos/xml/model/tag/Locator;

.field public speechRecognition:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechRecognition;

.field public speechRecognitionResult:Lcom/tencent/cos/xml/model/ci/asr/bean/SpeechJobsDetail$SpeechRecognitionResult;

.field public templateId:Ljava/lang/String;

.field public userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
