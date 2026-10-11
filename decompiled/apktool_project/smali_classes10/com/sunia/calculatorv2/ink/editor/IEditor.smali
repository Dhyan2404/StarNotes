.class public interface abstract Lcom/sunia/calculatorv2/ink/editor/IEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addEditorListener(Lcom/sunia/calculatorv2/ink/editor/EditorListener;)V
.end method

.method public abstract canRedo()Z
.end method

.method public abstract canUndo()Z
.end method

.method public abstract clear()V
.end method

.method public abstract clearSelection()V
.end method

.method public abstract close()V
.end method

.method public abstract convert()V
.end method

.method public abstract copy(Landroid/content/ClipboardManager;)Z
.end method

.method public abstract getConvertedElement()Lcom/sunia/calculatorv2/ink/model/IElement;
.end method

.method public abstract getCopyAndPasteMode()I
.end method

.method public abstract getElementsToCopy()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getHistory()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getSolverContext()Lcom/sunia/calculatorv2/ink/solver/SolverContext;
.end method

.method public abstract getStyleSheet()Lcom/sunia/calculatorv2/ink/graphics/IStyleSheet;
.end method

.method public abstract getToolForType(I)Lcom/sunia/calculatorv2/ink/editor/PointerTool;
.end method

.method public abstract getTraces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUndoStackIndex()I
.end method

.method public abstract isAutoConversionEnabled()Z
.end method

.method public abstract isCopyAndPasteModeEnabled()Z
.end method

.method public abstract isMultiplivativeDotEnabled()Z
.end method

.method public abstract moveUndoStackIndex(I)V
.end method

.method public abstract paste(FFLandroid/content/ClipboardManager;)Z
.end method

.method public abstract redo()V
.end method

.method public abstract removeEditorListener(Lcom/sunia/calculatorv2/ink/editor/EditorListener;)V
.end method

.method public abstract setAnalyzerMode(Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;)V
.end method

.method public abstract setAutoConversionDelayMilliseconds(J)V
.end method

.method public abstract setAutoConversionEnabled(Z)V
.end method

.method public abstract setCopyAndPasteMode(I)V
.end method

.method public abstract setCopyAndPasteModeEnabled(Z)V
.end method

.method public abstract setCopyBgColor(I)V
.end method

.method public abstract setEditorViewBgColor(I)V
.end method

.method public abstract setGestureEnabled(Z)V
.end method

.method public abstract setMathConfig(Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;)V
.end method

.method public abstract setMultiplivativeDotEnabled(Z)V
.end method

.method public abstract setPredictTrajectory(Z)V
.end method

.method public abstract setRenderTarget(Lcom/sunia/HTREnginev2/c1;)V
.end method

.method public abstract setSolverContext(Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V
.end method

.method public abstract setSolverEnabled(Z)V
.end method

.method public abstract setToolForType(ILcom/sunia/calculatorv2/ink/editor/PointerTool;)V
.end method

.method public abstract undo()V
.end method
