.class public Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean;
    method = .enum Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;->TO:Lcom/tencent/qcloud/qcloudxml/annoation/XmlBean$GenerateMethod;
    name = "Operation"
.end annotation


# instance fields
.field public jobLevel:I

.field public userData:Ljava/lang/String;

.field public wordsGeneralize:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;-><init>()V

    iput-object v0, p0, Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralizeJobOperation;->wordsGeneralize:Lcom/tencent/cos/xml/model/ci/ai/bean/WordsGeneralize;

    return-void
.end method
