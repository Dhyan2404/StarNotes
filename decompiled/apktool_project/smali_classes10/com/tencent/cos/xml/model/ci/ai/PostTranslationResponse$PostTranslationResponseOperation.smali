.class public Lcom/tencent/cos/xml/model/ci/ai/PostTranslationResponse$PostTranslationResponseOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/PostTranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostTranslationResponseOperation"
.end annotation


# instance fields
.field public aITranslateResult:Lcom/tencent/cos/xml/model/ci/ai/PostTranslationResponse$PostTranslationResponseAITranslateResult;

.field public jobLevel:Ljava/lang/String;

.field public output:Lcom/tencent/cos/xml/model/ci/ai/PostTranslation$PostTranslationOutput;

.field public translation:Lcom/tencent/cos/xml/model/ci/ai/PostTranslation$PostTranslationTranslation;

.field public userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
