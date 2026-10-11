package com.sunia.HTREnginev2.impl_native;

import com.sunia.HTREnginev2.impl_native.Local.LocalEditorNative;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.sdk.editor.MixtureEditorV2;
import com.sunia.HTREnginev2.utils.LogUtil;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class MixtureEditorV2Impl implements MixtureEditorV2 {
    private static final String TAG = "MixtureEditorV2Impl";
    private EditorNative editorNative;

    public MixtureEditorV2Impl(EditorNative editorNative) {
        this.editorNative = editorNative;
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public int[] addPointsAndIDsForMixture(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        return this.editorNative.addPointsAndIDsForMixture(j, j2, j3, j4, j5, j6, j7);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public long addStrokePointsForMixture(List<RecognizePoint> list, long j) {
        return this.editorNative.addStrokePointsForMixture(list, j);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public long addStrokePointsPointerForMixture(long j, long j2, long j3, long j4, long j5) {
        return this.editorNative.addStrokePointsPointerForMixture(j, j2, j3, j4, j5);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public int deleteStrokesForMixture(long j, long j2) {
        return this.editorNative.deleteStrokesForMixture(j, j2);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditorV2
    public void doErrorReplace(String str) {
        LogUtil.m57653d(TAG, "doErrorReplace");
        if (this.editorNative.isValid()) {
            LocalEditorNative.doErrorReplace(this.editorNative.lHandler, str);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String doInteractForMixture(long j) {
        return this.editorNative.doInteractForMixture(j);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditorV2
    public void doNTIStrokePreset(String str) {
        LogUtil.m57653d(TAG, "doNTIStrokePreset");
        if (this.editorNative.isValid()) {
            LocalEditorNative.doNTIStrokePreset(this.editorNative.lHandler, str);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String doRecognizeForMixture(String str) {
        return this.editorNative.doRecognizeForMixture(str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String getPartContentForMixture(String str) {
        return this.editorNative.getPartContentForMixture(str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String getTotalContentForMixture() {
        return this.editorNative.getTotalContentForMixture();
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public boolean inDoSaveForMixture(String str) {
        return this.editorNative.inDoSaveForMixture(str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public String incLoadByPathForMixture(String str) {
        return this.editorNative.incLoadByPathForMixture(str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public boolean isChemValidForMixture(String str) {
        return this.editorNative.isChemValidForMixture(str);
    }

    @Override // com.sunia.HTREnginev2.sdk.editor.MixtureEditor
    public void setWritingForMixture(boolean z) {
        this.editorNative.setWritingForMixture(z);
    }
}
