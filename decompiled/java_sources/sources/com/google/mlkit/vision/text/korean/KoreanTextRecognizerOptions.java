package com.google.mlkit.vision.text.korean;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.text.korean.ModuleDescriptor;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerOptionsUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public final class KoreanTextRecognizerOptions implements TextRecognizerOptionsInterface {

    /* renamed from: a */
    @VisibleForTesting
    public final AtomicReference f36844a = new AtomicReference();

    /* renamed from: b */
    @Nullable
    public final Executor f36845b;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public Executor f36846a;

        @NonNull
        public KoreanTextRecognizerOptions build() {
            return new KoreanTextRecognizerOptions(this.f36846a, null);
        }

        @NonNull
        public Builder setExecutor(@NonNull Executor executor) {
            this.f36846a = executor;
            return this;
        }
    }

    public /* synthetic */ KoreanTextRecognizerOptions(Executor executor, zza zzaVar) {
        this.f36845b = executor;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof KoreanTextRecognizerOptions) {
            return Objects.equal(this.f36845b, ((KoreanTextRecognizerOptions) obj).f36845b);
        }
        return false;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getConfigLabel() {
        return "taser_tflite_gocrkorean_and_latin_mbv2_aksara_layout_gcn_mobile";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @Nullable
    public final Executor getExecutor() {
        return this.f36845b;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final boolean getIsThickClient() {
        return TextRecognizerOptionsUtils.isThickClient(this.f36844a, ModuleDescriptor.MODULE_ID);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLanguageHint() {
        return OcrValues.LANG_KOREAN;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int getLoggingEventId() {
        return getIsThickClient() ? 24319 : 24333;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @TextRecognizerOptionsInterface.LanguageOption
    public final int getLoggingLanguageOption() {
        return 5;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryName() {
        return true != getIsThickClient() ? "play-services-mlkit-text-recognition-korean" : "text-recognition-korean";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryNameForOptionalModule() {
        return "optional-module-text-korean";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getModuleId() {
        return true != getIsThickClient() ? OptionalModuleUtils.OCR_KOREAN_MODULE_ID : ModuleDescriptor.MODULE_ID;
    }

    public int hashCode() {
        return Objects.hashCode(this.f36845b);
    }
}
