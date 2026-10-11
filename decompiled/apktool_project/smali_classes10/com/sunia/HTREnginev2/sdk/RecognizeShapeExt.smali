.class public Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;
    }
.end annotation


# instance fields
.field private recognizeShapeNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;",
            ">;"
        }
    .end annotation
.end field

.field private showAngleFontScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->recognizeShapeNoteList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clone()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;
    .locals 3

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;-><init>()V

    .line 3
    iget v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->showAngleFontScale:F

    iput v1, v0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->showAngleFontScale:F

    .line 4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->recognizeShapeNoteList:Ljava/util/List;

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->recognizeShapeNoteList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;

    .line 6
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->getRecognizeShapeNoteList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;

    move-result-object p0

    return-object p0
.end method

.method public getRecognizeShapeNoteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt$RecognizeShapeNote;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->recognizeShapeNoteList:Ljava/util/List;

    return-object p0
.end method

.method public getShowAngleFontScale()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->showAngleFontScale:F

    return p0
.end method

.method public setShowAngleFontScale(F)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizeShapeExt;->showAngleFontScale:F

    return-void
.end method
