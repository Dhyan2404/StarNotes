package com.onyx.android.sdk.replicator.common;

import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.replicator.font.FontListQueryResponse;
import com.onyx.android.sdk.replicator.font.FontResourceList;
import com.onyx.android.sdk.replicator.note.p035db.model.FetchHwrResourceListResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\b\b\u0001\u0010\u0007\u001a\u00020\bH'J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\u0003H'¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/common/NoteService;", "", "loadFontList", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/replicator/font/FontListQueryResponse;", "loadHwrResourceList", "Lcom/onyx/android/sdk/replicator/note/db/model/FetchHwrResourceListResponse;", "engine", "", "loadInkFontList", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/replicator/font/FontResourceList;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface NoteService {
    @GET("fonts/")
    @NotNull
    Call<FontListQueryResponse> loadFontList();

    @GET("engine/handwritingRecognition/resource")
    @NotNull
    Call<FetchHwrResourceListResponse> loadHwrResourceList(@NotNull @Query("engine") String engine);

    @GET("fonts/neatHandwriting")
    @NotNull
    Call<DataResponse<FontResourceList>> loadInkFontList();
}
