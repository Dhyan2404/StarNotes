package com.onyx.android.sdk.hwr.data.bean;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00162\u00060\u0001j\u0002`\u0002:\u0002\u0016\u0017B\u0011\b\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005B\u000f\b\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u0019\b\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "message", "", "(Ljava/lang/String;)V", "e", "", "(Ljava/lang/Throwable;)V", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "code", "", "getCode", "()I", "setCode", "(I)V", "type", "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;", "getType", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;", "setType", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)V", "Companion", "ExceptionType", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRException extends RuntimeException {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int code;

    @NotNull
    private ExceptionType type;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0013\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0086\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;", "", "()V", "of", "Lcom/onyx/android/sdk/hwr/data/bean/HWRException;", "type", "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;", "message", "", "code", "", "e", "", "throwInitRecognizerFailException", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void throwInitRecognizerFailException$default(Companion companion, String message, int i, Object obj) {
            if ((i & 1) != 0) {
                message = "";
            }
            Intrinsics.checkNotNullParameter(message, "message");
            throw companion.m33354of(ExceptionType.RECOGNIZER_INIT_FAIL, message);
        }

        @NotNull
        /* renamed from: of */
        public final HWRException m33355of(@Nullable String message) {
            HWRException hWRException = new HWRException(message, (DefaultConstructorMarker) null);
            ExceptionType exceptionType = ExceptionType.UNDEFINED;
            hWRException.setType(exceptionType);
            hWRException.setCode(exceptionType.ordinal());
            return hWRException;
        }

        public final void throwInitRecognizerFailException(@NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            throw m33354of(ExceptionType.RECOGNIZER_INIT_FAIL, message);
        }

        public Companion() {
        }

        @NotNull
        /* renamed from: of */
        public final HWRException m33354of(@NotNull ExceptionType type, @Nullable String message) {
            Intrinsics.checkNotNullParameter(type, "type");
            HWRException hWRException = new HWRException(message, (DefaultConstructorMarker) null);
            hWRException.setType(type);
            hWRException.setCode(type.ordinal());
            return hWRException;
        }

        @NotNull
        /* renamed from: of */
        public final HWRException m33356of(@NotNull Throwable e, @Nullable String message) {
            Intrinsics.checkNotNullParameter(e, "e");
            HWRException hWRException = new HWRException(e, message, null);
            ExceptionType exceptionType = ExceptionType.UNDEFINED;
            hWRException.setType(exceptionType);
            hWRException.setCode(exceptionType.ordinal());
            return hWRException;
        }

        @NotNull
        /* renamed from: of */
        public final HWRException m33353of(int code, @Nullable String message) {
            HWRException hWRException = new HWRException(message, (DefaultConstructorMarker) null);
            hWRException.setType(ExceptionType.UNDEFINED);
            hWRException.setCode(code);
            return hWRException;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;", "", "(Ljava/lang/String;I)V", "UNDEFINED", "RESOURCE_NOT_FOUND", "INPUT_DATA_FALSE", "RECOGNIZER_INIT_FAIL", "RECOGNIZER_OPEN_FAIL", "RECOGNIZER_TYPE_FALSE", "CONVERT_FAIL", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class ExceptionType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ExceptionType[] $VALUES;
        public static final ExceptionType UNDEFINED = new ExceptionType("UNDEFINED", 0);
        public static final ExceptionType RESOURCE_NOT_FOUND = new ExceptionType("RESOURCE_NOT_FOUND", 1);
        public static final ExceptionType INPUT_DATA_FALSE = new ExceptionType("INPUT_DATA_FALSE", 2);
        public static final ExceptionType RECOGNIZER_INIT_FAIL = new ExceptionType("RECOGNIZER_INIT_FAIL", 3);
        public static final ExceptionType RECOGNIZER_OPEN_FAIL = new ExceptionType("RECOGNIZER_OPEN_FAIL", 4);
        public static final ExceptionType RECOGNIZER_TYPE_FALSE = new ExceptionType("RECOGNIZER_TYPE_FALSE", 5);
        public static final ExceptionType CONVERT_FAIL = new ExceptionType("CONVERT_FAIL", 6);

        private static final /* synthetic */ ExceptionType[] $values() {
            return new ExceptionType[]{UNDEFINED, RESOURCE_NOT_FOUND, INPUT_DATA_FALSE, RECOGNIZER_INIT_FAIL, RECOGNIZER_OPEN_FAIL, RECOGNIZER_TYPE_FALSE, CONVERT_FAIL};
        }

        static {
            ExceptionType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private ExceptionType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<ExceptionType> getEntries() {
            return $ENTRIES;
        }

        public static ExceptionType valueOf(String str) {
            return (ExceptionType) Enum.valueOf(ExceptionType.class, str);
        }

        public static ExceptionType[] values() {
            return (ExceptionType[]) $VALUES.clone();
        }
    }

    public /* synthetic */ HWRException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final ExceptionType getType() {
        return this.type;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setType(@NotNull ExceptionType exceptionType) {
        Intrinsics.checkNotNullParameter(exceptionType, "<set-?>");
        this.type = exceptionType;
    }

    public /* synthetic */ HWRException(Throwable th, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, str);
    }

    private HWRException(String str) {
        super(str);
        ExceptionType exceptionType = ExceptionType.UNDEFINED;
        this.type = exceptionType;
        this.code = exceptionType.ordinal();
    }

    private HWRException(Throwable th) {
        super(th);
        ExceptionType exceptionType = ExceptionType.UNDEFINED;
        this.type = exceptionType;
        this.code = exceptionType.ordinal();
    }

    private HWRException(Throwable th, String str) {
        super(str, th);
        ExceptionType exceptionType = ExceptionType.UNDEFINED;
        this.type = exceptionType;
        this.code = exceptionType.ordinal();
    }
}
