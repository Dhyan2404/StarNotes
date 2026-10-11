.class public Lcom/sunia/commonv2/bean/PartieWords;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7f3fe3ce372f0521L


# instance fields
.field private bounding_box:Lcom/sunia/commonv2/bean/BoundingBox;

.field private candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private correct_rate:D

.field private correct_rates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private first_char:I

.field private id:I

.field private label:Ljava/lang/String;

.field private last_char:I

.field private strokeIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stroke_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->label:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/sunia/commonv2/bean/PartieWords;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->label:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/sunia/commonv2/bean/PartieWords;->id:I

    .line 7
    iput-object p3, p0, Lcom/sunia/commonv2/bean/PartieWords;->candidates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBounding_box()Lcom/sunia/commonv2/bean/BoundingBox;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->bounding_box:Lcom/sunia/commonv2/bean/BoundingBox;

    return-object p0
.end method

.method public getCandidates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->candidates:Ljava/util/List;

    return-object p0
.end method

.method public getCorrect_rate()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/PartieWords;->correct_rate:D

    return-wide v0
.end method

.method public getCorrect_rates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->correct_rates:Ljava/util/List;

    return-object p0
.end method

.method public getFirst_char()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->first_char:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->id:I

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getLast_char()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->last_char:I

    return p0
.end method

.method public getStrokeIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->strokeIds:Ljava/util/List;

    return-object p0
.end method

.method public setBounding_box(Lcom/sunia/commonv2/bean/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->bounding_box:Lcom/sunia/commonv2/bean/BoundingBox;

    return-void
.end method

.method public setCandidates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->candidates:Ljava/util/List;

    return-void
.end method

.method public setCorrect_rate(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->correct_rate:D

    return-void
.end method

.method public setFirst_char(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->first_char:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->id:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->label:Ljava/lang/String;

    return-void
.end method

.method public setLast_char(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/PartieWords;->last_char:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartieWords{label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/commonv2/bean/PartieWords;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/PartieWords;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", candidates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/commonv2/bean/PartieWords;->candidates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstChar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/PartieWords;->first_char:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastChar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/commonv2/bean/PartieWords;->last_char:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boundingBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/commonv2/bean/PartieWords;->bounding_box:Lcom/sunia/commonv2/bean/BoundingBox;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
