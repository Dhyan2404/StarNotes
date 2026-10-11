package com.onyx.android.sdk.cloudstorage.provider.baiduyun;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUploadHostBean;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunUserBean;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.Streaming;
import retrofit2.http.Url;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0016\b\u0001\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H'J2\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\u0016\b\u0001\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H'J\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00032\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0007H'J^\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00072\b\b\u0001\u0010\u0012\u001a\u00020\u00132\b\b\u0001\u0010\u0014\u001a\u00020\u00132\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0007H'JH\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u00072\b\b\u0001\u0010\u0019\u001a\u00020\u00132\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u0007H'J0\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\u0014\b\u0001\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H'J\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0007H'Jj\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\b\b\u0001\u0010 \u001a\u00020\u00072\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\"\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00072\b\b\u0001\u0010%\u001a\u00020&2\n\b\u0001\u0010'\u001a\u0004\u0018\u00010(H'J&\u0010)\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0016\b\u0001\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H'J&\u0010*\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0016\b\u0001\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H'J2\u0010+\u001a\b\u0012\u0004\u0012\u00020,0\u00032\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\u0007H'¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;", "", "accessToken", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "queryMap", "", "", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;", "method", Constant.MAP_TAG, "downloadFile", "Lokhttp3/ResponseBody;", "fileUrl", "fetchFiles", "web", CouchFieldKey.KEY_DIR, TypedValues.CycleType.S_WAVE_OFFSET, "", "limit", "sortBy", Constants.ATTRNAME_ORDER, "operateFile", "opera", "async", "jsonArray", "strategy", "panFileRequest", "panNasRequest", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;", "panSuperFileRequest", "url", "token", "type", "path", BaiduYunConstant.UPLOAD_ID, "partseq", "", "file", "Lokhttp3/MultipartBody$Part;", "queryFile", "searchFile", "uploadHost", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface BaiduYunService {
    @GET("token")
    @NotNull
    Call<BaiduYunTokenResponse> accessToken(@QueryMap @NotNull Map<String, String> queryMap);

    @FormUrlEncoded
    @POST("/rest/2.0/xpan/file")
    @NotNull
    Call<BaiduYunFileResponseBody> createFolder(@Nullable @Query("method") String method, @FieldMap @Nullable Map<String, String> map);

    @Streaming
    @GET
    @NotNull
    Call<ResponseBody> downloadFile(@Url @Nullable String fileUrl);

    @GET("/rest/2.0/xpan/file")
    @NotNull
    Call<BaiduYunFileResponseBody> fetchFiles(@Nullable @Query("method") String method, @Nullable @Query("web") String web, @Nullable @Query("dir") String dir, @Query("start") int offset, @Query("limit") int limit, @Nullable @Query("order") String sortBy, @Nullable @Query("desc") String order);

    @FormUrlEncoded
    @POST("/rest/2.0/xpan/file")
    @NotNull
    Call<BaiduYunFileResponseBody> operateFile(@Nullable @Query("method") String method, @Nullable @Query("opera") String opera, @Field("async") int async, @Field("filelist") @Nullable String jsonArray, @Field("ondup") @Nullable String strategy);

    @FormUrlEncoded
    @POST("/rest/2.0/xpan/file")
    @NotNull
    Call<BaiduYunFileResponseBody> panFileRequest(@Nullable @Query("method") String method, @FieldMap @NotNull Map<String, String> map);

    @GET("/rest/2.0/xpan/nas")
    @NotNull
    Call<BaiduYunUserBean> panNasRequest(@Nullable @Query("method") String method);

    @POST
    @NotNull
    @Multipart
    Call<BaiduYunFileResponseBody> panSuperFileRequest(@Url @NotNull String url, @Nullable @Query("access_token") String token, @Nullable @Query("method") String method, @Nullable @Query("type") String type, @Nullable @Query("path") String path, @Nullable @Query("uploadid") String uploadid, @Query("partseq") long partseq, @Nullable @Part MultipartBody.Part file);

    @GET("/rest/2.0/xpan/multimedia")
    @NotNull
    Call<BaiduYunFileResponseBody> queryFile(@QueryMap @Nullable Map<String, String> map);

    @GET("/rest/2.0/xpan/file")
    @NotNull
    Call<BaiduYunFileResponseBody> searchFile(@QueryMap @Nullable Map<String, String> queryMap);

    @GET("/rest/2.0/pcs/file?method=locateupload&appid=250528&upload_version=2.0")
    @NotNull
    Call<BaiduYunUploadHostBean> uploadHost(@Nullable @Query("access_token") String token, @Nullable @Query("uploadid") String uploadid, @Nullable @Query("path") String path);
}
