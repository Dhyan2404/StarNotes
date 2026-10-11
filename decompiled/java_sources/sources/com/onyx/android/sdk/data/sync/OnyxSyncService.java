package com.onyx.android.sdk.data.sync;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.sync.bean.ChannelResponseBean;
import com.onyx.android.sdk.data.sync.bean.NoteUsageInfo;
import com.onyx.android.sdk.data.sync.bean.SyncGatewayResponse;
import com.onyx.android.sdk.data.sync.bean.UpdateSyncChannelBody;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007H'J \u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00040\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0007H'J\u001e\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00040\u00032\b\b\u0001\u0010\f\u001a\u00020\rH'J,\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00040\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0011H'¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/sync/OnyxSyncService;", "", "checkSyncUser", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "", "userName", "", "getSyncGateway", "Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;", "token", "submitNoteUsageInfo", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "updateSyncChannels", "Lcom/onyx/android/sdk/data/sync/bean/ChannelResponseBean;", "body", "Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface OnyxSyncService {
    @FormUrlEncoded
    @POST("users/checkSyncUser")
    @NotNull
    Call<DataResponse<Boolean>> checkSyncUser(@Field("mac") @Nullable String userName);

    @GET("users/syncToken")
    @NotNull
    Call<DataResponse<SyncGatewayResponse>> getSyncGateway(@Header("authorization") @Nullable String token);

    @POST("note/submit")
    @NotNull
    Call<DataResponse<Object>> submitNoteUsageInfo(@Body @NotNull NoteUsageInfo info);

    @POST("users/updateSyncChannels")
    @NotNull
    Call<DataResponse<ChannelResponseBean>> updateSyncChannels(@Header("authorization") @Nullable String token, @Body @Nullable UpdateSyncChannelBody body);
}
