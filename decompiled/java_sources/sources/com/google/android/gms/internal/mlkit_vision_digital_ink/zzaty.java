package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public enum zzaty implements zzbuk {
    UNKNOWN_ERROR(0),
    NO_ERROR(1),
    DOWNLOAD_NULL_RESULT(2),
    DOWNLOAD_PENDING(3),
    DOWNLOAD_UNSPECIFIED(4),
    DOWNLOAD_DOWNLOADED(5),
    GET_DOWNLOADED_FILES_NULL_RESULT(6),
    GET_DOWNLOADED_FILES_PENDING(7),
    GET_DOWNLOADED_FILES_UNSPECIFIED(8),
    GET_DOWNLOADED_FILES_DOWNLOADED(9),
    DELETE_DOWNLOADED_MODEL_NULL_RESULT(10),
    DELETE_DOWNLOADED_MODEL_SUCCESS(11),
    DELETE_DOWNLOADED_MODEL_FAILURE(12),
    DELETE_DOWNLOADED_MODEL_MAINTENANCE_COMPLETED(13),
    GET_DOWNLOADED_MODELS_SUCCESS(14),
    GET_DOWNLOADED_MODELS_FAILURE(15),
    IS_MODEL_DOWNLOADED_NULL_RESULT(16),
    IS_MODEL_DOWNLOADED_PENDING(17),
    IS_MODEL_DOWNLOADED_UNSPECIFIED(18),
    IS_MODEL_DOWNLOADED_DOWNLOADED(19),
    RECOGNITION_SUCCESS(20),
    RECOGNITION_INTERNAL_ERROR(21),
    RECOGNITION_RUNTIME_EXCEPTION(22),
    RECOGNITION_UNKNOWN_EXCEPTION(23),
    RECOGNITION_NATIVE_HANDWRITING_EXCEPTION(24),
    RECOGNITION_MISSING_COMPLETION(32),
    RECOGNIZER_INITIALIZE_SUCCESS(25),
    RECOGNIZER_INITIALIZE_INTERNAL_ERROR(26),
    RECOGNIZER_INITIALIZE_IO_EXCEPTION(27),
    RECOGNIZER_INITIALIZE_RUNTIME_EXCEPTION(28),
    RECOGNIZER_INITIALIZE_UNKNOWN_EXCEPTION(29),
    RECOGNIZER_INITIALIZE_NATIVE_HANDWRITING_EXCEPTION(30),
    RECOGNIZER_INITIALIZE_FILE_NOT_FOUND(31),
    RECOGNIZER_INITIALIZE_UNZIP_FAILED(33),
    RECOGNIZER_INITIALIZE_FROM_CACHED_INSTANCE(34),
    RECOGNIZER_INITIALIZE_INVALID_ARGUMENT_EXCEPTION(35),
    DOWNLOAD_MODEL_SUCCESS(36),
    DOWNLOAD_MODEL_FAILURE(37),
    DOWNLOAD_MODEL_STARTED(38);

    private static final zzbul zzN = new zzbul() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzatw
    };
    private final int zzP;

    zzaty(int i) {
        this.zzP = i;
    }

    public static zzaty zzb(int i) {
        switch (i) {
            case 0:
                return UNKNOWN_ERROR;
            case 1:
                return NO_ERROR;
            case 2:
                return DOWNLOAD_NULL_RESULT;
            case 3:
                return DOWNLOAD_PENDING;
            case 4:
                return DOWNLOAD_UNSPECIFIED;
            case 5:
                return DOWNLOAD_DOWNLOADED;
            case 6:
                return GET_DOWNLOADED_FILES_NULL_RESULT;
            case 7:
                return GET_DOWNLOADED_FILES_PENDING;
            case 8:
                return GET_DOWNLOADED_FILES_UNSPECIFIED;
            case 9:
                return GET_DOWNLOADED_FILES_DOWNLOADED;
            case 10:
                return DELETE_DOWNLOADED_MODEL_NULL_RESULT;
            case 11:
                return DELETE_DOWNLOADED_MODEL_SUCCESS;
            case 12:
                return DELETE_DOWNLOADED_MODEL_FAILURE;
            case 13:
                return DELETE_DOWNLOADED_MODEL_MAINTENANCE_COMPLETED;
            case 14:
                return GET_DOWNLOADED_MODELS_SUCCESS;
            case 15:
                return GET_DOWNLOADED_MODELS_FAILURE;
            case 16:
                return IS_MODEL_DOWNLOADED_NULL_RESULT;
            case 17:
                return IS_MODEL_DOWNLOADED_PENDING;
            case 18:
                return IS_MODEL_DOWNLOADED_UNSPECIFIED;
            case 19:
                return IS_MODEL_DOWNLOADED_DOWNLOADED;
            case 20:
                return RECOGNITION_SUCCESS;
            case 21:
                return RECOGNITION_INTERNAL_ERROR;
            case 22:
                return RECOGNITION_RUNTIME_EXCEPTION;
            case 23:
                return RECOGNITION_UNKNOWN_EXCEPTION;
            case 24:
                return RECOGNITION_NATIVE_HANDWRITING_EXCEPTION;
            case 25:
                return RECOGNIZER_INITIALIZE_SUCCESS;
            case 26:
                return RECOGNIZER_INITIALIZE_INTERNAL_ERROR;
            case 27:
                return RECOGNIZER_INITIALIZE_IO_EXCEPTION;
            case 28:
                return RECOGNIZER_INITIALIZE_RUNTIME_EXCEPTION;
            case 29:
                return RECOGNIZER_INITIALIZE_UNKNOWN_EXCEPTION;
            case 30:
                return RECOGNIZER_INITIALIZE_NATIVE_HANDWRITING_EXCEPTION;
            case 31:
                return RECOGNIZER_INITIALIZE_FILE_NOT_FOUND;
            case 32:
                return RECOGNITION_MISSING_COMPLETION;
            case 33:
                return RECOGNIZER_INITIALIZE_UNZIP_FAILED;
            case 34:
                return RECOGNIZER_INITIALIZE_FROM_CACHED_INSTANCE;
            case 35:
                return RECOGNIZER_INITIALIZE_INVALID_ARGUMENT_EXCEPTION;
            case 36:
                return DOWNLOAD_MODEL_SUCCESS;
            case 37:
                return DOWNLOAD_MODEL_FAILURE;
            case 38:
                return DOWNLOAD_MODEL_STARTED;
            default:
                return null;
        }
    }

    public static zzbum zzc() {
        return zzatx.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzP);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuk
    public final int zza() {
        return this.zzP;
    }
}
