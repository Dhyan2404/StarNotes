.class public Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/INoProguard;


# instance fields
.field private boundBox:[F

.field private engine:J

.field private metrics:[F

.field private nodeID:I

.field private param:I

.field private parentID:I

.field private pbb:[F

.field private strText:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(JILjava/lang/String;[FII[FI[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->engine:J

    iput p3, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->type:I

    iput-object p4, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->strText:Ljava/lang/String;

    iput-object p5, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->boundBox:[F

    iput p6, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->nodeID:I

    iput p7, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->parentID:I

    iput-object p8, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->pbb:[F

    iput p9, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->param:I

    iput-object p10, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->metrics:[F

    return-void
.end method


# virtual methods
.method public getBoundBox()[F
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->boundBox:[F

    return-object p0
.end method

.method public getEngine()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->engine:J

    return-wide v0
.end method

.method public getMetrics()[F
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->metrics:[F

    return-object p0
.end method

.method public getNodeID()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->nodeID:I

    return p0
.end method

.method public getParam()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->param:I

    return p0
.end method

.method public getParentID()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->parentID:I

    return p0
.end method

.method public getPbb()[F
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->pbb:[F

    return-object p0
.end method

.method public getStrText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->strText:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->type:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GraphRenderBean{engine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->engine:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->strText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", boundBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->boundBox:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nodeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->nodeID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parentID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->parentID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pbb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->pbb:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->param:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", metrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;->metrics:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
