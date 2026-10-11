.class public interface abstract Lcom/sunia/commonv2/callback/InputViewListenerV2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract afterPointChanged(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)V
.end method

.method public abstract onLongClick(FF)V
.end method

.method public abstract onPointSelectorChanged(Z)V
.end method

.method public abstract redo(Lcom/sunia/commonv2/bean/PathAction;)V
.end method

.method public abstract resetRecognize(Ljava/util/List;Lcom/sunia/commonv2/bean/PathAction;Lcom/sunia/HTREnginev2/sdk/RecognizePath;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;",
            "Lcom/sunia/commonv2/bean/PathAction;",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ")V"
        }
    .end annotation
.end method

.method public abstract selectorChange(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showMenu(IILandroid/graphics/RectF;)V
.end method

.method public abstract undo(Lcom/sunia/commonv2/bean/PathAction;)V
.end method
