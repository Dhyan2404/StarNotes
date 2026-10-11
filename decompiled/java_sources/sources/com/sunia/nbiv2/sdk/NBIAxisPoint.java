package com.sunia.nbiv2.sdk;

import com.sunia.HTREnginev2.sdk.RecognizePoint;

/* loaded from: classes10.dex */
public class NBIAxisPoint extends RecognizePoint {

    /* renamed from: w */
    public float f92531w;

    public NBIAxisPoint(float f, float f2, float f3, long j) {
        super(f, f2, j);
        this.f92531w = f3;
    }

    @Override // com.sunia.HTREnginev2.sdk.RecognizePoint
    public String toString() {
        return "NBIAxisPoint{w=" + this.f92531w + ", x=" + this.f84039x + ", y=" + this.f84040y + ", p=" + this.f84037p + ", t=" + this.f84038t + ", action=" + this.action + ", id=" + this.f84036id + '}';
    }

    public NBIAxisPoint(RecognizePoint recognizePoint) {
        super(recognizePoint.f84039x, recognizePoint.f84040y, recognizePoint.f84038t);
    }
}
