package androidx.core.app;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class NotificationChannelGroupCompat {

    /* renamed from: a */
    public final String f4844a;

    /* renamed from: b */
    public CharSequence f4845b;

    /* renamed from: c */
    public String f4846c;

    /* renamed from: d */
    public boolean f4847d;

    /* renamed from: e */
    public List<NotificationChannelCompat> f4848e;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public final NotificationChannelGroupCompat f4849a;

        public Builder(@NonNull String str) {
            this.f4849a = new NotificationChannelGroupCompat(str);
        }

        @NonNull
        public NotificationChannelGroupCompat build() {
            return this.f4849a;
        }

        @NonNull
        public Builder setDescription(@Nullable String str) {
            this.f4849a.f4846c = str;
            return this;
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f4849a.f4845b = charSequence;
            return this;
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.NotificationChannelGroupCompat$a */
    /* loaded from: classes3.dex */
    public static class C0550a {
        @DoNotInline
        /* renamed from: a */
        public static NotificationChannelGroup m2406a(String str, CharSequence charSequence) {
            return new NotificationChannelGroup(str, charSequence);
        }

        @DoNotInline
        /* renamed from: b */
        public static List<NotificationChannel> m2407b(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getChannels();
        }

        @DoNotInline
        /* renamed from: c */
        public static String m2408c(NotificationChannel notificationChannel) {
            return notificationChannel.getGroup();
        }

        @DoNotInline
        /* renamed from: d */
        public static String m2409d(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getId();
        }

        @DoNotInline
        /* renamed from: e */
        public static CharSequence m2410e(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getName();
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.app.NotificationChannelGroupCompat$b */
    /* loaded from: classes3.dex */
    public static class C0551b {
        @DoNotInline
        /* renamed from: a */
        public static String m2411a(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.getDescription();
        }

        @DoNotInline
        /* renamed from: b */
        public static boolean m2412b(NotificationChannelGroup notificationChannelGroup) {
            return notificationChannelGroup.isBlocked();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m2413c(NotificationChannelGroup notificationChannelGroup, String str) {
            notificationChannelGroup.setDescription(str);
        }
    }

    public NotificationChannelGroupCompat(@NonNull String str) {
        this.f4848e = Collections.emptyList();
        this.f4844a = (String) Preconditions.checkNotNull(str);
    }

    @RequiresApi(26)
    /* renamed from: a */
    public final List<NotificationChannelCompat> m2404a(List<NotificationChannel> list) {
        ArrayList arrayList = new ArrayList();
        for (NotificationChannel notificationChannel : list) {
            if (this.f4844a.equals(C0550a.m2408c(notificationChannel))) {
                arrayList.add(new NotificationChannelCompat(notificationChannel));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public NotificationChannelGroup m2405b() {
        NotificationChannelGroup m2406a = C0550a.m2406a(this.f4844a, this.f4845b);
        C0551b.m2413c(m2406a, this.f4846c);
        return m2406a;
    }

    @NonNull
    public List<NotificationChannelCompat> getChannels() {
        return this.f4848e;
    }

    @Nullable
    public String getDescription() {
        return this.f4846c;
    }

    @NonNull
    public String getId() {
        return this.f4844a;
    }

    @Nullable
    public CharSequence getName() {
        return this.f4845b;
    }

    public boolean isBlocked() {
        return this.f4847d;
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this.f4844a).setName(this.f4845b).setDescription(this.f4846c);
    }

    @RequiresApi(28)
    public NotificationChannelGroupCompat(@NonNull NotificationChannelGroup notificationChannelGroup) {
        this(notificationChannelGroup, Collections.emptyList());
    }

    @RequiresApi(26)
    public NotificationChannelGroupCompat(@NonNull NotificationChannelGroup notificationChannelGroup, @NonNull List<NotificationChannel> list) {
        this(C0550a.m2409d(notificationChannelGroup));
        this.f4845b = C0550a.m2410e(notificationChannelGroup);
        this.f4846c = C0551b.m2411a(notificationChannelGroup);
        this.f4847d = C0551b.m2412b(notificationChannelGroup);
        this.f4848e = m2404a(C0550a.m2407b(notificationChannelGroup));
    }
}
