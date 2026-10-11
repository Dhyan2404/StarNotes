package com.onyx.android.sdk.replicator.sticker.model;

import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.common.data.DataScope;
import com.onyx.android.sdk.data.common.data.StorageLocation;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0002\u001a$\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0010\u0010\n\u001a\f\u0012\u0004\u0012\u00020\u00070\u000bj\u0002`\f¨\u0006\r"}, m61528d2 = {"getSavedFile", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "isNormalSticker", "", "isSaved", "loadInto", "", "imageView", "Landroid/widget/ImageView;", "onSuccess", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StickerModelKt {
    @NotNull
    public static final String getSavedFile(@NotNull StickerModel stickerModel) {
        Intrinsics.checkNotNullParameter(stickerModel, "<this>");
        return PathManager.INSTANCE.getFile(StorageLocation.PRIVATE_FILE, DataScope.USER, "sticker", stickerModel.getUniqueId(), StringKt.trimLeftChars(stickerModel.getFormat(), "."));
    }

    public static final boolean isNormalSticker(@NotNull StickerModel stickerModel) {
        Intrinsics.checkNotNullParameter(stickerModel, "<this>");
        return !Intrinsics.areEqual(stickerModel.getUniqueId(), StickerValues.STICKER_MATERIAL_ADD_ID);
    }

    public static final boolean isSaved(@NotNull StickerModel stickerModel) {
        Intrinsics.checkNotNullParameter(stickerModel, "<this>");
        return new File(getSavedFile(stickerModel)).exists();
    }

    public static final void loadInto(@NotNull StickerModel stickerModel, @NotNull ImageView imageView, @NotNull Function0<Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(stickerModel, "<this>");
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        String savedFile = getSavedFile(stickerModel);
        if (isSaved(stickerModel)) {
            Glide.with(imageView).load(savedFile).placeholder(imageView.getDrawable()).into(imageView);
        } else {
            GlideExt.INSTANCE.loadAndSave(imageView, stickerModel.getImageUrl(), savedFile, onSuccess);
        }
    }
}
