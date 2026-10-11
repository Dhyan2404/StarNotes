package com.onyx.android.sdk.cloudstorage.provider.huaweidrive;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunAccount;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunCopyParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunCreateFolderParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunUpdateParam;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunUploadSession;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunUploadSessionParam;
import kotlin.Metadata;
import kotlin.Unit;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.Url;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH'J\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\n\u001a\u00020\u000bH'J6\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u00062\b\b\u0001\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u00122\b\b\u0001\u0010\u0013\u001a\u00020\u0006H'J\u0018\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'J<\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u00032\n\b\u0003\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u00062\b\b\u0003\u0010\u001a\u001a\u00020\u001b2\n\b\u0003\u0010\u001c\u001a\u0004\u0018\u00010\u0006H'J\u0018\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00032\b\b\u0001\u0010\u001f\u001a\u00020\u0006H'J\u0018\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'JJ\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00032\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010%\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010'\u001a\u0004\u0018\u00010\u0006H'J>\u0010(\u001a\b\u0012\u0004\u0012\u00020\"0\u00032\n\b\u0001\u0010#\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010%\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010(\u001a\u0004\u0018\u00010\u0006H'J\"\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010*\u001a\u00020+H'J:\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u00062\n\b\u0003\u0010-\u001a\u0004\u0018\u00010.2\n\b\u0003\u0010/\u001a\u0004\u0018\u00010\u00062\b\b\u0003\u0010\u0011\u001a\u00020\u001bH'¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;", "", "copyFile", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;", "fileId", "", "copyParam", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunCopyParam;", "createFolder", "createFolderParam", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunCreateFolderParam;", "createUploadSession", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSession;", "uploadUrl", "session", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUploadSessionParam;", "contentLength", "", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "deleteFile", "", "fetchFiles", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult;", "queryParam", "orderBy", "pageSize", "", "cursor", "getDriveInfo", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunAccount;", "bearToken", "getFile", "loadToken", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;", "clientId", "clientSecret", "grantType", "code", "redirectUri", "refreshToken", "updateFile", "updateParam", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunUpdateParam;", BaiduYunConstant.UPLOAD, "body", "Lokhttp3/RequestBody;", "contentRange", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface HuaweiYunService {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Call fetchFiles$default(HuaweiYunService huaweiYunService, String str, String str2, int i, String str3, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchFiles");
            }
            if ((i2 & 1) != 0) {
                str = null;
            }
            if ((i2 & 2) != 0) {
                str2 = null;
            }
            if ((i2 & 4) != 0) {
                i = 100;
            }
            if ((i2 & 8) != 0) {
                str3 = null;
            }
            return huaweiYunService.fetchFiles(str, str2, i, str3);
        }

        public static /* synthetic */ Call upload$default(HuaweiYunService huaweiYunService, String str, RequestBody requestBody, String str2, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: upload");
            }
            if ((i2 & 2) != 0) {
                requestBody = null;
            }
            if ((i2 & 4) != 0) {
                str2 = null;
            }
            if ((i2 & 8) != 0) {
                i = 0;
            }
            return huaweiYunService.upload(str, requestBody, str2, i);
        }
    }

    @POST("files/{fileId}/copy")
    @NotNull
    Call<HuaweiYunFileListResult.File> copyFile(@Path("fileId") @NotNull String fileId, @Body @NotNull HuaweiYunCopyParam copyParam);

    @POST("files?fields=*")
    @NotNull
    Call<HuaweiYunFileListResult.File> createFolder(@Body @NotNull HuaweiYunCreateFolderParam createFolderParam);

    @Headers({"Cache-Control:no-cache", "Content-Type:application/json"})
    @POST
    @NotNull
    Call<HuaweiYunUploadSession> createUploadSession(@Url @NotNull String uploadUrl, @Body @NotNull HuaweiYunUploadSessionParam session, @Header("X-Upload-Content-Length") long contentLength, @Header("X-Upload-Content-Type") @NotNull String mimeType);

    @DELETE("files/{fileId}")
    @NotNull
    Call<Unit> deleteFile(@Path("fileId") @NotNull String fileId);

    @GET("files?fields=*")
    @NotNull
    Call<HuaweiYunFileListResult> fetchFiles(@Nullable @Query("queryParam") String queryParam, @Nullable @Query("orderBy") String orderBy, @Query("pageSize") int pageSize, @Nullable @Query("cursor") String cursor);

    @GET("about?fields=*")
    @NotNull
    Call<HuaweiYunAccount> getDriveInfo(@Header("Authorization") @NotNull String bearToken);

    @GET("files/{fileId}?fields=*")
    @NotNull
    Call<HuaweiYunFileListResult.File> getFile(@Path("fileId") @NotNull String fileId);

    @FormUrlEncoded
    @POST("token")
    @NotNull
    Call<HuaweiYunTokenResponse> loadToken(@Field("client_id") @Nullable String clientId, @Field("client_secret") @Nullable String clientSecret, @Field("grant_type") @Nullable String grantType, @Field("code") @Nullable String code, @Field("redirect_uri") @Nullable String redirectUri);

    @FormUrlEncoded
    @POST("token")
    @NotNull
    Call<HuaweiYunTokenResponse> refreshToken(@Field("client_id") @Nullable String clientId, @Field("client_secret") @Nullable String clientSecret, @Field("grant_type") @Nullable String grantType, @Field("refresh_token") @Nullable String refreshToken);

    @PATCH("files/{fileId}?fields=*")
    @NotNull
    Call<HuaweiYunFileListResult.File> updateFile(@Path("fileId") @NotNull String fileId, @Body @NotNull HuaweiYunUpdateParam updateParam);

    @PUT
    @NotNull
    Call<HuaweiYunFileListResult.File> upload(@Url @NotNull String uploadUrl, @Body @Nullable RequestBody body, @Header("Content-Range") @Nullable String contentRange, @Header("Content-Length") int contentLength);
}
