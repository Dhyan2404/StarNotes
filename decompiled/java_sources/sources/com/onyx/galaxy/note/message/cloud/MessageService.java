package com.onyx.galaxy.note.message.cloud;

import com.onyx.galaxy.note.message.data.GetActivityNotificationsResponse;
import com.onyx.galaxy.note.message.data.GetMessageTemplatesResponse;
import com.onyx.galaxy.note.message.data.GetUnreadMessageCountResponse;
import com.onyx.galaxy.note.message.data.SetAllMessageReadResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\u0006H'J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0003H'J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0003H'J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0003H'¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/cloud/MessageService;", "", "getActivityNotifications", "Lretrofit2/Call;", "Lcom/onyx/galaxy/note/message/data/GetActivityNotificationsResponse;", "channel", "", "version", "", "locale", "getMessageTemplates", "Lcom/onyx/galaxy/note/message/data/GetMessageTemplatesResponse;", "getUnreadMessageCount", "Lcom/onyx/galaxy/note/message/data/GetUnreadMessageCountResponse;", "setAllMessageRead", "Lcom/onyx/galaxy/note/message/data/SetAllMessageReadResponse;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface MessageService {
    @GET("app/messages/notifyMsg")
    @NotNull
    Call<GetActivityNotificationsResponse> getActivityNotifications(@NotNull @Query("channel") String channel, @Query("version") long version, @NotNull @Query("locale") String locale);

    @GET("app/msgTemplate")
    @NotNull
    Call<GetMessageTemplatesResponse> getMessageTemplates();

    @GET("app/messages/innerMsg/unreadCount")
    @NotNull
    Call<GetUnreadMessageCountResponse> getUnreadMessageCount();

    @POST("app/messages/innerMsg/readAll")
    @NotNull
    Call<SetAllMessageReadResponse> setAllMessageRead();
}
