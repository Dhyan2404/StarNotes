package com.onyx.android.sdk.data.common.data;

import com.onyx.android.sdk.base.utils.ResManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u000e\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ErrorCode;", "", "code", "", "message", "textResId", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getCode", "()Ljava/lang/String;", "setCode", "(Ljava/lang/String;)V", "getMessage", "setMessage", "getErrorMessage", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ErrorCode {

    @NotNull
    private String code;

    @Nullable
    private String message;
    private int textResId;

    public ErrorCode(@NotNull String code, @Nullable String str, int i) {
        Intrinsics.checkNotNullParameter(code, "code");
        this.code = code;
        this.message = str;
        this.textResId = i;
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final String getErrorMessage() {
        int i = this.textResId;
        if (i != 0) {
            return ResManager.INSTANCE.getStringSafely(i);
        }
        String str = this.message;
        return str == null ? "" : str;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    public final void setCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.code = str;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }

    public /* synthetic */ ErrorCode(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? 0 : i);
    }
}
