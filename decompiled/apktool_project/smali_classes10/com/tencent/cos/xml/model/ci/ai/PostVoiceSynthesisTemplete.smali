.class public Lcom/tencent/cos/xml/model/ci/ai/PostVoiceSynthesisTemplete;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Request"
.end annotation


# instance fields
.field public codec:Ljava/lang/String;

.field public emotion:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public speed:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public voiceType:Ljava/lang/String;

.field public volume:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Tts"

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/ai/PostVoiceSynthesisTemplete;->tag:Ljava/lang/String;

    return-void
.end method
