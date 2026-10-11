package com.onyx.android.sdk.data.common.cloud.service;

import com.onyx.android.sdk.data.cluster.ClusterManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0013\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/service/WebpageService;", "", "()V", "KEY_FROM", "", "KEY_TYPE", "PATH_ACCOUNT_LOGOFF", "PATH_DATA_REPOSITORY_CENTER", "PATH_DATA_REPOSITORY_MATERIAL", "PATH_MEMBER_CENTER", "PATH_MESSAGE_CENTER", "PATH_USER_CENTER", "TYPE_STICKER", "TYPE_TEMPLATE", "getAccountLogoffService", "getDataRepositoryService", "getGalaxyHost", "getGalaxyService", "path", "getMaterialCenterService", "getMemberCenterService", "getMessageCenterService", "getUserCenterService", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WebpageService {

    @NotNull
    public static final WebpageService INSTANCE = new WebpageService();

    @NotNull
    public static final String KEY_FROM = "from";

    @NotNull
    public static final String KEY_TYPE = "type";

    @NotNull
    public static final String PATH_ACCOUNT_LOGOFF = "delete-account";

    @NotNull
    public static final String PATH_DATA_REPOSITORY_CENTER = "library/center";

    @NotNull
    public static final String PATH_DATA_REPOSITORY_MATERIAL = "library/material";

    @NotNull
    public static final String PATH_MEMBER_CENTER = "member-center";

    @NotNull
    public static final String PATH_MESSAGE_CENTER = "message-center";

    @NotNull
    public static final String PATH_USER_CENTER = "user-center";

    @NotNull
    public static final String TYPE_STICKER = "sticker";

    @NotNull
    public static final String TYPE_TEMPLATE = "template";

    private WebpageService() {
    }

    @NotNull
    public final String getAccountLogoffService() {
        return getGalaxyService(PATH_ACCOUNT_LOGOFF);
    }

    @NotNull
    public final String getDataRepositoryService() {
        return getGalaxyService(PATH_DATA_REPOSITORY_CENTER);
    }

    @NotNull
    public final String getGalaxyHost() {
        return ClusterManager.INSTANCE.getCurClusterInfo().getClusterHost().getGalaxyHostBaseUrl();
    }

    @NotNull
    public final String getGalaxyService(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return getGalaxyHost() + '/' + path;
    }

    @NotNull
    public final String getMaterialCenterService() {
        return getGalaxyService(PATH_DATA_REPOSITORY_MATERIAL);
    }

    @NotNull
    public final String getMemberCenterService() {
        return getGalaxyService(PATH_MEMBER_CENTER);
    }

    @NotNull
    public final String getMessageCenterService() {
        return getGalaxyService(PATH_MESSAGE_CENTER);
    }

    @NotNull
    public final String getUserCenterService() {
        return getGalaxyService(PATH_USER_CENTER);
    }
}
