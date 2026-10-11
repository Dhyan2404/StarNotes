package com.onyx.galaxy.note.member.service;

import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.galaxy.note.member.data.ChargeFeatureBean;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H'¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/service/MemberService;", "", "getMemberChargeData", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;", "from", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface MemberService {
    @GET("membership/current")
    @NotNull
    Call<DataResponse<ChargeFeatureBean>> getMemberChargeData(@NotNull @Query("triggerFrom") String from);
}
