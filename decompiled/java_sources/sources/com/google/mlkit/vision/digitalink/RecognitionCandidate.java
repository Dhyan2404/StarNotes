package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzafr;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzaga;
import java.util.Arrays;

@UsedByNative("digital_ink_recognizer_jni")
/* loaded from: classes6.dex */
public class RecognitionCandidate {

    /* renamed from: a */
    public final String f36750a;

    /* renamed from: b */
    @Nullable
    public final Float f36751b;

    @UsedByNative("digital_ink_recognizer_jni")
    public RecognitionCandidate(@NonNull byte[] bArr) {
        this.f36750a = new String(bArr, zzafr.zzc);
        this.f36751b = null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecognitionCandidate)) {
            return false;
        }
        RecognitionCandidate recognitionCandidate = (RecognitionCandidate) obj;
        return zzaga.zza(this.f36750a, recognitionCandidate.f36750a) && zzaga.zza(this.f36751b, recognitionCandidate.f36751b);
    }

    @Nullable
    public Float getScore() {
        return this.f36751b;
    }

    @NonNull
    public String getText() {
        return this.f36750a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f36750a, this.f36751b});
    }

    @NonNull
    public String toString() {
        return "\"" + getText() + "\": " + getScore();
    }

    @UsedByNative("digital_ink_recognizer_jni")
    public RecognitionCandidate(@NonNull byte[] bArr, float f) {
        this.f36750a = new String(bArr, zzafr.zzc);
        this.f36751b = Float.valueOf(f);
    }
}
