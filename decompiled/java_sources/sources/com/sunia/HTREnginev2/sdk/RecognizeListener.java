package com.sunia.HTREnginev2.sdk;

import com.sunia.HTREnginev2.sdk.editor.Editor;

/* loaded from: classes10.dex */
public interface RecognizeListener {
    void onAssociationalChanged(Editor editor, String str);

    void onCandidateChanged(Editor editor, String str);

    default void onChemicalStructureChanged(Editor editor, String str) {
    }

    void onContentChanged(Editor editor, String str);

    void onError(Editor editor, int i, Exception exc);

    default void onErrorReplaceChanged(Editor editor, String str) {
    }

    void onLoaded(Editor editor);

    default void onSyntheseChanged(Editor editor, String str) {
    }
}
