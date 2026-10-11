.class public Lcom/sunia/nbiv2/sdk/NBIAxisPoint;
.super Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
.source "SourceFile"


# instance fields
.field public w:F


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    .line 2
    iput p3, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V
    .locals 4

    .line 3
    iget v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    iget v1, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    iget-wide v2, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NBIAxisPoint{w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
