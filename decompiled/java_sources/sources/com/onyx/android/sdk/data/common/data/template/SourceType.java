package com.onyx.android.sdk.data.common.data.template;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/SourceType;", "", "()V", "CLOUD", "", "CUSTOM_COVER", "", "CUSTOM_PAGE", "CUSTOM_TYPE_NAME", "LOCAL_CUSTOM_IMPORT", "MATERIALS", "OFFICIAL", "OFFICIAL_TYPE_NAME", "getSourceTypeName", "type", "isOfficialType", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SourceType {
    public static final int CLOUD = 2;

    @NotNull
    public static final String CUSTOM_COVER = "custom_cover";

    @NotNull
    public static final String CUSTOM_PAGE = "custom_page";

    @NotNull
    private static final String CUSTOM_TYPE_NAME = "custom";

    @NotNull
    public static final SourceType INSTANCE = new SourceType();
    public static final int LOCAL_CUSTOM_IMPORT = 1;
    public static final int MATERIALS = 3;
    public static final int OFFICIAL = 0;

    @NotNull
    private static final String OFFICIAL_TYPE_NAME = "official";

    private SourceType() {
    }

    @NotNull
    public final String getSourceTypeName(int type) {
        return type == 1 ? "custom" : OFFICIAL_TYPE_NAME;
    }

    public final boolean isOfficialType(int type) {
        return type == 0 || type == 2;
    }
}
