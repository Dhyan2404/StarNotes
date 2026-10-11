package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import com.google.mlkit.common.sdkinternal.MlKitContext;

/* loaded from: classes6.dex */
public class DigitalInkRecognition {
    @NonNull
    public static DigitalInkRecognizer getClient(@NonNull DigitalInkRecognizerOptions digitalInkRecognizerOptions) {
        return ((com.google.mlkit.vision.digitalink.internal.zzk) MlKitContext.getInstance().get(com.google.mlkit.vision.digitalink.internal.zzk.class)).zza(digitalInkRecognizerOptions);
    }
}
