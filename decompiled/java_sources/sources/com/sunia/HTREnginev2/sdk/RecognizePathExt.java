package com.sunia.HTREnginev2.sdk;

/* loaded from: classes10.dex */
public class RecognizePathExt implements Cloneable {
    private int penColor;

    public int getPenColor() {
        return this.penColor;
    }

    public void setPenColor(int i) {
        this.penColor = i;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RecognizePathExt m72428clone() {
        RecognizePathExt recognizePathExt = new RecognizePathExt();
        recognizePathExt.penColor = this.penColor;
        return recognizePathExt;
    }
}
