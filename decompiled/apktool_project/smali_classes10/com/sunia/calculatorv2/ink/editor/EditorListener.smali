.class public interface abstract Lcom/sunia/calculatorv2/ink/editor/EditorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onConvertedContentChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Lcom/sunia/calculatorv2/ink/model/IElement;)V
.end method

.method public abstract onError(Lcom/sunia/calculatorv2/ink/editor/IEditor;Ljava/lang/Throwable;)V
.end method

.method public abstract onPreheated(Lcom/sunia/calculatorv2/ink/editor/IEditor;J)V
.end method

.method public abstract onSelectionChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/editor/IEditor;",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/graphics/ITrace;",
            ">;FF)V"
        }
    .end annotation
.end method

.method public abstract onTraceListChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/editor/IEditor;",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/graphics/ITrace;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUnconvertedContentChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Lcom/sunia/calculatorv2/ink/model/IElement;Z)V
.end method
