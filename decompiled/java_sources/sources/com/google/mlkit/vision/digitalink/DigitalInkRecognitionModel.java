package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.mlkit.common.model.RemoteModel;

/* loaded from: classes6.dex */
public class DigitalInkRecognitionModel extends RemoteModel {

    /* renamed from: f */
    public final DigitalInkRecognitionModelIdentifier f36657f;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @NonNull
        public DigitalInkRecognitionModelIdentifier f36658a;

        public Builder() {
        }

        @NonNull
        /* renamed from: a */
        public final Builder m28577a(@NonNull DigitalInkRecognitionModelIdentifier digitalInkRecognitionModelIdentifier) {
            this.f36658a = digitalInkRecognitionModelIdentifier;
            return this;
        }

        @NonNull
        public DigitalInkRecognitionModel build() {
            if (this.f36658a != null) {
                return new DigitalInkRecognitionModel(this.f36658a);
            }
            throw new IllegalArgumentException("No model identifier set for model");
        }

        public /* synthetic */ Builder(zzj zzjVar) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DigitalInkRecognitionModel(com.google.mlkit.vision.digitalink.DigitalInkRecognitionModelIdentifier r4) {
        /*
            r3 = this;
            java.lang.String r0 = java.lang.String.valueOf(r4)
            com.google.mlkit.common.sdkinternal.ModelType r1 = com.google.mlkit.common.sdkinternal.ModelType.DIGITAL_INK
            java.lang.String r2 = "digital_ink_recognition_model_"
            java.lang.String r0 = r2.concat(r0)
            r2 = 0
            r3.<init>(r0, r2, r1)
            r3.f36657f = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel.<init>(com.google.mlkit.vision.digitalink.DigitalInkRecognitionModelIdentifier):void");
    }

    @NonNull
    public static Builder builder(@NonNull DigitalInkRecognitionModelIdentifier digitalInkRecognitionModelIdentifier) {
        Builder builder = new Builder(null);
        builder.m28577a(digitalInkRecognitionModelIdentifier);
        return builder;
    }

    @Override // com.google.mlkit.common.model.RemoteModel
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DigitalInkRecognitionModel) && super.equals(obj)) {
            return Objects.equal(this.f36657f, ((DigitalInkRecognitionModel) obj).f36657f);
        }
        return false;
    }

    @NonNull
    public DigitalInkRecognitionModelIdentifier getModelIdentifier() {
        return this.f36657f;
    }

    @Override // com.google.mlkit.common.model.RemoteModel
    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(super.hashCode()), this.f36657f);
    }

    public final boolean zza() {
        return this.f36657f.m28578a();
    }
}
