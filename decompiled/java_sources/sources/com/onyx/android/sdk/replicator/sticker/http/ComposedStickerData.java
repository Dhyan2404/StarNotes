package com.onyx.android.sdk.replicator.sticker.http;

import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerRelationModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016R(\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0005\u001a\u0004\b\r\u0010\u0007\"\u0004\b\u000e\u0010\tR(\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0005\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\t¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;", "", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "a", "Ljava/util/List;", "getStickers", "()Ljava/util/List;", "setStickers", "(Ljava/util/List;)V", "stickers", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "b", "getCategories", "setCategories", "categories", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;", "c", "getStickerCategoryShips", "setStickerCategoryShips", "stickerCategoryShips", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ComposedStickerData {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<StickerModel> stickers;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<StickerCategoryModel> categories;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<StickerRelationModel> stickerCategoryShips;

    public ComposedStickerData() {
        List<StickerModel> emptyList;
        List<StickerCategoryModel> emptyList2;
        List<StickerRelationModel> emptyList3;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.stickers = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.categories = emptyList2;
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        this.stickerCategoryShips = emptyList3;
    }

    @NotNull
    public final List<StickerCategoryModel> getCategories() {
        return this.categories;
    }

    @NotNull
    public final List<StickerRelationModel> getStickerCategoryShips() {
        return this.stickerCategoryShips;
    }

    @NotNull
    public final List<StickerModel> getStickers() {
        return this.stickers;
    }

    public final void setCategories(@NotNull List<StickerCategoryModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.categories = list;
    }

    public final void setStickerCategoryShips(@NotNull List<StickerRelationModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.stickerCategoryShips = list;
    }

    public final void setStickers(@NotNull List<StickerModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.stickers = list;
    }
}
