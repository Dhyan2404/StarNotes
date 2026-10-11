package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.mlkit.common.model.RemoteModel;
import java.io.File;

@KeepForSdk
/* loaded from: classes6.dex */
public interface ModelValidator {

    @KeepForSdk
    /* loaded from: classes6.dex */
    public static class ValidationResult {

        @NonNull
        @KeepForSdk
        public static final ValidationResult VALID = new ValidationResult(ErrorCode.OK, null);

        /* renamed from: a */
        public final ErrorCode f36597a;

        /* renamed from: b */
        @Nullable
        public final String f36598b;

        @KeepForSdk
        /* loaded from: classes6.dex */
        public enum ErrorCode {
            OK,
            TFLITE_VERSION_INCOMPATIBLE,
            MODEL_FORMAT_INVALID
        }

        @KeepForSdk
        public ValidationResult(@NonNull ErrorCode errorCode, @Nullable String str) {
            this.f36597a = errorCode;
            this.f36598b = str;
        }

        @NonNull
        @KeepForSdk
        public ErrorCode getErrorCode() {
            return this.f36597a;
        }

        @Nullable
        @KeepForSdk
        public String getErrorMessage() {
            return this.f36598b;
        }

        @KeepForSdk
        public boolean isValid() {
            return this.f36597a == ErrorCode.OK;
        }
    }

    @NonNull
    @KeepForSdk
    ValidationResult validateModel(@NonNull File file, @NonNull RemoteModel remoteModel);
}
