package com.google.mlkit.vision.text.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.mlkit_vision_text_common.zzun;
import com.google.mlkit.common.sdkinternal.ExecutorSelector;
import com.google.mlkit.vision.text.TextRecognizer;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;

/* loaded from: classes6.dex */
public final class zzo {

    /* renamed from: a */
    public final zzp f36838a;

    /* renamed from: b */
    public final ExecutorSelector f36839b;

    public zzo(@NonNull zzp zzpVar, @NonNull ExecutorSelector executorSelector) {
        this.f36838a = zzpVar;
        this.f36839b = executorSelector;
    }

    @NonNull
    public final TextRecognizer zza(@NonNull TextRecognizerOptionsInterface textRecognizerOptionsInterface) {
        return new zzn((TextRecognizerTaskWithResource) this.f36838a.get(textRecognizerOptionsInterface), this.f36839b.getExecutorToUse(textRecognizerOptionsInterface.getExecutor()), zzun.zzb(textRecognizerOptionsInterface.getLoggingLibraryName()), textRecognizerOptionsInterface);
    }
}
