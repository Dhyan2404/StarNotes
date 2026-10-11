package com.onyx.android.sdk.data.common.data.template;

import com.onyx.galaxy.note.datarepository.constants.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/TemplateCoverConstant;", "", "()V", "COVER", "", "COVER_CATEGORY_JSON_FILE_NAME", "CURRENT_COVER_REVISION", "", "CURRENT_TEMPLATE_REVISION", Constants.RESOURCE_TYPE_TEMPLATE, "TEMPLATE_CATEGORY_JSON_FILE_NAME", "isLatestCoverRevision", "", "revision", "isLatestTemplateRevision", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TemplateCoverConstant {

    @NotNull
    public static final String COVER = "cover";

    @NotNull
    public static final String COVER_CATEGORY_JSON_FILE_NAME = "category_cover";
    public static final int CURRENT_COVER_REVISION = 18;
    public static final int CURRENT_TEMPLATE_REVISION = 24;

    @NotNull
    public static final TemplateCoverConstant INSTANCE = new TemplateCoverConstant();

    @NotNull
    public static final String TEMPLATE = "template";

    @NotNull
    public static final String TEMPLATE_CATEGORY_JSON_FILE_NAME = "category_template";

    private TemplateCoverConstant() {
    }

    public final boolean isLatestCoverRevision(int revision) {
        return revision >= 18;
    }

    public final boolean isLatestTemplateRevision(int revision) {
        return revision >= 24;
    }
}
