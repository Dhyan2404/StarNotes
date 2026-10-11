package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;
import java.util.concurrent.Executor;

/* loaded from: classes6.dex */
public final class uip extends DigitalInkRecognizerOptions {

    /* renamed from: a */
    @NonNull
    public final DigitalInkRecognitionModel f86527a;

    /* renamed from: b */
    public final int f86528b;

    /* renamed from: c */
    @Nullable
    public final Executor f86529c;

    public /* synthetic */ uip(DigitalInkRecognitionModel digitalInkRecognitionModel, int i, Executor executor, com.google.mlkit.vision.digitalink.zzb zzbVar) {
        this.f86527a = digitalInkRecognitionModel;
        this.f86528b = i;
        this.f86529c = executor;
    }

    public final boolean equals(Object obj) {
        Executor executor;
        if (obj == this) {
            return true;
        }
        if (obj instanceof DigitalInkRecognizerOptions) {
            DigitalInkRecognizerOptions digitalInkRecognizerOptions = (DigitalInkRecognizerOptions) obj;
            if (this.f86527a.equals(digitalInkRecognizerOptions.zzb()) && this.f86528b == digitalInkRecognizerOptions.zza() && ((executor = this.f86529c) != null ? executor.equals(digitalInkRecognizerOptions.zzc()) : digitalInkRecognizerOptions.zzc() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((this.f86527a.hashCode() ^ 1000003) * 1000003) ^ this.f86528b;
        Executor executor = this.f86529c;
        return (executor == null ? 0 : executor.hashCode()) ^ (hashCode * 1000003);
    }

    public final String toString() {
        return "DigitalInkRecognizerOptions{model=" + this.f86527a.toString() + ", maxResultCount=" + this.f86528b + ", executor=" + String.valueOf(this.f86529c) + "}";
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions
    public final int zza() {
        return this.f86528b;
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions
    @NonNull
    public final DigitalInkRecognitionModel zzb() {
        return this.f86527a;
    }

    @Override // com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions
    @Nullable
    public final Executor zzc() {
        return this.f86529c;
    }
}
