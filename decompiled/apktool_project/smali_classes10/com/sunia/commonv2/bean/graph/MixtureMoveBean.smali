.class public Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounding-box"
    .end annotation
.end field

.field private endDecoration:Ljava/lang/String;

.field private move:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private points:Ljava/lang/String;

.field private startDecoration:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method

.method public getEndDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->endDecoration:Ljava/lang/String;

    return-object p0
.end method

.method public getMove()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->move:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPoints()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->points:Ljava/lang/String;

    return-object p0
.end method

.method public getStartDecoration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->startDecoration:Ljava/lang/String;

    return-object p0
.end method
