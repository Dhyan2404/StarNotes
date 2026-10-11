package com.google.mlkit.vision.text.latin;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.text.latin.ModuleDescriptor;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.TextRecognizerOptionsUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public class TextRecognizerOptions implements TextRecognizerOptionsInterface {

    @NonNull
    public static final TextRecognizerOptions DEFAULT_OPTIONS = new Builder().build();

    /* renamed from: b */
    @Nullable
    public final Executor f36848b;

    /* renamed from: a */
    @VisibleForTesting
    public final AtomicReference f36847a = new AtomicReference();

    /* renamed from: c */
    public final String f36849c = "taser_tflite_gocrlatin_mbv2_scriptid_aksara_layout_gcn_mobile";

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public Executor f36850a;

        @NonNull
        public TextRecognizerOptions build() {
            return new TextRecognizerOptions(this.f36850a, "taser_tflite_gocrlatin_mbv2_scriptid_aksara_layout_gcn_mobile");
        }

        @NonNull
        public Builder setExecutor(@NonNull Executor executor) {
            this.f36850a = executor;
            return this;
        }
    }

    public TextRecognizerOptions(@Nullable Executor executor, @NonNull String str) {
        this.f36848b = executor;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TextRecognizerOptions) {
            return Objects.equal(this.f36848b, ((TextRecognizerOptions) obj).f36848b);
        }
        return false;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getConfigLabel() {
        return this.f36849c;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @Nullable
    public final Executor getExecutor() {
        return this.f36848b;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final boolean getIsThickClient() {
        return TextRecognizerOptionsUtils.isThickClient(this.f36847a, ModuleDescriptor.MODULE_ID);
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLanguageHint() {
        return "en";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    public final int getLoggingEventId() {
        return getIsThickClient() ? 24317 : 24306;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @TextRecognizerOptionsInterface.LanguageOption
    public final int getLoggingLanguageOption() {
        return 1;
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryName() {
        return true != getIsThickClient() ? "play-services-mlkit-text-recognition" : "text-recognition";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getLoggingLibraryNameForOptionalModule() {
        return "optional-module-text-latin";
    }

    @Override // com.google.mlkit.vision.text.TextRecognizerOptionsInterface
    @NonNull
    public final String getModuleId() {
        return true != getIsThickClient() ? OptionalModuleUtils.OCR_MODULE_ID : ModuleDescriptor.MODULE_ID;
    }

    public int hashCode() {
        return Objects.hashCode(this.f36848b);
    }
}
