package com.google.mlkit.vision.digitalink.internal;

import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizer;
import com.google.mlkit.vision.digitalink.DigitalInkRecognizerOptions;

/* loaded from: classes6.dex */
public final class zzk {

    /* renamed from: a */
    public final zzm f36800a;

    /* renamed from: b */
    public final ExecutorSelector f36801b;

    public zzk(zzm zzmVar, ExecutorSelector executorSelector) {
        this.f36800a = zzmVar;
        this.f36801b = executorSelector;
    }

    public final DigitalInkRecognizer zza(DigitalInkRecognizerOptions digitalInkRecognizerOptions) {
        return new DigitalInkRecognizerImpl((DigitalInkRecognizerJni) this.f36800a.get(digitalInkRecognizerOptions.zzb()), digitalInkRecognizerOptions, this.f36801b.getExecutorToUse(digitalInkRecognizerOptions.zzc()));
    }
}
