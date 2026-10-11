package com.google.mlkit.vision.text.pipeline;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes6.dex */
public abstract class VkpTextRecognizerOptions {

    @KeepForSdk
    /* loaded from: classes6.dex */
    public static abstract class Builder {
        @KeepForSdk
        /* renamed from: a */
        public abstract Builder mo28595a(String str);

        @NonNull
        @KeepForSdk
        public abstract VkpTextRecognizerOptions build();

        @NonNull
        @KeepForSdk
        public abstract Builder setEnableLowLatencyInBackground(boolean z);

        @NonNull
        @KeepForSdk
        public abstract Builder setLanguageHint(@NonNull String str);

        @NonNull
        @KeepForSdk
        public abstract Builder setModelDir(@NonNull String str);
    }

    @NonNull
    @KeepForSdk
    public static Builder builder(@NonNull String str, @Nullable String str2, @NonNull String str3) {
        C6641a c6641a = new C6641a();
        c6641a.mo28595a(str);
        if (str2 == null) {
            str2 = "mlkit-google-ocr-models";
        }
        c6641a.setModelDir(str2);
        c6641a.setLanguageHint(str3);
        c6641a.setEnableLowLatencyInBackground(false);
        return c6641a;
    }

    /* renamed from: a */
    public abstract String mo28591a();

    /* renamed from: b */
    public abstract String mo28592b();

    /* renamed from: c */
    public abstract String mo28593c();

    /* renamed from: d */
    public abstract boolean mo28594d();
}
