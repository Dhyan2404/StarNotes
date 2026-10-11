.class public Lcom/sunia/commonv2/bean/graph/elements/graph/GraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private kind:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Node"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphRequest;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphRequest;->kind:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphRequest;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphRequest;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphRequest;->path:Ljava/lang/String;

    return-void
.end method
