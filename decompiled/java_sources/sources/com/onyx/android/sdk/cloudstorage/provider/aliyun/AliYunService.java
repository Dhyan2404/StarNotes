package com.onyx.android.sdk.cloudstorage.provider.aliyun;

import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunAccount;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileBase;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileCopy;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileCreate;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileInfo;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileLink;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileListResult;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunFileRename;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunQueryArgs;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunUploadSession;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Url;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H'J\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\tH'J\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u000bH'J\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006H'J\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u000eH'J\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u000eH'J\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u000eH'J\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00032\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H'J\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0016H'J\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00032\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u001aH'J>\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001a2\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001a2\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u001aH'J\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\tH'J>\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u001a2\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u001a2\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\n\b\u0001\u0010\"\u001a\u0004\u0018\u00010\u001aH'J\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010$H'J\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00120\u00032\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0014H'J\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00032\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u000eH'J&\u0010'\u001a\b\u0012\u0004\u0012\u00020(0\u00032\n\b\u0001\u0010)\u001a\u0004\u0018\u00010\u001a2\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010*H'¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;", "", "completeUpload", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;", "session", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunUploadSession;", "copyFile", "body", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCopy;", "createFolder", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileCreate;", "createUploadSession", "deleteFile", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;", "fetchFileById", "fetchFileByPath", "fetchFiles", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileListResult;", "queryArgs", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;", "getDownloadLink", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileLink;", "getDriveInfo", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunAccount;", "bearToken", "", "loadToken", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;", "clientId", "clientSecret", "grantType", "code", "moveFile", "refreshToken", "renameFile", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileRename;", "searchFile", "softDeleteFile", BaiduYunConstant.UPLOAD, "Lokhttp3/ResponseBody;", "url", "Lokhttp3/RequestBody;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface AliYunService {
    @POST("openFile/complete")
    @NotNull
    Call<AliYunFileInfo> completeUpload(@Body @Nullable AliYunUploadSession session);

    @POST("openFile/copy")
    @NotNull
    Call<AliYunFileInfo> copyFile(@Body @Nullable AliYunFileCopy body);

    @POST("openFile/create")
    @NotNull
    Call<AliYunFileInfo> createFolder(@Body @Nullable AliYunFileCreate body);

    @POST("openFile/create")
    @NotNull
    Call<AliYunUploadSession> createUploadSession(@Body @Nullable AliYunUploadSession session);

    @POST("openFile/delete")
    @NotNull
    Call<AliYunFileBase> deleteFile(@Body @Nullable AliYunFileBase body);

    @POST("openFile/get")
    @NotNull
    Call<AliYunFileInfo> fetchFileById(@Body @Nullable AliYunFileBase body);

    @POST("openFile/get_by_path")
    @NotNull
    Call<AliYunFileInfo> fetchFileByPath(@Body @Nullable AliYunFileBase body);

    @POST("openFile/list")
    @NotNull
    Call<AliYunFileListResult> fetchFiles(@Body @Nullable AliYunQueryArgs queryArgs);

    @POST("openFile/getDownloadUrl")
    @NotNull
    Call<AliYunFileLink> getDownloadLink(@Body @Nullable AliYunFileLink body);

    @POST("user/getDriveInfo")
    @NotNull
    Call<AliYunAccount> getDriveInfo(@Header("Authorization") @Nullable String bearToken);

    @FormUrlEncoded
    @POST("access_token")
    @NotNull
    Call<AliYunTokenResponse> loadToken(@Field("client_id") @Nullable String clientId, @Field("client_secret") @Nullable String clientSecret, @Field("grant_type") @Nullable String grantType, @Field("code") @Nullable String code);

    @POST("openFile/move")
    @NotNull
    Call<AliYunFileInfo> moveFile(@Body @Nullable AliYunFileCopy body);

    @FormUrlEncoded
    @POST("access_token")
    @NotNull
    Call<AliYunTokenResponse> refreshToken(@Field("client_id") @Nullable String clientId, @Field("client_secret") @Nullable String clientSecret, @Field("grant_type") @Nullable String grantType, @Field("refresh_token") @Nullable String refreshToken);

    @POST("openFile/update")
    @NotNull
    Call<AliYunFileInfo> renameFile(@Body @Nullable AliYunFileRename body);

    @POST("openFile/search")
    @NotNull
    Call<AliYunFileListResult> searchFile(@Body @Nullable AliYunQueryArgs queryArgs);

    @POST("openFile/recyclebin/trash")
    @NotNull
    Call<AliYunFileBase> softDeleteFile(@Body @Nullable AliYunFileBase body);

    @PUT
    @NotNull
    Call<ResponseBody> upload(@Url @Nullable String url, @Body @Nullable RequestBody body);
}
