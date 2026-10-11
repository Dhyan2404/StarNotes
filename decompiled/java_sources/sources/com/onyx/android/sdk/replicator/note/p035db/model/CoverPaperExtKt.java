package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.bean.CoverCategory;
import com.onyx.android.sdk.replicator.note.bean.TemplateCategory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\b\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\t\u001a\n\u0010\n\u001a\u00020\u0007*\u00020\u0002\u001a\n\u0010\n\u001a\u00020\u0007*\u00020\u0005¨\u0006\u000b"}, m61528d2 = {"convertToCoverCategory", "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;", "convertToTemplateCategory", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateCategoryModel;", "isCloud", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "isOfficial", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CoverPaperExtKt {
    @NotNull
    public static final CoverCategory convertToCoverCategory(@NotNull CoverCategoryModel coverCategoryModel) {
        Intrinsics.checkNotNullParameter(coverCategoryModel, "<this>");
        CoverCategory coverCategory = new CoverCategory(null, null, 0, null, 15, null);
        coverCategory.setUniqueId(coverCategoryModel.getUniqueId());
        coverCategory.setTitle(coverCategoryModel.getLocalTitle());
        coverCategory.setType(coverCategoryModel.getSource());
        if (isOfficial(coverCategoryModel)) {
            String stringSafely = ResManager.INSTANCE.getStringSafely(coverCategoryModel.getTitleResName());
            if (stringSafely == null) {
                stringSafely = "";
            }
            coverCategory.setTitle(stringSafely);
        }
        return coverCategory;
    }

    @NotNull
    public static final TemplateCategory convertToTemplateCategory(@NotNull TemplateCategoryModel templateCategoryModel) {
        Intrinsics.checkNotNullParameter(templateCategoryModel, "<this>");
        TemplateCategory templateCategory = new TemplateCategory(null, null, 0, null, 15, null);
        templateCategory.setUniqueId(templateCategoryModel.getUniqueId());
        templateCategory.setTitle(templateCategoryModel.getLocalTitle());
        templateCategory.setType(templateCategoryModel.getSource());
        if (isOfficial(templateCategoryModel)) {
            String stringSafely = ResManager.INSTANCE.getStringSafely(templateCategoryModel.getTitleResName());
            if (stringSafely == null) {
                stringSafely = "";
            }
            templateCategory.setTitle(stringSafely);
        }
        return templateCategory;
    }

    public static final boolean isCloud(@NotNull CoverModel coverModel) {
        Intrinsics.checkNotNullParameter(coverModel, "<this>");
        return coverModel.getSource() == 2;
    }

    public static final boolean isOfficial(@NotNull CoverCategoryModel coverCategoryModel) {
        Intrinsics.checkNotNullParameter(coverCategoryModel, "<this>");
        return coverCategoryModel.getSource() == 0;
    }

    public static final boolean isCloud(@NotNull TemplateModel templateModel) {
        Intrinsics.checkNotNullParameter(templateModel, "<this>");
        return templateModel.getSource() == 2;
    }

    public static final boolean isOfficial(@NotNull TemplateCategoryModel templateCategoryModel) {
        Intrinsics.checkNotNullParameter(templateCategoryModel, "<this>");
        return templateCategoryModel.getSource() == 0;
    }
}
