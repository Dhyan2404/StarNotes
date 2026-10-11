.class public Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;
.super Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;
.source "SourceFile"


# instance fields
.field private endDecoration:Ljava/lang/String;

.field private move:Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;

.field private points:Ljava/lang/String;

.field private startDecoration:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;-><init>()V

    const-string v0, "Node"

    .line 2
    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->startDecoration:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->endDecoration:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;-><init>(Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;)V

    const-string p1, "Node"

    .line 5
    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->startDecoration:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->endDecoration:Ljava/lang/String;

    return-void
.end method

.method public static getResponseBean(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;
    .locals 2

    new-instance v0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;

    invoke-direct {v0, p0}, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getStartDecoration()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->startDecoration:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getEndDecoration()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->endDecoration:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getPoints()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->points:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getMixtureMoveBean()Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;

    invoke-direct {v1, p0}, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;)V

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAllPoint()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->points:Ljava/lang/String;

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->getAllPoint(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEndDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->endDecoration:Ljava/lang/String;

    return-object p0
.end method

.method public getMove()Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;

    return-object p0
.end method

.method public getStartDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;->startDecoration:Ljava/lang/String;

    return-object p0
.end method
