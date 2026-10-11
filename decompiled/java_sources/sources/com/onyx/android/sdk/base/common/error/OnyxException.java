package com.onyx.android.sdk.base.common.error;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.exceptions.CompositeException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 \u00192\u00060\u0001j\u0002`\u0002:\u0001\u0019B\u0011\b\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005B\u0019\b\u0012\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\bJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0005¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/base/common/error/OnyxException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "message", "", "(Ljava/lang/String;)V", "e", "", "(Ljava/lang/Throwable;Ljava/lang/String;)V", "code", "", "getCode", "()I", "setCode", "(I)V", "ignorable", "", "getIgnorable", Constants.BOOLEAN_VALUE_SIG, "setIgnorable", "(Z)V", "type", "getType", "()Ljava/lang/String;", "setType", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxException extends RuntimeException {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final OnyxException NONE;
    private int code;
    private boolean ignorable;

    @NotNull
    private String type;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\rJ(\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u0011J\n\u0010\u0012\u001a\u00020\u0013*\u00020\nJ\n\u0010\u0014\u001a\u00020\b*\u00020\nR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;", "", "()V", "NONE", "Lcom/onyx/android/sdk/base/common/error/OnyxException;", "getNONE", "()Lcom/onyx/android/sdk/base/common/error/OnyxException;", "ignorable", "", "e", "", "of", "typeAndMessage", "", "type", "message", "code", "", "checkNoSpace", "", "isNoSpace", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void checkNoSpace(@NotNull Throwable th) {
            Intrinsics.checkNotNullParameter(th, "<this>");
            if (isNoSpace(th)) {
                throw th;
            }
        }

        @NotNull
        public final OnyxException getNONE() {
            return OnyxException.NONE;
        }

        public final boolean ignorable(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            while (e instanceof CompositeException) {
                e = ((CompositeException) e).getCause();
                Intrinsics.checkNotNullExpressionValue(e, "<get-cause>(...)");
            }
            OnyxException onyxException = e instanceof OnyxException ? (OnyxException) e : null;
            if (onyxException != null) {
                return onyxException.getIgnorable();
            }
            return false;
        }

        public final boolean isNoSpace(@NotNull Throwable th) {
            Intrinsics.checkNotNullParameter(th, "<this>");
            String message = th.getMessage();
            BaseError baseError = BaseError.INSTANCE;
            return baseError.isNoSpace(message) || baseError.isFileTooLarge(message);
        }

        @NotNull
        /* renamed from: of */
        public final OnyxException m31891of(@NotNull String typeAndMessage) {
            Intrinsics.checkNotNullParameter(typeAndMessage, "typeAndMessage");
            return m31892of(typeAndMessage, typeAndMessage);
        }

        public Companion() {
        }

        @NotNull
        /* renamed from: of */
        public final OnyxException m31892of(@NotNull String type, @NotNull String message) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(message, "message");
            return m31893of(type, message, -1);
        }

        @NotNull
        /* renamed from: of */
        public final OnyxException m31893of(@NotNull String type, @NotNull String message, int code) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(message, "message");
            OnyxException onyxException = new OnyxException(message, (DefaultConstructorMarker) null);
            onyxException.setType(type);
            onyxException.setCode(code);
            return onyxException;
        }

        @NotNull
        /* renamed from: of */
        public final OnyxException m31894of(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            String simpleName = e.getClass().getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            return m31896of(e, simpleName, e.getMessage(), -1);
        }

        @NotNull
        /* renamed from: of */
        public final OnyxException m31895of(@NotNull Throwable e, @NotNull String message) {
            Intrinsics.checkNotNullParameter(e, "e");
            Intrinsics.checkNotNullParameter(message, "message");
            String simpleName = e.getClass().getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            return m31896of(e, simpleName, message, -1);
        }

        @NotNull
        /* renamed from: of */
        public final OnyxException m31896of(@NotNull Throwable e, @NotNull String type, @Nullable String message, int code) {
            Intrinsics.checkNotNullParameter(e, "e");
            Intrinsics.checkNotNullParameter(type, "type");
            if (e instanceof OnyxException) {
                return (OnyxException) e;
            }
            if (message == null) {
                message = "";
            }
            OnyxException onyxException = new OnyxException(e, message, null);
            onyxException.setType(type);
            onyxException.setCode(code);
            return onyxException;
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        NONE = companion.m31893of("None", "None", 0);
    }

    public /* synthetic */ OnyxException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public final int getCode() {
        return this.code;
    }

    public final boolean getIgnorable() {
        return this.ignorable;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setCode(int i) {
        this.code = i;
    }

    /* renamed from: setIgnorable, reason: collision with other method in class */
    public final void m72170setIgnorable(boolean z) {
        this.ignorable = z;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public /* synthetic */ OnyxException(Throwable th, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, str);
    }

    @NotNull
    public final OnyxException setIgnorable(boolean ignorable) {
        this.ignorable = ignorable;
        return this;
    }

    private OnyxException(String str) {
        super(str);
        this.type = BaseError.UNDEFINED;
        this.code = -1;
    }

    private OnyxException(Throwable th, String str) {
        super(str, th);
        this.type = BaseError.UNDEFINED;
        this.code = -1;
    }
}
