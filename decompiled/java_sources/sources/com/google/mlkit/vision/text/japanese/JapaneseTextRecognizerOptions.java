package com.google.mlkit.vision.text.japanese;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.text.japanese.ModuleDescriptor;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerOptionsUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public final class JapaneseTextRecognizerOptions implements TextRecognizerOptionsInterface {

    /* renamed from: a */
    @VisibleForTesting
    public final AtomicReference f36841a = new AtomicReference();

    /* renamed from: b */
    @Nullable
    public final Executor f36842b;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public Executor f36843a;

        @NonNull
        public JapaneseTextRecognizerOptions build() {
            return new JapaneseTextRecognizerOptions(this.f36843a, null);
        }

        @NonNull
        public Builder setExecutor(@NonNull Executor executor) {
            this.f36843a = executor;
            return this;
        }
    }

    public /* synthetic */ JapaneseTextRecognizerOptions(Executor executor, zza zzaVar) {
        this.f36842b = executor;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof JapaneseTextRecognizerOptions) {
            return Objects.equal(this.f36842b, ((JapaneseTextRecognizerOptions) obj).f36842b);
        }
        return false;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getConfigLabel() {
        return "taser_tflite_gocrjapanese_and_latin_mbv2_aksara_layout_gcn_mobile";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @Nullable
    public final Executor getExecutor() {
        return this.f36842b;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final boolean getIsThickClient() {
        return TextRecognizerOptionsUtils.isThickClient(this.f36841a, ModuleDescriptor.MODULE_ID);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLanguageHint() {
        return OcrValues.LANG_JAPANESE;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int getLoggingEventId() {
        return getIsThickClient() ? 24318 : 24332;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @TextRecognizerOptionsInterface.LanguageOption
    public final int getLoggingLanguageOption() {
        return 4;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryName() {
        return true != getIsThickClient() ? "play-services-mlkit-text-recognition-japanese" : "text-recognition-japanese";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryNameForOptionalModule() {
        return "optional-module-text-japanese";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getModuleId() {
        return true != getIsThickClient() ? OptionalModuleUtils.OCR_JAPANESE_MODULE_ID : ModuleDescriptor.MODULE_ID;
    }

    public int hashCode() {
        return Objects.hashCode(this.f36842b);
    }
}
