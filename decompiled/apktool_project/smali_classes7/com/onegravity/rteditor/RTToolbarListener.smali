.class public interface abstract Lcom/onegravity/rteditor/RTToolbarListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCaptureImage()V
.end method

.method public abstract onClearFormatting()V
.end method

.method public abstract onCreateLink()V
.end method

.method public abstract onEffectSelected(Lcom/onegravity/rteditor/effects/Effect;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "C::",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>(",
            "Lcom/onegravity/rteditor/effects/Effect<",
            "TV;TC;>;TV;)V"
        }
    .end annotation
.end method

.method public abstract onPickImage()V
.end method

.method public abstract onRedo()V
.end method

.method public abstract onUndo()V
.end method
