.class public Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizeShapeNote"
.end annotation


# instance fields
.field public note:Ljava/lang/String;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->x:F

    iput p2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->y:F

    iput-object p3, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->note:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;
    .locals 3

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;

    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->x:F

    iget v2, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->y:F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->note:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;-><init>(FFLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;

    move-result-object p0

    return-object p0
.end method
