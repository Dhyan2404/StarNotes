package com.onyx.android.sdk.data.common.data;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/FetchSource;", "", "()V", "CLOUD", "", "CLOUD_STORAGE", "IGET", "JD_CLOUD", "JD_CLOUD_TRY_READ", "JD_PRESET", "LOCAL", "ONYX_CLOUD", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FetchSource {
    public static final int CLOUD = 1;
    public static final int CLOUD_STORAGE = 10;
    public static final int IGET = 1001;

    @NotNull
    public static final FetchSource INSTANCE = new FetchSource();
    public static final int JD_CLOUD = 5;
    public static final int JD_CLOUD_TRY_READ = 2;
    public static final int JD_PRESET = 3;
    public static final int LOCAL = 0;
    public static final int ONYX_CLOUD = 4;

    private FetchSource() {
    }
}
