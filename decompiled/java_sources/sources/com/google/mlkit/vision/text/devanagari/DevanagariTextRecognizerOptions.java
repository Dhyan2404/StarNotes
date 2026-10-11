package com.google.mlkit.vision.text.devanagari;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.text.devanagari.ModuleDescriptor;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerOptionsUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public final class DevanagariTextRecognizerOptions implements TextRecognizerOptionsInterface {

    /* renamed from: a */
    @VisibleForTesting
    public final AtomicReference f36827a = new AtomicReference();

    /* renamed from: b */
    @Nullable
    public final Executor f36828b;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public Executor f36829a;

        @NonNull
        public DevanagariTextRecognizerOptions build() {
            return new DevanagariTextRecognizerOptions(this.f36829a, null);
        }

        @NonNull
        public Builder setExecutor(@NonNull Executor executor) {
            this.f36829a = executor;
            return this;
        }
    }

    public /* synthetic */ DevanagariTextRecognizerOptions(Executor executor, zza zzaVar) {
        this.f36828b = executor;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DevanagariTextRecognizerOptions) {
            return Objects.equal(this.f36828b, ((DevanagariTextRecognizerOptions) obj).f36828b);
        }
        return false;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getConfigLabel() {
        return "taser_tflite_gocrdevanagari_and_latin_mbv2_aksara_layout_gcn_mobile";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @Nullable
    public final Executor getExecutor() {
        return this.f36828b;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final boolean getIsThickClient() {
        return TextRecognizerOptionsUtils.isThickClient(this.f36827a, ModuleDescriptor.MODULE_ID);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLanguageHint() {
        return OcrValues.LANG_INDIAN;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int getLoggingEventId() {
        return getIsThickClient() ? 24320 : 24331;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @TextRecognizerOptionsInterface.LanguageOption
    public final int getLoggingLanguageOption() {
        return 3;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryName() {
        return true != getIsThickClient() ? "play-services-mlkit-text-recognition-devanagari" : "text-recognition-devanagari";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryNameForOptionalModule() {
        return "optional-module-text-devanagari";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getModuleId() {
        return true != getIsThickClient() ? OptionalModuleUtils.OCR_DEVANAGARI_MODULE_ID : ModuleDescriptor.MODULE_ID;
    }

    public int hashCode() {
        return Objects.hashCode(this.f36828b);
    }
}
