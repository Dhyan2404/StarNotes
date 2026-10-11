package com.google.android.recaptcha;

import androidx.annotation.NonNull;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/google/android/recaptcha/RecaptchaErrorCode;", "", "errorCode", "", "errorMessage", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getErrorCode", "()I", "getErrorMessage", "()Ljava/lang/String;", "UNKNOWN_ERROR", "NETWORK_ERROR", "INVALID_SITEKEY", "INVALID_KEYTYPE", "INVALID_PACKAGE_NAME", "INVALID_ACTION", "INVALID_TIMEOUT", "INTERNAL_ERROR", "java.com.google.android.libraries.abuse.recaptcha.enterprise.public_public"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes6.dex */
public final class RecaptchaErrorCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RecaptchaErrorCode[] $VALUES;
    private final int errorCode;

    @NotNull
    private final String errorMessage;

    @NonNull
    public static final RecaptchaErrorCode UNKNOWN_ERROR = new RecaptchaErrorCode("UNKNOWN_ERROR", 0, 0, "Unknown Error");

    @NonNull
    public static final RecaptchaErrorCode NETWORK_ERROR = new RecaptchaErrorCode("NETWORK_ERROR", 1, 1, "Network Error");

    @NonNull
    public static final RecaptchaErrorCode INVALID_SITEKEY = new RecaptchaErrorCode("INVALID_SITEKEY", 2, 2, "Site key invalid");

    @NonNull
    public static final RecaptchaErrorCode INVALID_KEYTYPE = new RecaptchaErrorCode("INVALID_KEYTYPE", 3, 3, "Key type invalid");

    @NonNull
    public static final RecaptchaErrorCode INVALID_PACKAGE_NAME = new RecaptchaErrorCode("INVALID_PACKAGE_NAME", 4, 4, "Package name not allowed");

    @NonNull
    public static final RecaptchaErrorCode INVALID_ACTION = new RecaptchaErrorCode("INVALID_ACTION", 5, 5, "Invalid action name, may only include alphanumeric characters like [A-Z], [a-z], [0-9], / and _. Do not include user-specific information");

    @NonNull
    public static final RecaptchaErrorCode INVALID_TIMEOUT = new RecaptchaErrorCode("INVALID_TIMEOUT", 6, 6, "Invalid timeout, minimum value is 5_000L milliseconds");

    @NonNull
    public static final RecaptchaErrorCode INTERNAL_ERROR = new RecaptchaErrorCode("INTERNAL_ERROR", 7, 100, "Internal Error");

    private static final /* synthetic */ RecaptchaErrorCode[] $values() {
        return new RecaptchaErrorCode[]{UNKNOWN_ERROR, NETWORK_ERROR, INVALID_SITEKEY, INVALID_KEYTYPE, INVALID_PACKAGE_NAME, INVALID_ACTION, INVALID_TIMEOUT, INTERNAL_ERROR};
    }

    static {
        RecaptchaErrorCode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private RecaptchaErrorCode(String str, int i, int i2, String str2) {
        this.errorCode = i2;
        this.errorMessage = str2;
    }

    @NotNull
    public static EnumEntries<RecaptchaErrorCode> getEntries() {
        return $ENTRIES;
    }

    @NonNull
    public static RecaptchaErrorCode valueOf(@NonNull String str) {
        return (RecaptchaErrorCode) Enum.valueOf(RecaptchaErrorCode.class, str);
    }

    @NonNull
    public static RecaptchaErrorCode[] values() {
        return (RecaptchaErrorCode[]) $VALUES.clone();
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    @NotNull
    public final String getErrorMessage() {
        return this.errorMessage;
    }
}
