package com.onyx.galaxy.note.category.cloud;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H'J\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\b\b\u0001\u0010\n\u001a\u00020\u000bH'¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/CoverPaperService;", "", "loadCoverData", "Lretrofit2/Call;", "Lcom/onyx/galaxy/note/category/cloud/CoverPaperFetchResponse;", "loadPaperData", "loadResourceData", "Lcom/onyx/galaxy/note/category/cloud/ResourceFetchResponse;", "loadResourceRelation", "Lcom/onyx/galaxy/note/category/cloud/ResourceRelationFetchResponse;", "type", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface CoverPaperService {
    @GET("covers")
    @NotNull
    Call<CoverPaperFetchResponse> loadCoverData();

    @GET("templates")
    @NotNull
    Call<CoverPaperFetchResponse> loadPaperData();

    @GET("resource")
    @NotNull
    Call<ResourceFetchResponse> loadResourceData();

    @GET("resource/relation")
    @NotNull
    Call<ResourceRelationFetchResponse> loadResourceRelation(@NotNull @Query("target") String type);
}
