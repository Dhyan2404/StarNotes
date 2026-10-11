.class public interface abstract Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addPoints(Ljava/util/List;)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)[I"
        }
    .end annotation
.end method

.method public abstract addStrokePoints(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract clearContent()V
.end method

.method public abstract close()V
.end method

.method public abstract commonInterface(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract commonInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract deleteStrokePoints(I)Z
.end method

.method public abstract doPageRecognize()V
.end method

.method public abstract doPageRecognize(Z)V
.end method

.method public abstract doPointsToBitmap(Ljava/util/List;)Lcom/sunia/commonv2/bean/PointsToBitmapResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;)",
            "Lcom/sunia/commonv2/bean/PointsToBitmapResult;"
        }
    .end annotation
.end method

.method public abstract editorPause()V
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getMixtureEditorV2()Lcom/sunia/HTREnginev2/sdk/editor/MixtureEditorV2;
.end method

.method public abstract incRecDoSave(Ljava/lang/String;)Z
.end method

.method public abstract incRecLoadByPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;
.end method

.method public abstract obtainPoint(FFJI)Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
.end method

.method public abstract open()Z
.end method

.method public abstract open(Lcom/sunia/HTREnginev2/sdk/Params;)Z
.end method

.method public abstract pictureProcess(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setCharacterSet([Ljava/lang/String;)V
.end method

.method public abstract setReferWords(Ljava/lang/String;I)V
.end method

.method public abstract setSyntheseWords(Ljava/lang/String;I)V
.end method

.method public abstract shapeEdite(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract syncRecognize(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract updateParams(Lcom/sunia/HTREnginev2/sdk/Params;)Z
.end method

.method public abstract waitForIdle()V
.end method
