package com.onyx.android.sdk.cloudstorage.provider.onedrive;

import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.BatchRequest;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.BatchResponse;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveAccount;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveUploadResponseBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverFileInfoBody;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverOperationStatus;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriverUploadSession;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.util.Map;
import kotlin.Metadata;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H'J5\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u0019\b\u0001\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r0\fH'J7\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\n2\u001b\b\u0001\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r\u0018\u00010\fH'J+\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u001b\b\u0001\u0010\u0011\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r\u0018\u00010\fH'J&\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u00032\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0017H'J\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH'J7\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\n2\u001b\b\u0001\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r\u0018\u00010\fH'J\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\nH'J\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\nH'J7\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u001b\b\u0001\u0010\u001b\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r\u0018\u00010\u001fH'J\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0003H'J\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00032\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\nH'JJ\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u00032\n\b\u0001\u0010'\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010(\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010)\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010*\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\nH'J5\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u0019\b\u0001\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r0\fH'JJ\u0010-\u001a\b\u0012\u0004\u0012\u00020&0\u00032\n\b\u0001\u0010'\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010(\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010)\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010-\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010+\u001a\u0004\u0018\u00010\nH'J7\u0010.\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\u001b\b\u0001\u0010\u000b\u001a\u0015\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r\u0018\u00010\fH'J5\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\n\b\u0001\u00100\u001a\u0004\u0018\u00010\n2\u0019\b\u0001\u0010\u001b\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\r0\fH'J<\u00101\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\n2\b\b\u0001\u00102\u001a\u0002032\n\b\u0001\u00104\u001a\u0004\u0018\u00010\n2\n\b\u0001\u00105\u001a\u0004\u0018\u000106H'¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;", "", "batchProcess", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchResponse;", AbstractLogger.REQUEST, "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/BatchRequest;", "copyFile", "Lokhttp3/ResponseBody;", "id", "", "updateMap", "", "Lkotlin/jvm/JvmSuppressWildcards;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;", CouchFieldKey.KEY_PARENT_ID, "filedMap", "createRootFolder", "createUploadSession", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveUploadResponseBody;", "path", "session", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;", "deleteFile", "fetchChildrenByPath", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfoBody;", "queryMap", "fetchFileById", "fetchFileByPath", "fetchFilesById", "", "getAccount", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveAccount;", "getOperationStatus", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverOperationStatus;", "url", "loadToken", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "clientId", "redirectUri", "clientSecret", "code", "grantType", "moveFile", "refreshToken", "renameFile", "searchFiles", SearchIntents.EXTRA_QUERY, BaiduYunConstant.UPLOAD, "contentLength", "", "contentRange", "body", "Lokhttp3/RequestBody;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface OneDriveService {
    @POST("$batch")
    @NotNull
    Call<BatchResponse> batchProcess(@Body @Nullable BatchRequest request);

    @POST("me/drive/items/{id}/copy")
    @NotNull
    Call<ResponseBody> copyFile(@Path("id") @Nullable String id, @Body @NotNull Map<String, Object> updateMap);

    @POST("me/drive/items/{parent}/children")
    @NotNull
    Call<OneDriverFileInfo> createFolder(@Path("parent") @Nullable String parentId, @Body @Nullable Map<String, Object> filedMap);

    @POST("me/drive/root/children")
    @NotNull
    Call<OneDriverFileInfo> createRootFolder(@Body @Nullable Map<String, Object> filedMap);

    @POST("me/drive/root:{path}:/createUploadSession")
    @NotNull
    Call<OneDriveUploadResponseBody> createUploadSession(@Path("path") @Nullable String path, @Body @Nullable OneDriverUploadSession session);

    @DELETE("me/drive/items/{id}")
    @NotNull
    Call<OneDriverFileInfo> deleteFile(@Path("id") @Nullable String id);

    @GET("me/drive/root:{path}:/children")
    @NotNull
    Call<OneDriverFileInfoBody> fetchChildrenByPath(@Path("path") @Nullable String path, @QueryMap @Nullable Map<String, Object> queryMap);

    @GET("me/drive/items/{id}")
    @NotNull
    Call<OneDriverFileInfo> fetchFileById(@Path("id") @Nullable String id);

    @GET("me/drive/root:{path}")
    @NotNull
    Call<OneDriverFileInfo> fetchFileByPath(@Path("path") @Nullable String path);

    @GET("me/drive/items/{id}/children")
    @NotNull
    Call<OneDriverFileInfoBody> fetchFilesById(@Path("id") @Nullable String id, @QueryMap @Nullable Map<String, Object> queryMap);

    @GET("me")
    @NotNull
    Call<OneDriveAccount> getAccount();

    @GET
    @NotNull
    Call<OneDriverOperationStatus> getOperationStatus(@Url @Nullable String url);

    @FormUrlEncoded
    @POST("common/oauth2/v2.0/token")
    @NotNull
    Call<OneDriveTokenResponse> loadToken(@Field("client_id") @Nullable String clientId, @Field("redirect_uri") @Nullable String redirectUri, @Field("client_secret") @Nullable String clientSecret, @Field("code") @Nullable String code, @Field("grant_type") @Nullable String grantType);

    @PATCH("me/drive/items/{id}")
    @NotNull
    Call<OneDriverFileInfo> moveFile(@Path("id") @Nullable String id, @Body @NotNull Map<String, Object> updateMap);

    @FormUrlEncoded
    @POST("common/oauth2/v2.0/token")
    @NotNull
    Call<OneDriveTokenResponse> refreshToken(@Field("client_id") @Nullable String clientId, @Field("redirect_uri") @Nullable String redirectUri, @Field("client_secret") @Nullable String clientSecret, @Field("refresh_token") @Nullable String refreshToken, @Field("grant_type") @Nullable String grantType);

    @PATCH("me/drive/items/{id}")
    @NotNull
    Call<OneDriverFileInfo> renameFile(@Path("id") @Nullable String id, @Body @Nullable Map<String, Object> updateMap);

    @GET("me/drive/root/search(q='{name}')")
    @NotNull
    Call<OneDriverFileInfoBody> searchFiles(@Path("name") @Nullable String query, @QueryMap @NotNull Map<String, Object> queryMap);

    @PUT
    @NotNull
    Call<ResponseBody> upload(@Url @Nullable String url, @Header("Content-Length") long contentLength, @Header("Content-Range") @Nullable String contentRange, @Body @Nullable RequestBody body);
}
