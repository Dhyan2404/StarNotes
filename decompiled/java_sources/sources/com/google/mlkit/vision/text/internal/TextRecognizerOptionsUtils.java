package com.google.mlkit.vision.text.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import java.util.concurrent.atomic.AtomicReference;

@KeepForSdk
/* loaded from: classes6.dex */
public final class TextRecognizerOptionsUtils {
    @KeepForSdk
    public static boolean isThickClient(@NonNull AtomicReference<Boolean> atomicReference, @NonNull String str) {
        if (atomicReference.get() != null) {
            return atomicReference.get().booleanValue();
        }
        boolean z = DynamiteModule.getLocalVersion(MlKitContext.getInstance().getApplicationContext(), str) > 0;
        atomicReference.set(Boolean.valueOf(z));
        return z;
    }
}
