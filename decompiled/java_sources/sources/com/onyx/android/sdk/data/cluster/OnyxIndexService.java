package com.onyx.android.sdk.data.cluster;

import com.onyx.android.sdk.data.cluster.bean.ClusterResultBean;
import com.onyx.android.sdk.data.cluster.bean.PriorityClusterParma;
import com.onyx.android.sdk.data.cluster.bean.PriorityClusterResultBean;
import kotlin.Deprecated;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\nH'J&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\nH'¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;", "", "getPriorityServerInfo", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;", "priorityClusterParma", "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterParma;", "getSSLServerInfos", "Lcom/onyx/android/sdk/data/cluster/bean/ClusterResultBean;", "localeStr", "", "model", "getServerInfos", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface OnyxIndexService {
    @POST("api/v2/serverInfos/user")
    @NotNull
    Call<PriorityClusterResultBean> getPriorityServerInfo(@Body @NotNull PriorityClusterParma priorityClusterParma);

    @GET("serverInfos/ssl")
    @NotNull
    Call<ClusterResultBean> getSSLServerInfos(@Nullable @Query("lang") String localeStr, @Nullable @Query("model") String model);

    @Deprecated(message = "")
    @GET("serverInfos")
    @NotNull
    Call<ClusterResultBean> getServerInfos(@Nullable @Query("lang") String localeStr, @Nullable @Query("model") String model);
}
