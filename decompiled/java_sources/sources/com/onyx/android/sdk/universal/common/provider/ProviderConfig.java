package com.onyx.android.sdk.universal.common.provider;

import com.onyx.android.sdk.base.utils.ResManager;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/common/provider/ProviderConfig;", "", "()V", "getFileProviderAuthorities", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ProviderConfig {

    @NotNull
    public static final ProviderConfig INSTANCE = new ProviderConfig();

    @NotNull
    public final String getFileProviderAuthorities() {
        return ResManager.INSTANCE.getAppContext().getPackageName() + ".fileprovider";
    }
}
