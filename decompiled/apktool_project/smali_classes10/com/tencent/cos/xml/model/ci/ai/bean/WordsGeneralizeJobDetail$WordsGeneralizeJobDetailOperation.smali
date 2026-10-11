.class public Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobDetail$WordsGeneralizeJobDetailOperation;
.super Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->FROM:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordsGeneralizeJobDetailOperation"
.end annotation


# instance fields
.field public wordsGeneralizeResult:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobDetail$WordsGeneralizeResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;-><init>()V

    return-void
.end method
