package com.onyx.android.sdk.data.common.data.template;

import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;", "", "()V", "TYPE_DYNAMIC", "", "TYPE_PDF", "TYPE_PICTURE", "TYPE_VECTOR", "getPageMarginTemplateFile", "Ljava/io/File;", "documentId", "templateResourceId", "getResourceType", HuaweiYunQueryArgs.FILE_NAME, "isPictureOrPDF", "", "resourceType", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TemplateResourceConstant {

    @NotNull
    public static final TemplateResourceConstant INSTANCE = new TemplateResourceConstant();

    @NotNull
    public static final String TYPE_DYNAMIC = "dynamic";

    @NotNull
    public static final String TYPE_PDF = "pdf";

    @NotNull
    public static final String TYPE_PICTURE = "picture";

    @NotNull
    public static final String TYPE_VECTOR = "vector";

    private TemplateResourceConstant() {
    }

    @Nullable
    public final File getPageMarginTemplateFile(@NotNull String documentId, @Nullable String templateResourceId) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        if (templateResourceId == null || templateResourceId.length() == 0) {
            return null;
        }
        return TemplatePaths.INSTANCE.appDocPageMarginTemplateJsonPath(documentId, templateResourceId).toFile();
    }

    @NotNull
    public final String getResourceType(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        FileExtensionUtils fileExtensionUtils = FileExtensionUtils.INSTANCE;
        if (fileExtensionUtils.isImageFile(fileName)) {
            return TYPE_PICTURE;
        }
        fileExtensionUtils.isPdfFile(fileName);
        return "pdf";
    }

    public final boolean isPictureOrPDF(@Nullable String resourceType) {
        return Intrinsics.areEqual(resourceType, "pdf") || Intrinsics.areEqual(resourceType, TYPE_PICTURE);
    }
}
