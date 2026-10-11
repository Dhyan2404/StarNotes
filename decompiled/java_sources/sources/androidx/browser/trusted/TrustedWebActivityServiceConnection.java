package androidx.browser.trusted;

import android.app.Notification;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.customtabs.trusted.ITrustedWebActivityCallback;
import android.support.customtabs.trusted.ITrustedWebActivityService;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* loaded from: classes3.dex */
public final class TrustedWebActivityServiceConnection {

    /* renamed from: c */
    public static final String f2447c = "android.support.customtabs.trusted.PLATFORM_TAG";

    /* renamed from: d */
    public static final String f2448d = "android.support.customtabs.trusted.PLATFORM_ID";

    /* renamed from: e */
    public static final String f2449e = "android.support.customtabs.trusted.NOTIFICATION";

    /* renamed from: f */
    public static final String f2450f = "android.support.customtabs.trusted.CHANNEL_NAME";

    /* renamed from: g */
    public static final String f2451g = "android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS";

    /* renamed from: h */
    public static final String f2452h = "android.support.customtabs.trusted.NOTIFICATION_SUCCESS";

    /* renamed from: a */
    public final ITrustedWebActivityService f2453a;

    /* renamed from: b */
    public final ComponentName f2454b;

    /* renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnection$a */
    /* loaded from: classes3.dex */
    public class BinderC0363a extends ITrustedWebActivityCallback.Stub {

        /* renamed from: c */
        public final /* synthetic */ TrustedWebActivityCallback f2455c;

        public BinderC0363a(TrustedWebActivityCallback trustedWebActivityCallback) {
            this.f2455c = trustedWebActivityCallback;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityCallback
        public void onExtraCallback(String str, Bundle bundle) throws RemoteException {
            this.f2455c.onExtraCallback(str, bundle);
        }
    }

    /* renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnection$b */
    /* loaded from: classes3.dex */
    public static class C0364b {

        /* renamed from: a */
        public final Parcelable[] f2456a;

        public C0364b(Parcelable[] parcelableArr) {
            this.f2456a = parcelableArr;
        }

        /* renamed from: a */
        public static C0364b m1274a(Bundle bundle) {
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2451g);
            return new C0364b(bundle.getParcelableArray(TrustedWebActivityServiceConnection.f2451g));
        }

        /* renamed from: b */
        public Bundle m1275b() {
            Bundle bundle = new Bundle();
            bundle.putParcelableArray(TrustedWebActivityServiceConnection.f2451g, this.f2456a);
            return bundle;
        }
    }

    /* renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnection$c */
    /* loaded from: classes3.dex */
    public static class C0365c {

        /* renamed from: a */
        public final String f2457a;

        /* renamed from: b */
        public final int f2458b;

        public C0365c(String str, int i) {
            this.f2457a = str;
            this.f2458b = i;
        }

        /* renamed from: a */
        public static C0365c m1276a(Bundle bundle) {
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2447c);
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2448d);
            return new C0365c(bundle.getString(TrustedWebActivityServiceConnection.f2447c), bundle.getInt(TrustedWebActivityServiceConnection.f2448d));
        }

        /* renamed from: b */
        public Bundle m1277b() {
            Bundle bundle = new Bundle();
            bundle.putString(TrustedWebActivityServiceConnection.f2447c, this.f2457a);
            bundle.putInt(TrustedWebActivityServiceConnection.f2448d, this.f2458b);
            return bundle;
        }
    }

    /* renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnection$d */
    /* loaded from: classes3.dex */
    public static class C0366d {

        /* renamed from: a */
        public final String f2459a;

        public C0366d(String str) {
            this.f2459a = str;
        }

        /* renamed from: a */
        public static C0366d m1278a(Bundle bundle) {
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2450f);
            return new C0366d(bundle.getString(TrustedWebActivityServiceConnection.f2450f));
        }

        /* renamed from: b */
        public Bundle m1279b() {
            Bundle bundle = new Bundle();
            bundle.putString(TrustedWebActivityServiceConnection.f2450f, this.f2459a);
            return bundle;
        }
    }

    /* renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnection$e */
    /* loaded from: classes3.dex */
    public static class C0367e {

        /* renamed from: a */
        public final String f2460a;

        /* renamed from: b */
        public final int f2461b;

        /* renamed from: c */
        public final Notification f2462c;

        /* renamed from: d */
        public final String f2463d;

        public C0367e(String str, int i, Notification notification, String str2) {
            this.f2460a = str;
            this.f2461b = i;
            this.f2462c = notification;
            this.f2463d = str2;
        }

        /* renamed from: a */
        public static C0367e m1280a(Bundle bundle) {
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2447c);
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2448d);
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2449e);
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2450f);
            return new C0367e(bundle.getString(TrustedWebActivityServiceConnection.f2447c), bundle.getInt(TrustedWebActivityServiceConnection.f2448d), (Notification) bundle.getParcelable(TrustedWebActivityServiceConnection.f2449e), bundle.getString(TrustedWebActivityServiceConnection.f2450f));
        }

        /* renamed from: b */
        public Bundle m1281b() {
            Bundle bundle = new Bundle();
            bundle.putString(TrustedWebActivityServiceConnection.f2447c, this.f2460a);
            bundle.putInt(TrustedWebActivityServiceConnection.f2448d, this.f2461b);
            bundle.putParcelable(TrustedWebActivityServiceConnection.f2449e, this.f2462c);
            bundle.putString(TrustedWebActivityServiceConnection.f2450f, this.f2463d);
            return bundle;
        }
    }

    /* renamed from: androidx.browser.trusted.TrustedWebActivityServiceConnection$f */
    /* loaded from: classes3.dex */
    public static class C0368f {

        /* renamed from: a */
        public final boolean f2464a;

        public C0368f(boolean z) {
            this.f2464a = z;
        }

        /* renamed from: a */
        public static C0368f m1282a(Bundle bundle) {
            TrustedWebActivityServiceConnection.m1272a(bundle, TrustedWebActivityServiceConnection.f2452h);
            return new C0368f(bundle.getBoolean(TrustedWebActivityServiceConnection.f2452h));
        }

        /* renamed from: b */
        public Bundle m1283b() {
            Bundle bundle = new Bundle();
            bundle.putBoolean(TrustedWebActivityServiceConnection.f2452h, this.f2464a);
            return bundle;
        }
    }

    public TrustedWebActivityServiceConnection(@NonNull ITrustedWebActivityService iTrustedWebActivityService, @NonNull ComponentName componentName) {
        this.f2453a = iTrustedWebActivityService;
        this.f2454b = componentName;
    }

    /* renamed from: a */
    public static void m1272a(Bundle bundle, String str) {
        if (bundle.containsKey(str)) {
            return;
        }
        throw new IllegalArgumentException("Bundle must contain " + str);
    }

    @Nullable
    /* renamed from: b */
    public static ITrustedWebActivityCallback m1273b(@Nullable TrustedWebActivityCallback trustedWebActivityCallback) {
        if (trustedWebActivityCallback == null) {
            return null;
        }
        return new BinderC0363a(trustedWebActivityCallback);
    }

    public boolean areNotificationsEnabled(@NonNull String str) throws RemoteException {
        return C0368f.m1282a(this.f2453a.areNotificationsEnabled(new C0366d(str).m1279b())).f2464a;
    }

    public void cancel(@NonNull String str, int i) throws RemoteException {
        this.f2453a.cancelNotification(new C0365c(str, i).m1277b());
    }

    @NonNull
    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Parcelable[] getActiveNotifications() throws RemoteException {
        return C0364b.m1274a(this.f2453a.getActiveNotifications()).f2456a;
    }

    @NonNull
    public ComponentName getComponentName() {
        return this.f2454b;
    }

    @Nullable
    public Bitmap getSmallIconBitmap() throws RemoteException {
        return (Bitmap) this.f2453a.getSmallIconBitmap().getParcelable(TrustedWebActivityService.KEY_SMALL_ICON_BITMAP);
    }

    public int getSmallIconId() throws RemoteException {
        return this.f2453a.getSmallIconId();
    }

    public boolean notify(@NonNull String str, int i, @NonNull Notification notification, @NonNull String str2) throws RemoteException {
        return C0368f.m1282a(this.f2453a.notifyNotificationWithChannel(new C0367e(str, i, notification, str2).m1281b())).f2464a;
    }

    @Nullable
    public Bundle sendExtraCommand(@NonNull String str, @NonNull Bundle bundle, @Nullable TrustedWebActivityCallback trustedWebActivityCallback) throws RemoteException {
        ITrustedWebActivityCallback m1273b = m1273b(trustedWebActivityCallback);
        return this.f2453a.extraCommand(str, bundle, m1273b == null ? null : m1273b.asBinder());
    }
}
