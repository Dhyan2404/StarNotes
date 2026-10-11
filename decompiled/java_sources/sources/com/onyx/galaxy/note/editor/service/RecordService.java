package com.onyx.galaxy.note.editor.service;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\b\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0003R\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/service/RecordService;", "Landroid/app/Service;", "", "onCreate", "Landroid/content/Intent;", v6l.f87196g, "Landroid/os/IBinder;", "onBind", "onDestroy", "a", "Landroid/app/NotificationManager;", "e", "Landroid/app/NotificationManager;", "notificationManager", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RecordService extends Service {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String NOTIFICATION_CHANNEL_ID = "Record";

    @NotNull
    public static final String NOTIFICATION_CHANNEL_NAME = "Record";
    public static final int NOTIFICATION_ID = 100;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public NotificationManager notificationManager;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/service/RecordService$Companion;", "", "()V", "NOTIFICATION_CHANNEL_ID", "", "NOTIFICATION_CHANNEL_NAME", "NOTIFICATION_ID", "", "startService", "", "context", "Landroid/content/Context;", "stopService", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void startService(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startService(new Intent(context, (Class<?>) RecordService.class));
        }

        public final void stopService(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.stopService(new Intent(context, (Class<?>) RecordService.class));
        }

        public Companion() {
        }
    }

    @SuppressLint({"LaunchActivityFromNotification"})
    /* renamed from: a */
    public final void m46466a() {
        NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this, "Record").setLargeIcon(BitmapFactory.decodeResource(getResources(), C10651R.mipmap.ic_launcher_foreground)).setSmallIcon(C10651R.mipmap.ic_launcher_foreground).setContentTitle(ResManager.INSTANCE.getString(C10651R.string.Recording)).setContentIntent(PendingIntent.getService(this, 0, new Intent(this, (Class<?>) RecordService.class), 67108864));
        Intrinsics.checkNotNullExpressionValue(contentIntent, "setContentIntent(...)");
        Notification build = contentIntent.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        NotificationChannel notificationChannel = new NotificationChannel("Record", "Record", 3);
        Object systemService = getSystemService(FunctionKey.NOTIFICATION);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        this.notificationManager = notificationManager;
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(notificationChannel);
        }
        if (BuildKt.isApiLevelAbove(30)) {
            startForeground(100, build, 128);
        } else {
            startForeground(100, build);
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        m46466a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        NotificationManager notificationManager = this.notificationManager;
        if (notificationManager != null) {
            notificationManager.cancel(100);
        }
        super.onDestroy();
    }
}
