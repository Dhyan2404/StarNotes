package com.google.mlkit.vision.digitalink;

import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;
import com.sunia.HTREnginev2.uip;
import java.util.concurrent.Executor;

/* renamed from: com.google.mlkit.vision.digitalink.a */
/* loaded from: classes6.dex */
public final class C6622a extends DigitalInkRecognizerOptions.Builder {

    /* renamed from: a */
    public DigitalInkRecognitionModel f36755a;

    /* renamed from: b */
    public int f36756b;

    /* renamed from: c */
    public Executor f36757c;

    /* renamed from: d */
    public byte f36758d;

    /* renamed from: a */
    public final DigitalInkRecognizerOptions.Builder m28579a(DigitalInkRecognitionModel digitalInkRecognitionModel) {
        if (digitalInkRecognitionModel == null) {
            throw new NullPointerException("Null model");
        }
        this.f36755a = digitalInkRecognitionModel;
        return this;
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions.Builder
    public final DigitalInkRecognizerOptions build() {
        DigitalInkRecognitionModel digitalInkRecognitionModel;
        if (this.f36758d == 1 && (digitalInkRecognitionModel = this.f36755a) != null) {
            return new uip(digitalInkRecognitionModel, this.f36756b, this.f36757c, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f36755a == null) {
            sb.append(" model");
        }
        if (this.f36758d == 0) {
            sb.append(" maxResultCount");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions.Builder
    public final DigitalInkRecognizerOptions.Builder setExecutor(Executor executor) {
        this.f36757c = executor;
        return this;
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions.Builder
    public final DigitalInkRecognizerOptions.Builder setMaxResultCount(int i) {
        this.f36756b = i;
        this.f36758d = (byte) 1;
        return this;
    }
}
