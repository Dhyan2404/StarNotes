package com.sunia.calculatorv2.ink.editor;

import android.content.ClipboardManager;
import android.graphics.Matrix;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.InterfaceC13547c1;
import com.sunia.calculatorv2.ink.analyzer.GenericRecognizer;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.calculatorv2.ink.model.IElement;
import com.sunia.calculatorv2.ink.recognizer.Recognizer;
import com.sunia.calculatorv2.ink.solver.SolverContext;
import java.util.List;

/* loaded from: classes10.dex */
public interface IEditor {
    void addEditorListener(EditorListener editorListener);

    boolean canRedo();

    boolean canUndo();

    void clear();

    void clearSelection();

    void close();

    void convert();

    boolean copy(ClipboardManager clipboardManager);

    IElement getConvertedElement();

    int getCopyAndPasteMode();

    List<List<? extends IElement>> getElementsToCopy();

    List<Selection<IElement>> getHistory();

    Matrix getMatrix();

    SolverContext getSolverContext();

    IStyleSheet getStyleSheet();

    PointerTool getToolForType(int i);

    List<C14219p1> getTraces();

    int getUndoStackIndex();

    boolean isAutoConversionEnabled();

    boolean isCopyAndPasteModeEnabled();

    boolean isMultiplivativeDotEnabled();

    void moveUndoStackIndex(int i);

    boolean paste(float f, float f2, ClipboardManager clipboardManager);

    void redo();

    void removeEditorListener(EditorListener editorListener);

    void setAnalyzerMode(GenericRecognizer.AnalyzerMode analyzerMode);

    void setAutoConversionDelayMilliseconds(long j);

    void setAutoConversionEnabled(boolean z);

    void setCopyAndPasteMode(int i);

    void setCopyAndPasteModeEnabled(boolean z);

    void setCopyBgColor(int i);

    void setEditorViewBgColor(int i);

    void setGestureEnabled(boolean z);

    void setMathConfig(Recognizer.Config config);

    void setMultiplivativeDotEnabled(boolean z);

    void setPredictTrajectory(boolean z);

    void setRenderTarget(InterfaceC13547c1 interfaceC13547c1);

    void setSolverContext(SolverContext solverContext);

    void setSolverEnabled(boolean z);

    void setToolForType(int i, PointerTool pointerTool);

    void undo();
}
