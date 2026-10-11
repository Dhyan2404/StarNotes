package com.onyx.android.sdk.base.data.config;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bJ\u0010\u0010\t\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/config/GlobalConfig;", "", "()V", "GLOBAL_CONFIG_RAW_NAME", "", "globalConfigBean", "Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;", "getInternalRecognizerLangList", "", "init", "", "isDefaultFilterByDocTypes", "", "isShareResourceEnable", "isStorageManagerEnable", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GlobalConfig {

    @NotNull
    public static final String GLOBAL_CONFIG_RAW_NAME = "global_config";

    @NotNull
    public static final GlobalConfig INSTANCE = new GlobalConfig();

    @Nullable
    private static GlobalConfigBean globalConfigBean;

    private GlobalConfig() {
    }

    @Nullable
    public final List<String> getInternalRecognizerLangList() {
        GlobalConfigBean globalConfigBean2 = globalConfigBean;
        if (globalConfigBean2 != null) {
            return globalConfigBean2.getInternalRecognizerLangList();
        }
        return null;
    }

    public final void init(@Nullable GlobalConfigBean globalConfigBean2) {
        globalConfigBean = globalConfigBean2;
    }

    public final boolean isDefaultFilterByDocTypes() {
        GlobalConfigBean globalConfigBean2 = globalConfigBean;
        if (globalConfigBean2 != null) {
            return globalConfigBean2.getFilterByDocTypes();
        }
        return true;
    }

    public final boolean isShareResourceEnable() {
        GlobalConfigBean globalConfigBean2 = globalConfigBean;
        if (globalConfigBean2 != null) {
            return globalConfigBean2.getShareResourceEnable();
        }
        return false;
    }

    public final boolean isStorageManagerEnable() {
        GlobalConfigBean globalConfigBean2 = globalConfigBean;
        if (globalConfigBean2 != null) {
            return globalConfigBean2.getStorageManagerEnable();
        }
        return false;
    }
}
