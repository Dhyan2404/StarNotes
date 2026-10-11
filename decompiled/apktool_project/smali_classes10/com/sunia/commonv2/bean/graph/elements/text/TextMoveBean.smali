.class public Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bounding-box"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->getBoundingBox()Lcom/sunia/commonv2/bean/BoundingBox;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-void
.end method


# virtual methods
.method public getBoundingBox()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/text/TextMoveBean;->boundingBox:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method
