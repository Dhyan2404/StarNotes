.class public Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private byMoveChanged:Z

.field private childrenTableList:Ljava/util/List;
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

.field private id:Ljava/lang/String;

.field private move:Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;

.field private path:Ljava/lang/String;

.field private rootTableId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "root_table"
    .end annotation
.end field

.field private userProperty:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userPropertys"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->childrenTableList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildrenTableList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->childrenTableList:Ljava/util/List;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getMove()Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->move:Lcom/sunia/commonv2/bean/graph/elements/table/TableMoveBean;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getRootTableId()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->rootTableId:I

    return p0
.end method

.method public getUserProperty()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->userProperty:Ljava/lang/Object;

    return-object p0
.end method

.method public isByMoveChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;->byMoveChanged:Z

    return p0
.end method
