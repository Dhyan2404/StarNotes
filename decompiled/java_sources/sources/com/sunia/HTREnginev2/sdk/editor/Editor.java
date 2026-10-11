package com.sunia.HTREnginev2.sdk.editor;

import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.RecognizePath;

/* loaded from: classes10.dex */
public abstract class Editor implements BaseEditor, CalculateEditor, RecognizeEditor, MixtureEditor {
    protected RecognizePath currentPath = new RecognizePath();

    public abstract void setRecognizeEngineListener(RecognizeListener recognizeListener);
}
