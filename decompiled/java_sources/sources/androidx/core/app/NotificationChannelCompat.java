package androidx.core.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* loaded from: classes3.dex */
public class NotificationChannelCompat {
    public static final String DEFAULT_CHANNEL_ID = "miscellaneous";

    /* renamed from: s */
    public static final boolean f4823s = true;

    /* renamed from: t */
    public static final int f4824t = 0;

    /* renamed from: a */
    @NonNull
    public final String f4825a;

    /* renamed from: b */
    public CharSequence f4826b;

    /* renamed from: c */
    public int f4827c;

    /* renamed from: d */
    public String f4828d;

    /* renamed from: e */
    public String f4829e;

    /* renamed from: f */
    public boolean f4830f;

    /* renamed from: g */
    public Uri f4831g;

    /* renamed from: h */
    public AudioAttributes f4832h;

    /* renamed from: i */
    public boolean f4833i;

    /* renamed from: j */
    public int f4834j;

    /* renamed from: k */
    public boolean f4835k;

    /* renamed from: l */
    public long[] f4836l;

    /* renamed from: m */
    public String f4837m;

    /* renamed from: n */
    public String f4838n;

    /* renamed from: o */
    public boolean f4839o;

    /* renamed from: p */
    public int f4840p;

    /* renamed from: q */
    public boolean f4841q;

    /* renamed from: r */
    public boolean f4842r;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public final NotificationChannelCompat f4843a;

        public Builder(@NonNull String str, int i) {
            this.f4843a = new NotificationChannelCompat(str, i);
        }

        @NonNull
        public NotificationChannelCompat build() {
            return this.f4843a;
        }

        @NonNull
        public Builder setConversationId(@NonNull String str, @NonNull String str2) {
            if (Build.VERSION.SDK_INT >= 30) {
                NotificationChannelCompat notificationChannelCompat = this.f4843a;
                notificationChannelCompat.f4837m = str;
                notificationChannelCompat.f4838n = str2;
            }
            return this;
        }

        @NonNull
        public Builder setDescription(@Nullable String str) {
            this.f4843a.f4828d = str;
            return this;
        }

        @NonNull
        public Builder setGroup(@Nullable String str) {
            this.f4843a.f4829e = str;
            return this;
        }

        @NonNull
        public Builder setImportance(int i) {
            this.f4843a.f4827c = i;
            return this;
        }

        @NonNull
        public Builder setLightColor(int i) {
            this.f4843a.f4834j = i;
            return this;
        }

        @NonNull
        public Builder setLightsEnabled(boolean z) {
            this.f4843a.f4833i = z;
            return this;
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f4843a.f4826b = charSequence;
            return this;
        }

        @NonNull
        public Builder setShowBadge(boolean z) {
            this.f4843a.f4830f = z;
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri, @Nullable AudioAttributes audioAttributes) {
            NotificationChannelCompat notificationChannelCompat = this.f4843a;
            notificationChannelCompat.f4831g = uri;
            notificationChannelCompat.f4832h = audioAttributes;
            return this;
        }

        @NonNull
        public Builder setVibrationEnabled(boolean z) {
            this.f4843a.f4835k = z;
            return this;
        }

        @NonNull
        public Builder setVibrationPattern(@Nullable long[] jArr) {
            NotificationChannelCompat notificationChannelCompat = this.f4843a;
            notificationChannelCompat.f4835k = jArr != null && jArr.length > 0;
            notificationChannelCompat.f4836l = jArr;
            return this;
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.NotificationChannelCompat$a */
    /* loaded from: classes3.dex */
    public static class C0547a {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2376a(NotificationChannel notificationChannel) {
            return notificationChannel.canBypassDnd();
        }

        @DoNotInline
        /* renamed from: b */
        public static boolean m2377b(NotificationChannel notificationChannel) {
            return notificationChannel.canShowBadge();
        }

        @DoNotInline
        /* renamed from: c */
        public static NotificationChannel m2378c(String str, CharSequence charSequence, int i) {
            return new NotificationChannel(str, charSequence, i);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m2379d(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableLights(z);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m2380e(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.enableVibration(z);
        }

        @DoNotInline
        /* renamed from: f */
        public static AudioAttributes m2381f(NotificationChannel notificationChannel) {
            return notificationChannel.getAudioAttributes();
        }

        @DoNotInline
        /* renamed from: g */
        public static String m2382g(NotificationChannel notificationChannel) {
            return notificationChannel.getDescription();
        }

        @DoNotInline
        /* renamed from: h */
        public static String m2383h(NotificationChannel notificationChannel) {
            return notificationChannel.getGroup();
        }

        @DoNotInline
        /* renamed from: i */
        public static String m2384i(NotificationChannel notificationChannel) {
            return notificationChannel.getId();
        }

        @DoNotInline
        /* renamed from: j */
        public static int m2385j(NotificationChannel notificationChannel) {
            return notificationChannel.getImportance();
        }

        @DoNotInline
        /* renamed from: k */
        public static int m2386k(NotificationChannel notificationChannel) {
            return notificationChannel.getLightColor();
        }

        @DoNotInline
        /* renamed from: l */
        public static int m2387l(NotificationChannel notificationChannel) {
            return notificationChannel.getLockscreenVisibility();
        }

        @DoNotInline
        /* renamed from: m */
        public static CharSequence m2388m(NotificationChannel notificationChannel) {
            return notificationChannel.getName();
        }

        @DoNotInline
        /* renamed from: n */
        public static Uri m2389n(NotificationChannel notificationChannel) {
            return notificationChannel.getSound();
        }

        @DoNotInline
        /* renamed from: o */
        public static long[] m2390o(NotificationChannel notificationChannel) {
            return notificationChannel.getVibrationPattern();
        }

        @DoNotInline
        /* renamed from: p */
        public static void m2391p(NotificationChannel notificationChannel, String str) {
            notificationChannel.setDescription(str);
        }

        @DoNotInline
        /* renamed from: q */
        public static void m2392q(NotificationChannel notificationChannel, String str) {
            notificationChannel.setGroup(str);
        }

        @DoNotInline
        /* renamed from: r */
        public static void m2393r(NotificationChannel notificationChannel, int i) {
            notificationChannel.setLightColor(i);
        }

        @DoNotInline
        /* renamed from: s */
        public static void m2394s(NotificationChannel notificationChannel, boolean z) {
            notificationChannel.setShowBadge(z);
        }

        @DoNotInline
        /* renamed from: t */
        public static void m2395t(NotificationChannel notificationChannel, Uri uri, AudioAttributes audioAttributes) {
            notificationChannel.setSound(uri, audioAttributes);
        }

        @DoNotInline
        /* renamed from: u */
        public static void m2396u(NotificationChannel notificationChannel, long[] jArr) {
            notificationChannel.setVibrationPattern(jArr);
        }

        @DoNotInline
        /* renamed from: v */
        public static boolean m2397v(NotificationChannel notificationChannel) {
            return notificationChannel.shouldShowLights();
        }

        @DoNotInline
        /* renamed from: w */
        public static boolean m2398w(NotificationChannel notificationChannel) {
            return notificationChannel.shouldVibrate();
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.app.NotificationChannelCompat$b */
    /* loaded from: classes3.dex */
    public static class C0548b {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2399a(NotificationChannel notificationChannel) {
            return notificationChannel.canBubble();
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.app.NotificationChannelCompat$c */
    /* loaded from: classes3.dex */
    public static class C0549c {
        @DoNotInline
        /* renamed from: a */
        public static String m2400a(NotificationChannel notificationChannel) {
            return notificationChannel.getConversationId();
        }

        @DoNotInline
        /* renamed from: b */
        public static String m2401b(NotificationChannel notificationChannel) {
            return notificationChannel.getParentChannelId();
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m2402c(NotificationChannel notificationChannel) {
            return notificationChannel.isImportantConversation();
        }

        @DoNotInline
        /* renamed from: d */
        public static void m2403d(NotificationChannel notificationChannel, String str, String str2) {
            notificationChannel.setConversationId(str, str2);
        }
    }

    public NotificationChannelCompat(@NonNull String str, int i) {
        this.f4830f = true;
        this.f4831g = Settings.System.DEFAULT_NOTIFICATION_URI;
        this.f4834j = 0;
        this.f4825a = (String) Preconditions.checkNotNull(str);
        this.f4827c = i;
        this.f4832h = Notification.AUDIO_ATTRIBUTES_DEFAULT;
    }

    /* renamed from: a */
    public NotificationChannel m2375a() {
        String str;
        String str2;
        int i = Build.VERSION.SDK_INT;
        NotificationChannel m2378c = C0547a.m2378c(this.f4825a, this.f4826b, this.f4827c);
        C0547a.m2391p(m2378c, this.f4828d);
        C0547a.m2392q(m2378c, this.f4829e);
        C0547a.m2394s(m2378c, this.f4830f);
        C0547a.m2395t(m2378c, this.f4831g, this.f4832h);
        C0547a.m2379d(m2378c, this.f4833i);
        C0547a.m2393r(m2378c, this.f4834j);
        C0547a.m2396u(m2378c, this.f4836l);
        C0547a.m2380e(m2378c, this.f4835k);
        if (i >= 30 && (str = this.f4837m) != null && (str2 = this.f4838n) != null) {
            C0549c.m2403d(m2378c, str, str2);
        }
        return m2378c;
    }

    public boolean canBubble() {
        return this.f4841q;
    }

    public boolean canBypassDnd() {
        return this.f4839o;
    }

    public boolean canShowBadge() {
        return this.f4830f;
    }

    @Nullable
    public AudioAttributes getAudioAttributes() {
        return this.f4832h;
    }

    @Nullable
    public String getConversationId() {
        return this.f4838n;
    }

    @Nullable
    public String getDescription() {
        return this.f4828d;
    }

    @Nullable
    public String getGroup() {
        return this.f4829e;
    }

    @NonNull
    public String getId() {
        return this.f4825a;
    }

    public int getImportance() {
        return this.f4827c;
    }

    public int getLightColor() {
        return this.f4834j;
    }

    public int getLockscreenVisibility() {
        return this.f4840p;
    }

    @Nullable
    public CharSequence getName() {
        return this.f4826b;
    }

    @Nullable
    public String getParentChannelId() {
        return this.f4837m;
    }

    @Nullable
    public Uri getSound() {
        return this.f4831g;
    }

    @Nullable
    public long[] getVibrationPattern() {
        return this.f4836l;
    }

    public boolean isImportantConversation() {
        return this.f4842r;
    }

    public boolean shouldShowLights() {
        return this.f4833i;
    }

    public boolean shouldVibrate() {
        return this.f4835k;
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this.f4825a, this.f4827c).setName(this.f4826b).setDescription(this.f4828d).setGroup(this.f4829e).setShowBadge(this.f4830f).setSound(this.f4831g, this.f4832h).setLightsEnabled(this.f4833i).setLightColor(this.f4834j).setVibrationEnabled(this.f4835k).setVibrationPattern(this.f4836l).setConversationId(this.f4837m, this.f4838n);
    }

    @RequiresApi(26)
    public NotificationChannelCompat(@NonNull NotificationChannel notificationChannel) {
        this(C0547a.m2384i(notificationChannel), C0547a.m2385j(notificationChannel));
        this.f4826b = C0547a.m2388m(notificationChannel);
        this.f4828d = C0547a.m2382g(notificationChannel);
        this.f4829e = C0547a.m2383h(notificationChannel);
        this.f4830f = C0547a.m2377b(notificationChannel);
        this.f4831g = C0547a.m2389n(notificationChannel);
        this.f4832h = C0547a.m2381f(notificationChannel);
        this.f4833i = C0547a.m2397v(notificationChannel);
        this.f4834j = C0547a.m2386k(notificationChannel);
        this.f4835k = C0547a.m2398w(notificationChannel);
        this.f4836l = C0547a.m2390o(notificationChannel);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f4837m = C0549c.m2401b(notificationChannel);
            this.f4838n = C0549c.m2400a(notificationChannel);
        }
        this.f4839o = C0547a.m2376a(notificationChannel);
        this.f4840p = C0547a.m2387l(notificationChannel);
        this.f4841q = C0548b.m2399a(notificationChannel);
        if (i >= 30) {
            this.f4842r = C0549c.m2402c(notificationChannel);
        }
    }
}
