package com.onyx.android.sdk.cloudstorage.provider.ynote;

import com.evernote.client.android.login.EvernoteLoginFragment;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.AccessTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.CreateNoteBookResponse;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNote;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNoteBook;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNoteResource;
import com.onyx.android.sdk.cloudstorage.provider.ynote.model.YNoteUser;
import java.util.List;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007H'JJ\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0007H'J2\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00032\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u0012H'J&\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u00032\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0007H'J\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u0007H'JJ\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00032\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u001d\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u0007H'J&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00032\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u0007H'J,\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0007H'J&\u0010!\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\n\b\u0001\u0010\u0019\u001a\u0004\u0018\u00010\u00122\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u0012H'J\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u00032\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u0012H'J\u000e\u0010%\u001a\b\u0012\u0004\u0012\u00020&0\u0003H'¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteService;", "", "allNoteBook", "Lretrofit2/Call;", "", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteBook;", "token", "", "authorize", "Lokhttp3/ResponseBody;", EvernoteLoginFragment.f21144B1, "responseType", "redirectUri", "state", "display", "createNote", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNote;", "title", "Lokhttp3/MultipartBody$Part;", "notebook", "content", "createNoteBook", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/CreateNoteBookResponse;", "name", "deleteNote", "path", "getAccessToken", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;", EvernoteLoginFragment.f21145C1, "grantType", "code", "getNoteInfo", "getNoteList", "updateNote", "uploadAttachment", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteResource;", "file", "user", "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/YNoteUser;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface YNoteService {
    @FormUrlEncoded
    @POST("/yws/open/notebook/all.json")
    @NotNull
    Call<List<YNoteBook>> allNoteBook(@Field("oauth_token") @Nullable String token);

    @GET("/oauth/authorize2")
    @NotNull
    Call<ResponseBody> authorize(@Nullable @Query("client_id") String consumerKey, @Nullable @Query("response_type") String responseType, @Nullable @Query("redirect_uri") String redirectUri, @Nullable @Query("state") String state, @Nullable @Query("display") String display);

    @POST("/yws/open/note/create.json")
    @NotNull
    @Multipart
    Call<YNote> createNote(@Nullable @Part MultipartBody.Part title, @Nullable @Part MultipartBody.Part notebook, @Nullable @Part MultipartBody.Part content);

    @FormUrlEncoded
    @POST("/yws/open/notebook/create.json")
    @NotNull
    Call<CreateNoteBookResponse> createNoteBook(@Field("oauth_token") @Nullable String token, @Field("name") @Nullable String name);

    @FormUrlEncoded
    @POST("/yws/open/note/delete.json")
    @NotNull
    Call<ResponseBody> deleteNote(@Field("path") @Nullable String path);

    @GET("/oauth/access2")
    @NotNull
    Call<AccessTokenResponse> getAccessToken(@Nullable @Query("client_id") String consumerKey, @Nullable @Query("client_secret") String consumerSecret, @Nullable @Query("grant_type") String grantType, @Nullable @Query("redirect_uri") String redirectUri, @Nullable @Query("code") String code);

    @FormUrlEncoded
    @POST("/yws/open/note/get.json")
    @NotNull
    Call<YNote> getNoteInfo(@Field("oauth_token") @Nullable String token, @Field("path") @Nullable String path);

    @FormUrlEncoded
    @POST("/yws/open/notebook/list.json")
    @NotNull
    Call<List<String>> getNoteList(@Field("oauth_token") @Nullable String token, @Field("notebook") @Nullable String notebook);

    @POST("/yws/open/note/update.json")
    @NotNull
    @Multipart
    Call<ResponseBody> updateNote(@Nullable @Part MultipartBody.Part path, @Nullable @Part MultipartBody.Part content);

    @POST("/yws/open/resource/upload.json")
    @NotNull
    @Multipart
    Call<YNoteResource> uploadAttachment(@Nullable @Part MultipartBody.Part file);

    @GET("/yws/open//user/get.json")
    @NotNull
    Call<YNoteUser> user();
}
