package androidx.core.content.pm;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public class ShortcutManagerCompat {
    public static final String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
    public static final int FLAG_MATCH_CACHED = 8;
    public static final int FLAG_MATCH_DYNAMIC = 2;
    public static final int FLAG_MATCH_MANIFEST = 1;
    public static final int FLAG_MATCH_PINNED = 4;

    /* renamed from: a */
    @VisibleForTesting
    public static final String f5318a = "com.android.launcher.action.INSTALL_SHORTCUT";

    /* renamed from: b */
    @VisibleForTesting
    public static final String f5319b = "com.android.launcher.permission.INSTALL_SHORTCUT";

    /* renamed from: c */
    public static final int f5320c = 96;

    /* renamed from: d */
    public static final int f5321d = 48;

    /* renamed from: e */
    public static volatile ShortcutInfoCompatSaver<?> f5322e = null;

    /* renamed from: f */
    public static volatile List<ShortcutInfoChangeListener> f5323f = null;

    /* renamed from: g */
    public static final String f5324g = "androidx.core.content.pm.SHORTCUT_LISTENER";

    /* renamed from: h */
    public static final String f5325h = "androidx.core.content.pm.shortcut_listener_impl";

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ShortcutMatchFlags {
    }

    /* renamed from: androidx.core.content.pm.ShortcutManagerCompat$a */
    /* loaded from: classes3.dex */
    public class C0644a extends BroadcastReceiver {

        /* renamed from: a */
        public final /* synthetic */ IntentSender f5326a;

        public C0644a(IntentSender intentSender) {
            this.f5326a = intentSender;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                this.f5326a.sendIntent(context, 0, null, null, null);
            } catch (IntentSender.SendIntentException unused) {
            }
        }
    }

    @RequiresApi(25)
    /* renamed from: androidx.core.content.pm.ShortcutManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0645b {
        /* renamed from: a */
        public static String m2833a(@NonNull List<ShortcutInfo> list) {
            int i = -1;
            String str = null;
            for (ShortcutInfo shortcutInfo : list) {
                if (shortcutInfo.getRank() > i) {
                    str = shortcutInfo.getId();
                    i = shortcutInfo.getRank();
                }
            }
            return str;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static boolean m2823a(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Bitmap decodeStream;
        IconCompat iconCompat = shortcutInfoCompat.f5295i;
        if (iconCompat == null) {
            return false;
        }
        int i = iconCompat.mType;
        if (i != 6 && i != 4) {
            return true;
        }
        InputStream uriInputStream = iconCompat.getUriInputStream(context);
        if (uriInputStream == null || (decodeStream = BitmapFactory.decodeStream(uriInputStream)) == null) {
            return false;
        }
        shortcutInfoCompat.f5295i = i == 6 ? IconCompat.createWithAdaptiveBitmap(decodeStream) : IconCompat.createWithBitmap(decodeStream);
        return true;
    }

    public static boolean addDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> m2830h = m2830h(list, 1);
        if (Build.VERSION.SDK_INT <= 29) {
            m2824b(context, m2830h);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ShortcutInfoCompat> it2 = m2830h.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().toShortcutInfo());
        }
        if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).addDynamicShortcuts(arrayList)) {
            return false;
        }
        m2829g(context).addShortcuts(m2830h);
        Iterator<ShortcutInfoChangeListener> it3 = m2828f(context).iterator();
        while (it3.hasNext()) {
            it3.next().onShortcutAdded(list);
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: b */
    public static void m2824b(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        for (ShortcutInfoCompat shortcutInfoCompat : new ArrayList(list)) {
            if (!m2823a(context, shortcutInfoCompat)) {
                list.remove(shortcutInfoCompat);
            }
        }
    }

    /* renamed from: c */
    public static int m2825c(@NonNull Context context, boolean z) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.f1429r);
        int max = Math.max(1, activityManager == null || activityManager.isLowRamDevice() ? 48 : 96);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int) (max * ((z ? displayMetrics.xdpi : displayMetrics.ydpi) / 160.0f));
    }

    @NonNull
    public static Intent createShortcutResultIntent(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Intent createShortcutResultIntent = ((ShortcutManager) context.getSystemService(ShortcutManager.class)).createShortcutResultIntent(shortcutInfoCompat.toShortcutInfo());
        if (createShortcutResultIntent == null) {
            createShortcutResultIntent = new Intent();
        }
        return shortcutInfoCompat.m2820a(createShortcutResultIntent);
    }

    @VisibleForTesting
    /* renamed from: d */
    public static List<ShortcutInfoChangeListener> m2826d() {
        return f5323f;
    }

    public static void disableShortcuts(@NonNull Context context, @NonNull List<String> list, @Nullable CharSequence charSequence) {
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).disableShortcuts(list, charSequence);
        m2829g(context).removeShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it2 = m2828f(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutRemoved(list);
        }
    }

    /* renamed from: e */
    public static String m2827e(@NonNull List<ShortcutInfoCompat> list) {
        int i = -1;
        String str = null;
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.getRank() > i) {
                str = shortcutInfoCompat.getId();
                i = shortcutInfoCompat.getRank();
            }
        }
        return str;
    }

    public static void enableShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> m2830h = m2830h(list, 1);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<ShortcutInfoCompat> it2 = m2830h.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().f5288b);
        }
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).enableShortcuts(arrayList);
        m2829g(context).addShortcuts(m2830h);
        Iterator<ShortcutInfoChangeListener> it3 = m2828f(context).iterator();
        while (it3.hasNext()) {
            it3.next().onShortcutAdded(list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x002b  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> m2828f(android.content.Context r7) {
        /*
            java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> r0 = androidx.core.content.pm.ShortcutManagerCompat.f5323f
            if (r0 != 0) goto L71
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.content.pm.PackageManager r1 = r7.getPackageManager()
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "androidx.core.content.pm.SHORTCUT_LISTENER"
            r2.<init>(r3)
            java.lang.String r3 = r7.getPackageName()
            r2.setPackage(r3)
            r3 = 128(0x80, float:1.794E-43)
            java.util.List r1 = r1.queryIntentActivities(r2, r3)
            java.util.Iterator r1 = r1.iterator()
        L25:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L6b
            java.lang.Object r2 = r1.next()
            android.content.pm.ResolveInfo r2 = (android.content.pm.ResolveInfo) r2
            android.content.pm.ActivityInfo r2 = r2.activityInfo
            if (r2 != 0) goto L36
            goto L25
        L36:
            android.os.Bundle r2 = r2.metaData
            if (r2 != 0) goto L3b
            goto L25
        L3b:
            java.lang.String r3 = "androidx.core.content.pm.shortcut_listener_impl"
            java.lang.String r2 = r2.getString(r3)
            if (r2 != 0) goto L44
            goto L25
        L44:
            java.lang.Class<androidx.core.content.pm.ShortcutManagerCompat> r3 = androidx.core.content.pm.ShortcutManagerCompat.class
            java.lang.ClassLoader r3 = r3.getClassLoader()     // Catch: java.lang.Exception -> L25
            r4 = 0
            java.lang.Class r2 = java.lang.Class.forName(r2, r4, r3)     // Catch: java.lang.Exception -> L25
            java.lang.String r3 = "getInstance"
            r5 = 1
            java.lang.Class[] r5 = new java.lang.Class[r5]     // Catch: java.lang.Exception -> L25
            java.lang.Class<android.content.Context> r6 = android.content.Context.class
            r5[r4] = r6     // Catch: java.lang.Exception -> L25
            java.lang.reflect.Method r2 = r2.getMethod(r3, r5)     // Catch: java.lang.Exception -> L25
            java.lang.Object[] r3 = new java.lang.Object[]{r7}     // Catch: java.lang.Exception -> L25
            r4 = 0
            java.lang.Object r2 = r2.invoke(r4, r3)     // Catch: java.lang.Exception -> L25
            androidx.core.content.pm.ShortcutInfoChangeListener r2 = (androidx.core.content.pm.ShortcutInfoChangeListener) r2     // Catch: java.lang.Exception -> L25
            r0.add(r2)     // Catch: java.lang.Exception -> L25
            goto L25
        L6b:
            java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> r7 = androidx.core.content.pm.ShortcutManagerCompat.f5323f
            if (r7 != 0) goto L71
            androidx.core.content.pm.ShortcutManagerCompat.f5323f = r0
        L71:
            java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> r7 = androidx.core.content.pm.ShortcutManagerCompat.f5323f
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.pm.ShortcutManagerCompat.m2828f(android.content.Context):java.util.List");
    }

    /* renamed from: g */
    public static ShortcutInfoCompatSaver<?> m2829g(Context context) {
        if (f5322e == null) {
            try {
                f5322e = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
            } catch (Exception unused) {
            }
            if (f5322e == null) {
                f5322e = new ShortcutInfoCompatSaver.NoopImpl();
            }
        }
        return f5322e;
    }

    @NonNull
    public static List<ShortcutInfoCompat> getDynamicShortcuts(@NonNull Context context) {
        List<ShortcutInfo> dynamicShortcuts = ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getDynamicShortcuts();
        ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
        Iterator<ShortcutInfo> it2 = dynamicShortcuts.iterator();
        while (it2.hasNext()) {
            arrayList.add(new ShortcutInfoCompat.Builder(context, it2.next()).build());
        }
        return arrayList;
    }

    public static int getIconMaxHeight(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getIconMaxHeight();
    }

    public static int getIconMaxWidth(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getIconMaxWidth();
    }

    public static int getMaxShortcutCountPerActivity(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getMaxShortcutCountPerActivity();
    }

    @NonNull
    public static List<ShortcutInfoCompat> getShortcuts(@NonNull Context context, int i) {
        List shortcuts;
        if (Build.VERSION.SDK_INT >= 30) {
            shortcuts = ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getShortcuts(i);
            return ShortcutInfoCompat.m2815c(context, shortcuts);
        }
        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(ShortcutManager.class);
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            arrayList.addAll(shortcutManager.getManifestShortcuts());
        }
        if ((i & 2) != 0) {
            arrayList.addAll(shortcutManager.getDynamicShortcuts());
        }
        if ((i & 4) != 0) {
            arrayList.addAll(shortcutManager.getPinnedShortcuts());
        }
        return ShortcutInfoCompat.m2815c(context, arrayList);
    }

    @NonNull
    /* renamed from: h */
    public static List<ShortcutInfoCompat> m2830h(@NonNull List<ShortcutInfoCompat> list, int i) {
        Objects.requireNonNull(list);
        if (Build.VERSION.SDK_INT > 32) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.isExcludedFromSurfaces(i)) {
                arrayList.remove(shortcutInfoCompat);
            }
        }
        return arrayList;
    }

    @VisibleForTesting
    /* renamed from: i */
    public static void m2831i(List<ShortcutInfoChangeListener> list) {
        f5323f = list;
    }

    public static boolean isRateLimitingActive(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).isRateLimitingActive();
    }

    public static boolean isRequestPinShortcutSupported(@NonNull Context context) {
        return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).isRequestPinShortcutSupported();
    }

    @VisibleForTesting
    /* renamed from: j */
    public static void m2832j(ShortcutInfoCompatSaver<Void> shortcutInfoCompatSaver) {
        f5322e = shortcutInfoCompatSaver;
    }

    public static boolean pushDynamicShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoCompat);
        int i = Build.VERSION.SDK_INT;
        if (i <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            Iterator<ShortcutInfoChangeListener> it2 = m2828f(context).iterator();
            while (it2.hasNext()) {
                it2.next().onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            return true;
        }
        int maxShortcutCountPerActivity = getMaxShortcutCountPerActivity(context);
        if (maxShortcutCountPerActivity == 0) {
            return false;
        }
        if (i <= 29) {
            m2823a(context, shortcutInfoCompat);
        }
        if (i >= 30) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).pushDynamicShortcut(shortcutInfoCompat.toShortcutInfo());
        } else {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(ShortcutManager.class);
            if (shortcutManager.isRateLimitingActive()) {
                return false;
            }
            List<ShortcutInfo> dynamicShortcuts = shortcutManager.getDynamicShortcuts();
            if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutManager.removeDynamicShortcuts(Arrays.asList(C0645b.m2833a(dynamicShortcuts)));
            }
            shortcutManager.addDynamicShortcuts(Arrays.asList(shortcutInfoCompat.toShortcutInfo()));
        }
        ShortcutInfoCompatSaver<?> m2829g = m2829g(context);
        try {
            List<ShortcutInfoCompat> shortcuts = m2829g.getShortcuts();
            if (shortcuts.size() >= maxShortcutCountPerActivity) {
                m2829g.removeShortcuts(Arrays.asList(m2827e(shortcuts)));
            }
            m2829g.addShortcuts(Arrays.asList(shortcutInfoCompat));
            Iterator<ShortcutInfoChangeListener> it3 = m2828f(context).iterator();
            while (it3.hasNext()) {
                it3.next().onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return true;
        } catch (Exception unused) {
            Iterator<ShortcutInfoChangeListener> it4 = m2828f(context).iterator();
            while (it4.hasNext()) {
                it4.next().onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return false;
        } catch (Throwable th) {
            Iterator<ShortcutInfoChangeListener> it5 = m2828f(context).iterator();
            while (it5.hasNext()) {
                it5.next().onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            throw th;
        }
    }

    public static void removeAllDynamicShortcuts(@NonNull Context context) {
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeAllDynamicShortcuts();
        m2829g(context).removeAllShortcuts();
        Iterator<ShortcutInfoChangeListener> it2 = m2828f(context).iterator();
        while (it2.hasNext()) {
            it2.next().onAllShortcutsRemoved();
        }
    }

    public static void removeDynamicShortcuts(@NonNull Context context, @NonNull List<String> list) {
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeDynamicShortcuts(list);
        m2829g(context).removeShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it2 = m2828f(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutRemoved(list);
        }
    }

    public static void removeLongLivedShortcuts(@NonNull Context context, @NonNull List<String> list) {
        if (Build.VERSION.SDK_INT < 30) {
            removeDynamicShortcuts(context, list);
            return;
        }
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeLongLivedShortcuts(list);
        m2829g(context).removeShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it2 = m2828f(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutRemoved(list);
        }
    }

    public static void reportShortcutUsed(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).reportShortcutUsed(str);
        Iterator<ShortcutInfoChangeListener> it2 = m2828f(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutUsageReported(Collections.singletonList(str));
        }
    }

    public static boolean requestPinShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat, @Nullable IntentSender intentSender) {
        if (Build.VERSION.SDK_INT > 32 || !shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).requestPinShortcut(shortcutInfoCompat.toShortcutInfo(), intentSender);
        }
        return false;
    }

    public static boolean setDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(list);
        List<ShortcutInfoCompat> m2830h = m2830h(list, 1);
        ArrayList arrayList = new ArrayList(m2830h.size());
        Iterator<ShortcutInfoCompat> it2 = m2830h.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().toShortcutInfo());
        }
        if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).setDynamicShortcuts(arrayList)) {
            return false;
        }
        m2829g(context).removeAllShortcuts();
        m2829g(context).addShortcuts(m2830h);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : m2828f(context)) {
            shortcutInfoChangeListener.onAllShortcutsRemoved();
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
        return true;
    }

    public static boolean updateShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> m2830h = m2830h(list, 1);
        if (Build.VERSION.SDK_INT <= 29) {
            m2824b(context, m2830h);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ShortcutInfoCompat> it2 = m2830h.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().toShortcutInfo());
        }
        if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).updateShortcuts(arrayList)) {
            return false;
        }
        m2829g(context).addShortcuts(m2830h);
        Iterator<ShortcutInfoChangeListener> it3 = m2828f(context).iterator();
        while (it3.hasNext()) {
            it3.next().onShortcutUpdated(list);
        }
        return true;
    }
}
