.class public Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/MixtureMoveBean;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphMoveBean;->path:Ljava/lang/String;

    return-object p0
.end method
