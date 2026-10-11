package com.onyx.android.sdk.replicator.sticker.model;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.C7594R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0004\u001a\u00020\u0001¨\u0006\u0005"}, m61528d2 = {"createCategoryAll", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", CouchFieldKey.KEY_PARENT_ID, "", "createCategoryRecent", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StickerCategoryModelKt {
    @NotNull
    public static final StickerCategoryModel createCategoryAll(@NotNull String parentId) {
        Intrinsics.checkNotNullParameter(parentId, "parentId");
        StickerCategoryModel stickerCategoryModel = new StickerCategoryModel();
        stickerCategoryModel.setUniqueId(UUIDUtils.INSTANCE.shortUUID());
        stickerCategoryModel.setType(-1);
        stickerCategoryModel.setName(ResManager.INSTANCE.getStringSafely(C7594R.string.sticker_category_all));
        stickerCategoryModel.setParentUniqueId(parentId);
        return stickerCategoryModel;
    }

    @NotNull
    public static final StickerCategoryModel createCategoryRecent() {
        StickerCategoryModel stickerCategoryModel = new StickerCategoryModel();
        stickerCategoryModel.setUniqueId(UUIDUtils.INSTANCE.shortUUID());
        stickerCategoryModel.setType(-2);
        stickerCategoryModel.setName(ResManager.INSTANCE.getStringSafely(C7594R.string.sticker_category_recent));
        return stickerCategoryModel;
    }
}
