.class public Lcom/tencent/cos/xml/model/ci/ai/VocalScoreResponse$VocalScoreResponseVocalScoreResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "VocalScoreResult"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/VocalScoreResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VocalScoreResponseVocalScoreResult"
.end annotation


# instance fields
.field public pitchScore:Lcom/tencent/cos/xml/model/ci/ai/VocalScoreResponse$VocalScoreResponsePitchScore;

.field public rhythemScore:Lcom/tencent/cos/xml/model/ci/ai/VocalScoreResponse$VocalScoreResponseRhythemScore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
