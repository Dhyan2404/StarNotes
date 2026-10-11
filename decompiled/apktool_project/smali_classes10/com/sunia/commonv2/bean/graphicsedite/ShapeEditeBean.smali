.class public Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private label:Ljava/lang/String;

.field private pathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->type:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->pathList:Ljava/util/List;

    iput p1, p0, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->type:I

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getPathList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->pathList:Ljava/util/List;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->label:Ljava/lang/String;

    return-void
.end method
