package com.onyx.galaxy.note.utils;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.BitmapFactory;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u0006\u0010\u0002\u001a\u00020\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0004"}, m61528d2 = {"CHANNEL_WELCOME", "", "showWelcomeNotification", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NotificationKt {

    @NotNull
    public static final String CHANNEL_WELCOME = "Welcome";

    public static final void showWelcomeNotification() {
        ResManager resManager = ResManager.INSTANCE;
        Context appContext = resManager.getAppContext();
        String stringSafely = resManager.getStringSafely(C10651R.string.star_note);
        NotificationCompat.Builder contentText = new NotificationCompat.Builder(appContext, CHANNEL_WELCOME).setLargeIcon(BitmapFactory.decodeResource(appContext.getResources(), C10651R.mipmap.ic_launcher_foreground)).setSmallIcon(C10651R.mipmap.ic_launcher_foreground).setContentTitle(stringSafely).setContentText(resManager.getStringSafely(C10651R.string.star_note_welcome));
        Intrinsics.checkNotNullExpressionValue(contentText, "setContentText(...)");
        Notification build = contentText.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        NotificationChannel notificationChannel = new NotificationChannel(CHANNEL_WELCOME, CHANNEL_WELCOME, 1);
        NotificationManager notificationManager = (NotificationManager) appContext.getSystemService(NotificationManager.class);
        notificationManager.createNotificationChannel(notificationChannel);
        notificationManager.notify(0, build);
    }
}
