.class public Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounding-box"
    .end annotation
.end field

.field private byMoveChanged:Z

.field private connectedBeanList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connected"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/graph/elements/graph/GraphConnectedBean;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private kind:Ljava/lang/String;

.field private lineID:Ljava/lang/String;

.field private selected:Z

.field private type:Ljava/lang/String;

.field private userProperty:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userPropertys"
    .end annotation
.end field

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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getBoundingBox()Lcom/sunia/commonv2/bean/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    .line 4
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->isByMoveChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->byMoveChanged:Z

    .line 5
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getId()I

    move-result v0

    iput v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->id:I

    .line 6
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getKind()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->kind:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getLineID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->lineID:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->selected:Z

    .line 9
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->type:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getUserProperty()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->userProperty:Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getConnectedBeanList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->connectedBeanList:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getXRadius()F

    move-result v0

    iput v0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->xRadius:F

    .line 13
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->getYRadius()F

    move-result p1

    iput p1, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->yRadius:F

    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method

.method public getConnectedBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/graph/elements/graph/GraphConnectedBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->connectedBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->id:I

    return p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public getLineID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->lineID:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getUserProperty()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->userProperty:Ljava/lang/Object;

    return-object p0
.end method

.method public getXRadius()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->xRadius:F

    return p0
.end method

.method public getYRadius()F
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->yRadius:F

    return p0
.end method

.method public isByMoveChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->byMoveChanged:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;->selected:Z

    return p0
.end method
