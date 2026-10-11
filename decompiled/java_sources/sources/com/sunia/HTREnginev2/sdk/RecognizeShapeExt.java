package com.sunia.HTREnginev2.sdk;

import com.sunia.commonv2.util.HWRUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class RecognizeShapeExt implements Cloneable {
    private List<RecognizeShapeNote> recognizeShapeNoteList = new ArrayList();
    private float showAngleFontScale;

    /* loaded from: classes10.dex */
    public static class RecognizeShapeNote implements Cloneable {
        public String note;

        /* renamed from: x */
        public float f84041x;

        /* renamed from: y */
        public float f84042y;

        public RecognizeShapeNote(float f, float f2, String str) {
            this.f84041x = f;
            this.f84042y = f2;
            this.note = str;
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public RecognizeShapeNote m72431clone() {
            return new RecognizeShapeNote(this.f84041x, this.f84042y, this.note);
        }
    }

    public List<RecognizeShapeNote> getRecognizeShapeNoteList() {
        return this.recognizeShapeNoteList;
    }

    public float getShowAngleFontScale() {
        return this.showAngleFontScale;
    }

    public void setShowAngleFontScale(float f) {
        this.showAngleFontScale = f;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RecognizeShapeExt m72430clone() {
        RecognizeShapeExt recognizeShapeExt = new RecognizeShapeExt();
        recognizeShapeExt.showAngleFontScale = this.showAngleFontScale;
        if (HWRUtil.isNotEmpty((List<?>) this.recognizeShapeNoteList)) {
            Iterator<RecognizeShapeNote> it2 = this.recognizeShapeNoteList.iterator();
            while (it2.hasNext()) {
                recognizeShapeExt.getRecognizeShapeNoteList().add(it2.next().m72431clone());
            }
        }
        return recognizeShapeExt;
    }
}
