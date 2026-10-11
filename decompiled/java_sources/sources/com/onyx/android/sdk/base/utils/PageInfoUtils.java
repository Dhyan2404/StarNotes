package com.onyx.android.sdk.base.utils;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006R\u0014\u0010\u000b\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0014\u0010\u000e\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\fR\u0014\u0010\u0010\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\fR\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/PageInfoUtils;", "", "", "position", "", "isValidPosition", "", "page", "isValidPage", "positionInt", "isValidPositionInt", "INVALID_PAGE_NUMBER", "I", "INVALID_POSITION_INT", "INVALID_PAGE_ID_JSON_HASH_CODE", "INVALID_LINE_NUMBER", "INVALID_PARAGRAPH_NUMBER", "a", Constants.STRING_SIG, "getINVALID_POSITION", "()Ljava/lang/String;", "INVALID_POSITION", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PageInfoUtils {

    @NotNull
    public static final PageInfoUtils INSTANCE = new PageInfoUtils();
    public static final int INVALID_LINE_NUMBER = -1;
    public static final int INVALID_PAGE_ID_JSON_HASH_CODE = -1;
    public static final int INVALID_PAGE_NUMBER = -1;
    public static final int INVALID_PARAGRAPH_NUMBER = -1;
    public static final int INVALID_POSITION_INT = -1;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public static final String INVALID_POSITION = null;

    @Nullable
    public final String getINVALID_POSITION() {
        return INVALID_POSITION;
    }

    public final boolean isValidPage(int page) {
        return page >= 0;
    }

    public final boolean isValidPosition(@Nullable String position) {
        return true ^ (position == null || position.length() == 0);
    }

    public final boolean isValidPositionInt(int positionInt) {
        return positionInt >= 0;
    }
}
