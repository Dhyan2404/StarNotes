.class public Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;
.super Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;
.source "SourceFile"


# instance fields
.field private move:Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;

.field private path:Ljava/lang/String;

.field private xRadius:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xradius"
    .end annotation
.end field

.field private yRadius:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "yradius"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;-><init>(Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;)V

    return-void
.end method

.method public static getResponseBean(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;
    .locals 3

    new-instance v0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;

    invoke-direct {v0, p0}, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getMixtureMoveBean()Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;

    invoke-direct {v2, v1}, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;)V

    iput-object v2, v0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getXRadius()F

    move-result v1

    iput v1, v0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->xRadius:F

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getYRadius()F

    move-result p0

    iput p0, v0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->yRadius:F

    return-object v0
.end method


# virtual methods
.method public getMove()Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getXRadius()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->xRadius:F

    return p0
.end method

.method public getYRadius()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;->yRadius:F

    return p0
.end method
