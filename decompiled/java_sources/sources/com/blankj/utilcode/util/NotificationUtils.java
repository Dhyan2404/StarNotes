package com.blankj.utilcode.util;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.media.AudioAttributes;
import android.net.Uri;
import androidx.annotation.RequiresPermission;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.blankj.utilcode.util.Utils;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class NotificationUtils {
    public static final int IMPORTANCE_DEFAULT = 3;
    public static final int IMPORTANCE_HIGH = 4;
    public static final int IMPORTANCE_LOW = 2;
    public static final int IMPORTANCE_MIN = 1;
    public static final int IMPORTANCE_NONE = 0;
    public static final int IMPORTANCE_UNSPECIFIED = -1000;

    /* loaded from: classes3.dex */
    public static class ChannelConfig {
        public static final ChannelConfig DEFAULT_CHANNEL_CONFIG = new ChannelConfig(Utils.getApp().getPackageName(), Utils.getApp().getPackageName(), 3);

        /* renamed from: a */
        public NotificationChannel f13891a;

        public ChannelConfig(String str, CharSequence charSequence, int i) {
            this.f13891a = new NotificationChannel(str, charSequence, i);
        }

        public NotificationChannel getNotificationChannel() {
            return this.f13891a;
        }

        public ChannelConfig setBypassDnd(boolean z) {
            this.f13891a.setBypassDnd(z);
            return this;
        }

        public ChannelConfig setDescription(String str) {
            this.f13891a.setDescription(str);
            return this;
        }

        public ChannelConfig setGroup(String str) {
            this.f13891a.setGroup(str);
            return this;
        }

        public ChannelConfig setImportance(int i) {
            this.f13891a.setImportance(i);
            return this;
        }

        public ChannelConfig setLightColor(int i) {
            this.f13891a.setLightColor(i);
            return this;
        }

        public ChannelConfig setLockscreenVisibility(int i) {
            this.f13891a.setLockscreenVisibility(i);
            return this;
        }

        public ChannelConfig setName(CharSequence charSequence) {
            this.f13891a.setName(charSequence);
            return this;
        }

        public ChannelConfig setShowBadge(boolean z) {
            this.f13891a.setShowBadge(z);
            return this;
        }

        public ChannelConfig setSound(Uri uri, AudioAttributes audioAttributes) {
            this.f13891a.setSound(uri, audioAttributes);
            return this;
        }

        public ChannelConfig setVibrationPattern(long[] jArr) {
            this.f13891a.setVibrationPattern(jArr);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface Importance {
    }

    /* renamed from: a */
    public static void m8230a(String str) {
        try {
            Class.forName("android.app.StatusBarManager").getMethod(str, new Class[0]).invoke(Utils.getApp().getSystemService("statusbar"), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean areNotificationsEnabled() {
        return NotificationManagerCompat.from(Utils.getApp()).areNotificationsEnabled();
    }

    public static void cancel(String str, int i) {
        NotificationManagerCompat.from(Utils.getApp()).cancel(str, i);
    }

    public static void cancelAll() {
        NotificationManagerCompat.from(Utils.getApp()).cancelAll();
    }

    public static Notification getNotification(ChannelConfig channelConfig, Utils.Consumer<NotificationCompat.Builder> consumer) {
        ((NotificationManager) Utils.getApp().getSystemService(FunctionKey.NOTIFICATION)).createNotificationChannel(channelConfig.getNotificationChannel());
        NotificationCompat.Builder builder = new NotificationCompat.Builder(Utils.getApp());
        builder.setChannelId(channelConfig.f13891a.getId());
        if (consumer != null) {
            consumer.accept(builder);
        }
        return builder.build();
    }

    public static void notify(int i, Utils.Consumer<NotificationCompat.Builder> consumer) {
        notify(null, i, ChannelConfig.DEFAULT_CHANNEL_CONFIG, consumer);
    }

    @RequiresPermission("android.permission.EXPAND_STATUS_BAR")
    public static void setNotificationBarVisibility(boolean z) {
        m8230a(z ? "expandNotificationsPanel" : "collapsePanels");
    }

    public static void cancel(int i) {
        NotificationManagerCompat.from(Utils.getApp()).cancel(i);
    }

    public static void notify(String str, int i, Utils.Consumer<NotificationCompat.Builder> consumer) {
        notify(str, i, ChannelConfig.DEFAULT_CHANNEL_CONFIG, consumer);
    }

    public static void notify(int i, ChannelConfig channelConfig, Utils.Consumer<NotificationCompat.Builder> consumer) {
        notify(null, i, channelConfig, consumer);
    }

    public static void notify(String str, int i, ChannelConfig channelConfig, Utils.Consumer<NotificationCompat.Builder> consumer) {
        NotificationManagerCompat.from(Utils.getApp()).notify(str, i, getNotification(channelConfig, consumer));
    }
}
