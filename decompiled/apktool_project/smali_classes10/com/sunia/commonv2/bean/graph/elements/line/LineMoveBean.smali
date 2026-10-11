.class public Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private endDecoration:Ljava/lang/String;

.field private points:Ljava/lang/String;

.field private startDecoration:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Node"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->startDecoration:Ljava/lang/String;

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->endDecoration:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->getStartDecoration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->startDecoration:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->getEndDecoration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->endDecoration:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->getPoints()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->points:Ljava/lang/String;

    return-void
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

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->points:Ljava/lang/String;

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->getAllPoint(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEndDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->endDecoration:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineMoveBean;->startDecoration:Ljava/lang/String;

    return-object p0
.end method
