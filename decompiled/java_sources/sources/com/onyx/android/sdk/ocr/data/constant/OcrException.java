package com.onyx.android.sdk.ocr.data.constant;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000 \u00132\u00060\u0001j\u0002`\u0002:\u0001\u0013B\u0011\b\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005B\u0019\b\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0005¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "message", "", "(Ljava/lang/String;)V", "e", "", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "code", "", "getCode", "()I", "setCode", "(I)V", "type", "getType", "()Ljava/lang/String;", "setType", "Companion", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class OcrException extends RuntimeException {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final OcrException NONE;
    private int code;

    @NotNull
    private String type;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\tJ(\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\rR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;", "", "()V", "NONE", "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "getNONE", "()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;", "of", "typeAndMessage", "", "type", "message", "code", "", "e", "", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OcrException getNONE() {
            return OcrException.NONE;
        }

        @NotNull
        /* renamed from: of */
        public final OcrException m34228of(@NotNull String typeAndMessage) {
            Intrinsics.checkNotNullParameter(typeAndMessage, "typeAndMessage");
            return m34229of(typeAndMessage, typeAndMessage);
        }

        public Companion() {
        }

        @NotNull
        /* renamed from: of */
        public final OcrException m34229of(@NotNull String type, @NotNull String message) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(message, "message");
            return m34230of(type, message, -1);
        }

        @NotNull
        /* renamed from: of */
        public final OcrException m34230of(@NotNull String type, @NotNull String message, int code) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(message, "message");
            OcrException ocrException = new OcrException(message, (DefaultConstructorMarker) null);
            ocrException.setType(type);
            ocrException.setCode(code);
            return ocrException;
        }

        @NotNull
        /* renamed from: of */
        public final OcrException m34231of(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            String simpleName = e.getClass().getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            return m34233of(e, simpleName, e.getMessage(), -1);
        }

        @NotNull
        /* renamed from: of */
        public final OcrException m34232of(@NotNull Throwable e, @NotNull String message) {
            Intrinsics.checkNotNullParameter(e, "e");
            Intrinsics.checkNotNullParameter(message, "message");
            String simpleName = e.getClass().getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            return m34233of(e, simpleName, message, -1);
        }

        @NotNull
        /* renamed from: of */
        public final OcrException m34233of(@NotNull Throwable e, @NotNull String type, @Nullable String message, int code) {
            Intrinsics.checkNotNullParameter(e, "e");
            Intrinsics.checkNotNullParameter(type, "type");
            if (message == null) {
                message = "";
            }
            OcrException ocrException = new OcrException(e, message, null);
            ocrException.setType(type);
            ocrException.setCode(code);
            return ocrException;
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        NONE = companion.m34230of("None", "None", 0);
    }

    public /* synthetic */ OcrException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public /* synthetic */ OcrException(Throwable th, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, str);
    }

    private OcrException(String str) {
        super(str);
        this.type = OcrValues.ERROR_UNDEFINED;
        this.code = -1;
    }

    private OcrException(Throwable th, String str) {
        super(str, th);
        this.type = OcrValues.ERROR_UNDEFINED;
        this.code = -1;
    }
}
