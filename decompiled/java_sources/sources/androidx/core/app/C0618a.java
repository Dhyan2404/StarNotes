package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.LocusId;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArraySet;
import androidx.core.app.NotificationCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* renamed from: androidx.core.app.a */
/* loaded from: classes3.dex */
public class C0618a implements NotificationBuilderWithBuilderAccessor {

    /* renamed from: a */
    public final Context f5180a;

    /* renamed from: b */
    public final Notification.Builder f5181b;

    /* renamed from: c */
    public final NotificationCompat.Builder f5182c;

    /* renamed from: d */
    public RemoteViews f5183d;

    /* renamed from: e */
    public RemoteViews f5184e;

    /* renamed from: f */
    public final List<Bundle> f5185f = new ArrayList();

    /* renamed from: g */
    public final Bundle f5186g = new Bundle();

    /* renamed from: h */
    public int f5187h;

    /* renamed from: i */
    public RemoteViews f5188i;

    @RequiresApi(20)
    /* renamed from: androidx.core.app.a$a */
    /* loaded from: classes3.dex */
    public static class a {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Builder m2647a(Notification.Builder builder, Notification.Action action) {
            return builder.addAction(action);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Action.Builder m2648b(Notification.Action.Builder builder, Bundle bundle) {
            return builder.addExtras(bundle);
        }

        @DoNotInline
        /* renamed from: c */
        public static Notification.Action.Builder m2649c(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
            return builder.addRemoteInput(remoteInput);
        }

        @DoNotInline
        /* renamed from: d */
        public static Notification.Action m2650d(Notification.Action.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        /* renamed from: e */
        public static Notification.Action.Builder m2651e(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(i, charSequence, pendingIntent);
        }

        @DoNotInline
        /* renamed from: f */
        public static String m2652f(Notification notification) {
            return notification.getGroup();
        }

        @DoNotInline
        /* renamed from: g */
        public static Notification.Builder m2653g(Notification.Builder builder, String str) {
            return builder.setGroup(str);
        }

        @DoNotInline
        /* renamed from: h */
        public static Notification.Builder m2654h(Notification.Builder builder, boolean z) {
            return builder.setGroupSummary(z);
        }

        @DoNotInline
        /* renamed from: i */
        public static Notification.Builder m2655i(Notification.Builder builder, boolean z) {
            return builder.setLocalOnly(z);
        }

        @DoNotInline
        /* renamed from: j */
        public static Notification.Builder m2656j(Notification.Builder builder, String str) {
            return builder.setSortKey(str);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.app.a$b */
    /* loaded from: classes3.dex */
    public static class b {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Builder m2657a(Notification.Builder builder, String str) {
            return builder.addPerson(str);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Builder m2658b(Notification.Builder builder, String str) {
            return builder.setCategory(str);
        }

        @DoNotInline
        /* renamed from: c */
        public static Notification.Builder m2659c(Notification.Builder builder, int i) {
            return builder.setColor(i);
        }

        @DoNotInline
        /* renamed from: d */
        public static Notification.Builder m2660d(Notification.Builder builder, Notification notification) {
            return builder.setPublicVersion(notification);
        }

        @DoNotInline
        /* renamed from: e */
        public static Notification.Builder m2661e(Notification.Builder builder, Uri uri, Object obj) {
            return builder.setSound(uri, (AudioAttributes) obj);
        }

        @DoNotInline
        /* renamed from: f */
        public static Notification.Builder m2662f(Notification.Builder builder, int i) {
            return builder.setVisibility(i);
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.app.a$c */
    /* loaded from: classes3.dex */
    public static class c {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Action.Builder m2663a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
            return new Notification.Action.Builder(icon, charSequence, pendingIntent);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Builder m2664b(Notification.Builder builder, Icon icon) {
            return builder.setLargeIcon(icon);
        }

        @DoNotInline
        /* renamed from: c */
        public static Notification.Builder m2665c(Notification.Builder builder, Object obj) {
            return builder.setSmallIcon((Icon) obj);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.app.a$d */
    /* loaded from: classes3.dex */
    public static class d {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Action.Builder m2666a(Notification.Action.Builder builder, boolean z) {
            return builder.setAllowGeneratedReplies(z);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Builder m2667b(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomBigContentView(remoteViews);
        }

        @DoNotInline
        /* renamed from: c */
        public static Notification.Builder m2668c(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomContentView(remoteViews);
        }

        @DoNotInline
        /* renamed from: d */
        public static Notification.Builder m2669d(Notification.Builder builder, RemoteViews remoteViews) {
            return builder.setCustomHeadsUpContentView(remoteViews);
        }

        @DoNotInline
        /* renamed from: e */
        public static Notification.Builder m2670e(Notification.Builder builder, CharSequence[] charSequenceArr) {
            return builder.setRemoteInputHistory(charSequenceArr);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.a$e */
    /* loaded from: classes3.dex */
    public static class e {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Builder m2671a(Context context, String str) {
            return new Notification.Builder(context, str);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Builder m2672b(Notification.Builder builder, int i) {
            return builder.setBadgeIconType(i);
        }

        @DoNotInline
        /* renamed from: c */
        public static Notification.Builder m2673c(Notification.Builder builder, boolean z) {
            return builder.setColorized(z);
        }

        @DoNotInline
        /* renamed from: d */
        public static Notification.Builder m2674d(Notification.Builder builder, int i) {
            return builder.setGroupAlertBehavior(i);
        }

        @DoNotInline
        /* renamed from: e */
        public static Notification.Builder m2675e(Notification.Builder builder, CharSequence charSequence) {
            return builder.setSettingsText(charSequence);
        }

        @DoNotInline
        /* renamed from: f */
        public static Notification.Builder m2676f(Notification.Builder builder, String str) {
            return builder.setShortcutId(str);
        }

        @DoNotInline
        /* renamed from: g */
        public static Notification.Builder m2677g(Notification.Builder builder, long j) {
            return builder.setTimeoutAfter(j);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.app.a$f */
    /* loaded from: classes3.dex */
    public static class f {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Builder m2678a(Notification.Builder builder, android.app.Person person) {
            return builder.addPerson(person);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Action.Builder m2679b(Notification.Action.Builder builder, int i) {
            return builder.setSemanticAction(i);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.app.a$g */
    /* loaded from: classes3.dex */
    public static class g {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Builder m2680a(Notification.Builder builder, boolean z) {
            return builder.setAllowSystemGeneratedContextualActions(z);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Builder m2681b(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
            return builder.setBubbleMetadata(bubbleMetadata);
        }

        @DoNotInline
        /* renamed from: c */
        public static Notification.Action.Builder m2682c(Notification.Action.Builder builder, boolean z) {
            return builder.setContextual(z);
        }

        @DoNotInline
        /* renamed from: d */
        public static Notification.Builder m2683d(Notification.Builder builder, Object obj) {
            return builder.setLocusId((LocusId) obj);
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.app.a$h */
    /* loaded from: classes3.dex */
    public static class h {
        @DoNotInline
        /* renamed from: a */
        public static Notification.Action.Builder m2684a(Notification.Action.Builder builder, boolean z) {
            return builder.setAuthenticationRequired(z);
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.Builder m2685b(Notification.Builder builder, int i) {
            return builder.setForegroundServiceBehavior(i);
        }
    }

    public C0618a(NotificationCompat.Builder builder) {
        int i;
        this.f5182c = builder;
        Context context = builder.mContext;
        this.f5180a = context;
        Notification.Builder m2671a = e.m2671a(context, builder.f4918I);
        this.f5181b = m2671a;
        Notification notification = builder.f4927R;
        m2671a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, builder.f4935f).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(builder.f4931b).setContentText(builder.f4932c).setContentInfo(builder.f4937h).setContentIntent(builder.f4933d).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(builder.f4934e, (notification.flags & 128) != 0).setNumber(builder.f4938i).setProgress(builder.f4947r, builder.f4948s, builder.f4949t);
        IconCompat iconCompat = builder.f4936g;
        c.m2664b(m2671a, iconCompat == null ? null : iconCompat.toIcon(context));
        m2671a.setSubText(builder.f4944o).setUsesChronometer(builder.f4941l).setPriority(builder.f4939j);
        NotificationCompat.Style style = builder.f4943n;
        if (style instanceof NotificationCompat.CallStyle) {
            Iterator<NotificationCompat.Action> it2 = ((NotificationCompat.CallStyle) style).getActionsListWithSystemActions().iterator();
            while (it2.hasNext()) {
                m2642a(it2.next());
            }
        } else {
            Iterator<NotificationCompat.Action> it3 = builder.mActions.iterator();
            while (it3.hasNext()) {
                m2642a(it3.next());
            }
        }
        Bundle bundle = builder.f4911B;
        if (bundle != null) {
            this.f5186g.putAll(bundle);
        }
        this.f5183d = builder.f4915F;
        this.f5184e = builder.f4916G;
        this.f5181b.setShowWhen(builder.f4940k);
        a.m2655i(this.f5181b, builder.f4953x);
        a.m2653g(this.f5181b, builder.f4950u);
        a.m2656j(this.f5181b, builder.f4952w);
        a.m2654h(this.f5181b, builder.f4951v);
        this.f5187h = builder.f4923N;
        b.m2658b(this.f5181b, builder.f4910A);
        b.m2659c(this.f5181b, builder.f4912C);
        b.m2662f(this.f5181b, builder.f4913D);
        b.m2660d(this.f5181b, builder.f4914E);
        b.m2661e(this.f5181b, notification.sound, notification.audioAttributes);
        ArrayList<String> arrayList = builder.mPeople;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<String> it4 = arrayList.iterator();
            while (it4.hasNext()) {
                b.m2657a(this.f5181b, it4.next());
            }
        }
        this.f5188i = builder.f4917H;
        if (builder.f4930a.size() > 0) {
            Bundle bundle2 = builder.getExtras().getBundle(NotificationCompat.CarExtender.f4968d);
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            for (int i2 = 0; i2 < builder.f4930a.size(); i2++) {
                bundle4.putBundle(Integer.toString(i2), C0619b.m2695j(builder.f4930a.get(i2)));
            }
            bundle2.putBundle(NotificationCompat.CarExtender.f4972h, bundle4);
            bundle3.putBundle(NotificationCompat.CarExtender.f4972h, bundle4);
            builder.getExtras().putBundle(NotificationCompat.CarExtender.f4968d, bundle2);
            this.f5186g.putBundle(NotificationCompat.CarExtender.f4968d, bundle3);
        }
        Object obj = builder.f4929T;
        if (obj != null) {
            c.m2665c(this.f5181b, obj);
        }
        this.f5181b.setExtras(builder.f4911B);
        d.m2670e(this.f5181b, builder.f4946q);
        RemoteViews remoteViews = builder.f4915F;
        if (remoteViews != null) {
            d.m2668c(this.f5181b, remoteViews);
        }
        RemoteViews remoteViews2 = builder.f4916G;
        if (remoteViews2 != null) {
            d.m2667b(this.f5181b, remoteViews2);
        }
        RemoteViews remoteViews3 = builder.f4917H;
        if (remoteViews3 != null) {
            d.m2669d(this.f5181b, remoteViews3);
        }
        e.m2672b(this.f5181b, builder.f4919J);
        e.m2675e(this.f5181b, builder.f4945p);
        e.m2676f(this.f5181b, builder.f4920K);
        e.m2677g(this.f5181b, builder.f4922M);
        e.m2674d(this.f5181b, builder.f4923N);
        if (builder.f4955z) {
            e.m2673c(this.f5181b, builder.f4954y);
        }
        if (!TextUtils.isEmpty(builder.f4918I)) {
            this.f5181b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        Iterator<Person> it5 = builder.mPersonList.iterator();
        while (it5.hasNext()) {
            f.m2678a(this.f5181b, it5.next().toAndroidPerson());
        }
        int i3 = Build.VERSION.SDK_INT;
        g.m2680a(this.f5181b, builder.f4925P);
        g.m2681b(this.f5181b, NotificationCompat.BubbleMetadata.toPlatform(builder.f4926Q));
        LocusIdCompat locusIdCompat = builder.f4921L;
        if (locusIdCompat != null) {
            g.m2683d(this.f5181b, locusIdCompat.toLocusId());
        }
        if (i3 >= 31 && (i = builder.f4924O) != 0) {
            h.m2685b(this.f5181b, i);
        }
        if (builder.f4928S) {
            if (this.f5182c.f4951v) {
                this.f5187h = 2;
            } else {
                this.f5187h = 1;
            }
            this.f5181b.setVibrate(null);
            this.f5181b.setSound(null);
            int i4 = notification.defaults & (-2) & (-3);
            notification.defaults = i4;
            this.f5181b.setDefaults(i4);
            if (TextUtils.isEmpty(this.f5182c.f4950u)) {
                a.m2653g(this.f5181b, NotificationCompat.GROUP_KEY_SILENT);
            }
            e.m2674d(this.f5181b, this.f5187h);
        }
    }

    @Nullable
    /* renamed from: d */
    public static List<String> m2640d(@Nullable List<String> list, @Nullable List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        ArraySet arraySet = new ArraySet(list.size() + list2.size());
        arraySet.addAll(list);
        arraySet.addAll(list2);
        return new ArrayList(arraySet);
    }

    @Nullable
    /* renamed from: f */
    public static List<String> m2641f(@Nullable List<Person> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Person> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().resolveToLegacyUri());
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m2642a(NotificationCompat.Action action) {
        IconCompat iconCompat = action.getIconCompat();
        Notification.Action.Builder m2663a = c.m2663a(iconCompat != null ? iconCompat.toIcon() : null, action.getTitle(), action.getActionIntent());
        if (action.getRemoteInputs() != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.m2614b(action.getRemoteInputs())) {
                a.m2649c(m2663a, remoteInput);
            }
        }
        Bundle bundle = action.getExtras() != null ? new Bundle(action.getExtras()) : new Bundle();
        bundle.putBoolean(C0619b.f5191c, action.getAllowGeneratedReplies());
        int i = Build.VERSION.SDK_INT;
        d.m2666a(m2663a, action.getAllowGeneratedReplies());
        bundle.putInt(NotificationCompat.Action.f4852k, action.getSemanticAction());
        f.m2679b(m2663a, action.getSemanticAction());
        g.m2682c(m2663a, action.isContextual());
        if (i >= 31) {
            h.m2684a(m2663a, action.isAuthenticationRequired());
        }
        bundle.putBoolean(NotificationCompat.Action.f4851j, action.getShowsUserInterface());
        a.m2648b(m2663a, bundle);
        a.m2647a(this.f5181b, a.m2650d(m2663a));
    }

    /* renamed from: b */
    public Notification m2643b() {
        Bundle extras;
        RemoteViews makeHeadsUpContentView;
        RemoteViews makeBigContentView;
        NotificationCompat.Style style = this.f5182c.f4943n;
        if (style != null) {
            style.apply(this);
        }
        RemoteViews makeContentView = style != null ? style.makeContentView(this) : null;
        Notification m2644c = m2644c();
        if (makeContentView != null) {
            m2644c.contentView = makeContentView;
        } else {
            RemoteViews remoteViews = this.f5182c.f4915F;
            if (remoteViews != null) {
                m2644c.contentView = remoteViews;
            }
        }
        if (style != null && (makeBigContentView = style.makeBigContentView(this)) != null) {
            m2644c.bigContentView = makeBigContentView;
        }
        if (style != null && (makeHeadsUpContentView = this.f5182c.f4943n.makeHeadsUpContentView(this)) != null) {
            m2644c.headsUpContentView = makeHeadsUpContentView;
        }
        if (style != null && (extras = NotificationCompat.getExtras(m2644c)) != null) {
            style.addCompatExtras(extras);
        }
        return m2644c;
    }

    /* renamed from: c */
    public Notification m2644c() {
        return this.f5181b.build();
    }

    /* renamed from: e */
    public Context m2645e() {
        return this.f5180a;
    }

    /* renamed from: g */
    public final void m2646g(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults = notification.defaults & (-2) & (-3);
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public Notification.Builder getBuilder() {
        return this.f5181b;
    }
}
