package com.onyx.android.sdk.base.common.error;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0017\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/base/common/error/BaseError;", "", "()V", "ACTION_ABORT", "", "ASSERT_FAIL", "BITMAP_TOO_LARGE", "DATA_TOO_LARGE", "ERROR", "", "EXCEED_MAX_DEVICE_LIMIT", "FILE_TOO_LARGE_SYMBOL", "FILE_TOO_LARGE_SYMBOL_1", "NONE", "NO_SPACE_LEFT_ON_DEVICE_SYMBOL", "NO_SPACE_LEFT_ON_DEVICE_SYMBOL_1", "NULL_OBJECT", "SUCCESS", "UNDEFINED", "WORK_ON_MAIN_THREAD", "isFileTooLarge", "", "message", "isNoSpace", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BaseError {

    @NotNull
    public static final String ACTION_ABORT = "Action Abort";

    @NotNull
    public static final String ASSERT_FAIL = "Condition Not Matched";

    @NotNull
    public static final String BITMAP_TOO_LARGE = "Bitmap Too Large";

    @NotNull
    public static final String DATA_TOO_LARGE = "Data Too Large";
    public static final int ERROR = -1;

    @NotNull
    public static final String EXCEED_MAX_DEVICE_LIMIT = "Exceed Max Device Limit";

    @NotNull
    public static final String FILE_TOO_LARGE_SYMBOL = "EFBIG";

    @NotNull
    public static final String FILE_TOO_LARGE_SYMBOL_1 = "File too large";

    @NotNull
    public static final BaseError INSTANCE = new BaseError();

    @NotNull
    public static final String NONE = "None";

    @NotNull
    public static final String NO_SPACE_LEFT_ON_DEVICE_SYMBOL = "ENOSPC";

    @NotNull
    public static final String NO_SPACE_LEFT_ON_DEVICE_SYMBOL_1 = "No space left on device";

    @NotNull
    public static final String NULL_OBJECT = "Object Can Not Be Null";
    public static final int SUCCESS = 0;

    @NotNull
    public static final String UNDEFINED = "Undefined";

    @NotNull
    public static final String WORK_ON_MAIN_THREAD = "Not Allowed On Main Thread";

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isFileTooLarge(@org.jetbrains.annotations.Nullable java.lang.String r5) {
        /*
            r4 = this;
            r4 = 0
            r0 = 2
            r1 = 1
            r2 = 0
            if (r5 == 0) goto L10
            java.lang.String r3 = "EFBIG"
            boolean r3 = kotlin.text.StringsKt.contains$default(r5, r3, r2, r0, r4)
            if (r3 != r1) goto L10
            r3 = r1
            goto L11
        L10:
            r3 = r2
        L11:
            if (r3 != 0) goto L24
            if (r5 == 0) goto L1f
            java.lang.String r3 = "File too large"
            boolean r4 = kotlin.text.StringsKt.contains$default(r5, r3, r2, r0, r4)
            if (r4 != r1) goto L1f
            r4 = r1
            goto L20
        L1f:
            r4 = r2
        L20:
            if (r4 == 0) goto L23
            goto L24
        L23:
            r1 = r2
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.common.error.BaseError.isFileTooLarge(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isNoSpace(@org.jetbrains.annotations.Nullable java.lang.String r5) {
        /*
            r4 = this;
            r4 = 0
            r0 = 2
            r1 = 1
            r2 = 0
            if (r5 == 0) goto L10
            java.lang.String r3 = "ENOSPC"
            boolean r3 = kotlin.text.StringsKt.contains$default(r5, r3, r2, r0, r4)
            if (r3 != r1) goto L10
            r3 = r1
            goto L11
        L10:
            r3 = r2
        L11:
            if (r3 != 0) goto L24
            if (r5 == 0) goto L1f
            java.lang.String r3 = "No space left on device"
            boolean r4 = kotlin.text.StringsKt.contains$default(r5, r3, r2, r0, r4)
            if (r4 != r1) goto L1f
            r4 = r1
            goto L20
        L1f:
            r4 = r2
        L20:
            if (r4 == 0) goto L23
            goto L24
        L23:
            r1 = r2
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.common.error.BaseError.isNoSpace(java.lang.String):boolean");
    }
}
