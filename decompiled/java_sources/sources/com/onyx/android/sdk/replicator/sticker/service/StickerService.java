package com.onyx.android.sdk.replicator.sticker.service;

import com.onyx.android.sdk.replicator.sticker.http.StickerCreateResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerDeleteResponse;
import com.onyx.android.sdk.replicator.sticker.http.StickerQueryResponse;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\bH'J\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00032\b\b\u0001\u0010\f\u001a\u00020\rH'J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0003H'¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/service/StickerService;", "", "add", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerCreateResponse;", "file", "Lokhttp3/MultipartBody$Part;", "name", "Lokhttp3/RequestBody;", "category", "delete", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerDeleteResponse;", "id", "", "load", "Lcom/onyx/android/sdk/replicator/sticker/http/StickerQueryResponse;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface StickerService {
    @POST("stickers/")
    @NotNull
    @Multipart
    Call<StickerCreateResponse> add(@NotNull @Part MultipartBody.Part file, @NotNull @Part("name") RequestBody name, @NotNull @Part("category") RequestBody category);

    @DELETE("stickers/{id}")
    @NotNull
    Call<StickerDeleteResponse> delete(@Path("id") @NotNull String id);

    @GET("stickers/")
    @NotNull
    Call<StickerQueryResponse> load();
}
