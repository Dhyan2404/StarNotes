package com.onyx.galaxy.note.common.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/LoginConfig;", "", "loginPrimaryType", "", "timeout", "", "hasPhoneLaw", "", "(Ljava/lang/String;JZ)V", "getHasPhoneLaw", Constants.BOOLEAN_VALUE_SIG, "getLoginPrimaryType", "()Ljava/lang/String;", "getTimeout", "()J", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class LoginConfig {
    public static final long COUNT_DOWN_TIME_SECOND_LONG = 120;
    public static final long COUNT_DOWN_TIME_SECOND_SHORT = 60;

    @NotNull
    public static final String LOGIN_PRIMARY_TYPE_EMAIL = "email";

    @NotNull
    public static final String LOGIN_PRIMARY_TYPE_PHONE = "phone";
    private final boolean hasPhoneLaw;

    @NotNull
    private final String loginPrimaryType;
    private final long timeout;

    public LoginConfig() {
        this(null, 0L, false, 7, null);
    }

    public final boolean getHasPhoneLaw() {
        return this.hasPhoneLaw;
    }

    @NotNull
    public final String getLoginPrimaryType() {
        return this.loginPrimaryType;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    public LoginConfig(@NotNull String loginPrimaryType, long j, boolean z) {
        Intrinsics.checkNotNullParameter(loginPrimaryType, "loginPrimaryType");
        this.loginPrimaryType = loginPrimaryType;
        this.timeout = j;
        this.hasPhoneLaw = z;
    }

    public /* synthetic */ LoginConfig(String str, long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "email" : str, (i & 2) != 0 ? 120L : j, (i & 4) != 0 ? false : z);
    }
}
