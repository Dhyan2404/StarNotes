.class public interface abstract Lcom/sunia/HTREnginev2/sdk/editor/RecognizeEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract doAssociate(Ljava/lang/String;)V
.end method

.method public abstract doChemicalStructure(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract doChemicalStructureV2(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract doSynthese(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract exportGraphMl()Ljava/lang/String;
.end method

.method public abstract updateRecognizeWord(ILjava/lang/String;)V
.end method
