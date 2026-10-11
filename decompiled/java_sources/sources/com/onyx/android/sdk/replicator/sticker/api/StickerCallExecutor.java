package com.onyx.android.sdk.replicator.sticker.api;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.RetrofitUtils;
import com.onyx.android.sdk.replicator.sticker.http.DataEmptyStickerResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryCreateRequest;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryCreateResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryDeleteResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryMoveRequest;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryQueryResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryUpdateRequest;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryUpdateResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCreateResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerDeleteResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerQueryResponse;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0006J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/api/StickerCallExecutor;", "", "()V", "addSticker", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;", "file", "", "name", "category", "addStickerCategory", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateResponse;", CouchFieldKey.KEY_PARENT_ID, "deleteSticker", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerDeleteResponse;", "id", "deleteStickerCategory", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;", "loadSticker", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerQueryResponse;", "loadStickerCategory", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;", "moveStickerCategory", "Lcom/onyx/android/sdk/replicator/sticker/http/DataEmptyStickerResponse;", "sticker", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "newCategoryId", "updateStickerCategory", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StickerCallExecutor {

    @NotNull
    public static final StickerCallExecutor INSTANCE = new StickerCallExecutor();

    @NotNull
    public final StickerCreateResponse addSticker(@NotNull String file, @NotNull String name, @NotNull String category) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(category, "category");
        RetrofitUtils retrofitUtils = RetrofitUtils.INSTANCE;
        StickerCreateResponse body = StickerApiManager.INSTANCE.getStickerApi().add(retrofitUtils.createFileBody(null, file), retrofitUtils.createTextBody(name), retrofitUtils.createTextBody(category)).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @NotNull
    public final StickerCategoryCreateResponse addStickerCategory(@NotNull String name, @NotNull String parentId) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(parentId, "parentId");
        StickerCategoryCreateResponse body = StickerApiManager.INSTANCE.getStickerCategoryApi().add(new StickerCategoryCreateRequest(name, parentId)).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @NotNull
    public final StickerDeleteResponse deleteSticker(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        StickerDeleteResponse body = StickerApiManager.INSTANCE.getStickerApi().delete(id).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @NotNull
    public final StickerCategoryDeleteResponse deleteStickerCategory(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        StickerCategoryDeleteResponse body = StickerApiManager.INSTANCE.getStickerCategoryApi().delete(id).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @NotNull
    public final StickerQueryResponse loadSticker() {
        StickerQueryResponse body = StickerApiManager.INSTANCE.getStickerApi().load().execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @NotNull
    public final StickerCategoryQueryResponse loadStickerCategory() {
        StickerCategoryQueryResponse body = StickerApiManager.INSTANCE.getStickerCategoryApi().load().execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @NotNull
    public final DataEmptyStickerResponse moveStickerCategory(@NotNull StickerModel sticker, @NotNull String newCategoryId) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        Intrinsics.checkNotNullParameter(newCategoryId, "newCategoryId");
        DataEmptyStickerResponse body = StickerApiManager.INSTANCE.getStickerCategoryApi().move(new StickerCategoryMoveRequest(sticker.getUniqueId(), newCategoryId)).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }

    @NotNull
    public final StickerCategoryUpdateResponse updateStickerCategory(@NotNull String id, @NotNull String name) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        StickerCategoryUpdateResponse body = StickerApiManager.INSTANCE.getStickerCategoryApi().update(new StickerCategoryUpdateRequest(id, name)).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }
}
