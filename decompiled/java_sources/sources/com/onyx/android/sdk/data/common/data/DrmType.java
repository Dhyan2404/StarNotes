package com.onyx.android.sdk.data.common.data;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/DrmType;", "", "()V", "BUILTIN_PASSWORD", "", "NONE", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "isDrmDocument", "", "drmType", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DrmType {
    public static final int BUILTIN_PASSWORD = 2;

    @NotNull
    public static final DrmType INSTANCE = new DrmType();
    public static final int NONE = 1;
    public static final int UNKNOWN = 0;

    private DrmType() {
    }

    public final boolean isDrmDocument(int drmType) {
        return drmType == 2;
    }
}
