.class public Lcom/sunia/commonv2/bean/graph/elements/line/LineRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private endDecoration:Ljava/lang/String;

.field private kind:Ljava/lang/String;

.field private points:Ljava/lang/String;

.field private startDecoration:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Line"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineRequest;->kind:Ljava/lang/String;

    const-string v0, "Edge"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineRequest;->type:Ljava/lang/String;

    const-string v0, "none"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineRequest;->startDecoration:Ljava/lang/String;

    const-string v0, "arrow-head"

    iput-object v0, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineRequest;->endDecoration:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setPoints(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/commonv2/bean/graph/elements/line/LineRequest;->points:Ljava/lang/String;

    return-void
.end method
