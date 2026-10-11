.class public Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;
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

.field private move:Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;

.field private parentId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_table"
    .end annotation
.end field

.field private path:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->childrenTableLevel1List:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;-><init>(Lcom/sunia/commonv2/bean/graph/elements/base/ElementBeanBase;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->childrenTableLevel1List:Ljava/util/List;

    return-void
.end method

.method public static getResponseBean(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;
    .locals 2

    new-instance v0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;

    invoke-direct {v0, p0}, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureElementBean;)V

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getChildrenTableLevel1List()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->childrenTableLevel1List:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getParentId()I

    move-result v1

    iput v1, v0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->parentId:I

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graph/MixtureElementBean;->getMixtureMoveBean()Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;

    invoke-direct {v1, p0}, Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;-><init>(Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;)V

    iput-object v1, v0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;

    :cond_0
    return-object v0
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

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->childrenTableLevel1List:Ljava/util/List;

    return-object p0
.end method

.method public getMove()Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->move:Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;

    return-object p0
.end method

.method public getParentId()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->parentId:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/TableResponse;->path:Ljava/lang/String;

    return-object p0
.end method
