package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes6.dex */
public abstract class DigitalInkRecognizerOptions {

    /* loaded from: classes6.dex */
    public static abstract class Builder {
        @NonNull
        public abstract DigitalInkRecognizerOptions build();

        @NonNull
        public abstract Builder setExecutor(@NonNull Executor executor);

        @NonNull
        public abstract Builder setMaxResultCount(int i);
    }

    @NonNull
    public static Builder builder(@NonNull DigitalInkRecognitionModel digitalInkRecognitionModel) {
        C6622a c6622a = new C6622a();
        c6622a.m28579a(digitalInkRecognitionModel);
        c6622a.setMaxResultCount(10);
        return c6622a;
    }

    public abstract int zza();

    @NonNull
    public abstract DigitalInkRecognitionModel zzb();

    @Nullable
    public abstract Executor zzc();
}
