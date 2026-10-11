.class public interface abstract Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addPointsAndIDsForMixture(JJJJJJJ)[I
.end method

.method public abstract addStrokePointsForMixture(Ljava/util/List;J)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;J)J"
        }
    .end annotation
.end method

.method public abstract addStrokePointsPointerForMixture(JJJJJ)J
.end method

.method public abstract deleteStrokesForMixture(JJ)I
.end method

.method public abstract doInteractForMixture(J)Ljava/lang/String;
.end method

.method public abstract doRecognizeForMixture(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPartContentForMixture(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTotalContentForMixture()Ljava/lang/String;
.end method

.method public abstract inDoSaveForMixture(Ljava/lang/String;)Z
.end method

.method public abstract incLoadByPathForMixture(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isChemValidForMixture(Ljava/lang/String;)Z
.end method

.method public abstract setWritingForMixture(Z)V
.end method
