.class public Lcom/sunia/commonv2/bean/graph/MixtureElementBean;
.super Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;
.source "SourceFile"


# instance fields
.field private childrenTableLevel1List:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "children_table"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;",
            ">;"
        }
    .end annotation
.end field

.field private endDecoration:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private mixtureMoveBean:Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "move"
    .end annotation
.end field

.field private parentId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_table"
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private points:Ljava/lang/String;

.field private startDecoration:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->childrenTableLevel1List:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildrenTableLevel1List()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->childrenTableLevel1List:Ljava/util/List;

    return-object p0
.end method

.method public getEndDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->endDecoration:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getMixtureMoveBean()Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->mixtureMoveBean:Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;

    return-object p0
.end method

.method public getParentId()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->parentId:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPoints()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->points:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->startDecoration:Ljava/lang/String;

    return-object p0
.end method
