.class public Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;
.super Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;
.source "SourceFile"


# instance fields
.field private label:Ljava/lang/String;

.field private move:Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;


# direct methods
.method private constructor <init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;-><init>(Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;->label:Ljava/lang/String;

    return-void
.end method

.method public static getResponseBean(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;
    .locals 2

    new-instance v0, Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;

    invoke-direct {v0, p0}, Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;->label:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getMixtureMoveBean()Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;

    invoke-direct {v1, p0}, Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;)V

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getMove()Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/text/TextResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;

    return-object p0
.end method
