package com.sunia.HTREnginev2.impl_native.callback;

import com.sunia.HTREnginev2.sdk.CandidateCallback;
import com.sunia.HTREnginev2.sdk.RecognizeListener;
import com.sunia.HTREnginev2.sdk.editor.Editor;

/* loaded from: classes10.dex */
public class LocalCandidateCallback extends CandidateCallback {
    private RecognizeListener recognizeListener;

    @Override // com.sunia.HTREnginev2.sdk.CandidateCallback
    public void onCandidate(Editor editor, String str) {
        RecognizeListener recognizeListener = this.recognizeListener;
        if (recognizeListener != null) {
            recognizeListener.onCandidateChanged(editor, str);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.CandidateCallback
    public void onError(Editor editor, int i, String str) {
        RecognizeListener recognizeListener = this.recognizeListener;
        if (recognizeListener != null) {
            recognizeListener.onError(editor, i, new Exception(str));
        }
    }

    public void setRecognizeListener(RecognizeListener recognizeListener) {
        this.recognizeListener = recognizeListener;
    }
}
