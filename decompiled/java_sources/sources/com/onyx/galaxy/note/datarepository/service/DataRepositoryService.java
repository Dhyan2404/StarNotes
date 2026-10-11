package com.onyx.galaxy.note.datarepository.service;

import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.ListDataResponse;
import com.onyx.galaxy.note.datarepository.bean.AttachmentBean;
import com.onyx.galaxy.note.datarepository.bean.BatchUpdateArgs;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.bean.ShareResourceBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H'J\u001e\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\b\b\u0001\u0010\u000b\u001a\u00020\fH'J\u001e\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\b\b\u0001\u0010\u000f\u001a\u00020\fH'J\u001e\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\b\b\u0001\u0010\u000f\u001a\u00020\fH'¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/service/DataRepositoryService;", "", "batchUpdateResource", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/ListDataResponse;", "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "args", "Lcom/onyx/galaxy/note/datarepository/bean/BatchUpdateArgs;", "loadShareResource", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceBean;", "code", "", "loadStickerAttachment", "Lcom/onyx/galaxy/note/datarepository/bean/AttachmentBean;", "id", "loadTemplateAttachment", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface DataRepositoryService {
    @POST("resource/batchUpdate")
    @NotNull
    Call<ListDataResponse<LibraryBean>> batchUpdateResource(@Body @NotNull BatchUpdateArgs args);

    @GET("resource/shareCode")
    @NotNull
    Call<DataResponse<ShareResourceBean>> loadShareResource(@NotNull @Query("code") String code);

    @GET("user/resSticker/{id}/attachment")
    @NotNull
    Call<ListDataResponse<AttachmentBean>> loadStickerAttachment(@Path("id") @NotNull String id);

    @GET("user/template/{id}/attachment")
    @NotNull
    Call<ListDataResponse<AttachmentBean>> loadTemplateAttachment(@Path("id") @NotNull String id);
}
