package com.onyx.android.sdk.replicator.sticker.service;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.http.DataEmptyStickerResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryCreateRequest;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryCreateResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryDeleteResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryMoveRequest;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryQueryResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryUpdateRequest;
import com.onyx.android.sdk.replicator.sticker.http.StickerCategoryUpdateResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\b\b\u0001\u0010\t\u001a\u00020\nH'J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0003H'J\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u000fH'J\u0018\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0012H'¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/service/StickerCategoryService;", "", "add", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateResponse;", "body", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryCreateRequest;", "delete", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryDeleteResponse;", "id", "", "load", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryQueryResponse;", BaiduYunConstant.OPERATION_MOVE, "Lcom/onyx/android/sdk/replicator/sticker/http/DataEmptyStickerResponse;", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryMoveRequest;", "update", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateResponse;", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCategoryUpdateRequest;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface StickerCategoryService {
    @POST("stickers/categories/")
    @NotNull
    Call<StickerCategoryCreateResponse> add(@Body @NotNull StickerCategoryCreateRequest body);

    @DELETE("stickers/categories/{id}")
    @NotNull
    Call<StickerCategoryDeleteResponse> delete(@Path("id") @NotNull String id);

    @GET("stickers/categories/")
    @NotNull
    Call<StickerCategoryQueryResponse> load();

    @POST("stickers/categories/move")
    @NotNull
    Call<DataEmptyStickerResponse> move(@Body @NotNull StickerCategoryMoveRequest body);

    @PUT("stickers/categories/")
    @NotNull
    Call<StickerCategoryUpdateResponse> update(@Body @NotNull StickerCategoryUpdateRequest body);
}
