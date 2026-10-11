.class public Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/commonv2/callback/INoProguard;


# instance fields
.field private boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounding-box"
    .end annotation
.end field

.field private graphElementsBeanList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "elements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/graph/MixtureElementBean;",
            ">;"
        }
    .end annotation
.end field

.field private recognizePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation
.end field

.field private redo:Z

.field private undo:Z

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->graphElementsBeanList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->recognizePathList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method

.method public getGraphElementsBeanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/graph/MixtureElementBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->graphElementsBeanList:Ljava/util/List;

    return-object p0
.end method

.method public getRecognizePathList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->recognizePathList:Ljava/util/List;

    return-object p0
.end method

.method public isRedo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->redo:Z

    return p0
.end method

.method public isUndo()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->undo:Z

    return p0
.end method
