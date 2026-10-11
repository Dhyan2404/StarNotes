package androidx.browser.trusted;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.customtabs.trusted.ITrustedWebActivityService;
import androidx.annotation.BinderThread;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.browser.trusted.TrustedWebActivityServiceConnection;
import androidx.core.app.NotificationManagerCompat;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.sunia.HTREnginev2.h5k;
import java.util.Locale;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes3.dex */
public abstract class TrustedWebActivityService extends Service {

    @SuppressLint({"ActionValue", "ServiceName"})
    public static final String ACTION_TRUSTED_WEB_ACTIVITY_SERVICE = "android.support.customtabs.trusted.TRUSTED_WEB_ACTIVITY_SERVICE";
    public static final String KEY_SMALL_ICON_BITMAP = "android.support.customtabs.trusted.SMALL_ICON_BITMAP";
    public static final String KEY_SUCCESS = "androidx.browser.trusted.SUCCESS";
    public static final String META_DATA_NAME_SMALL_ICON = "android.support.customtabs.trusted.SMALL_ICON";
    public static final int SMALL_ICON_NOT_SET = -1;

    /* renamed from: e */
    public NotificationManager f2443e;

    /* renamed from: f */
    public int f2444f = -1;

    /* renamed from: g */
    public final ITrustedWebActivityService.Stub f2445g = new BinderC0362a();

    /* renamed from: androidx.browser.trusted.TrustedWebActivityService$a */
    /* loaded from: classes3.dex */
    public class BinderC0362a extends ITrustedWebActivityService.Stub {
        public BinderC0362a() {
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle areNotificationsEnabled(Bundle bundle) {
            m1271e();
            return new TrustedWebActivityServiceConnection.C0368f(TrustedWebActivityService.this.onAreNotificationsEnabled(TrustedWebActivityServiceConnection.C0366d.m1278a(bundle).f2459a)).m1283b();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public void cancelNotification(Bundle bundle) {
            m1271e();
            TrustedWebActivityServiceConnection.C0365c m1276a = TrustedWebActivityServiceConnection.C0365c.m1276a(bundle);
            TrustedWebActivityService.this.onCancelNotification(m1276a.f2457a, m1276a.f2458b);
        }

        /* renamed from: e */
        public final void m1271e() {
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            if (trustedWebActivityService.f2444f == -1) {
                String[] packagesForUid = trustedWebActivityService.getPackageManager().getPackagesForUid(Binder.getCallingUid());
                int i = 0;
                if (packagesForUid == null) {
                    packagesForUid = new String[0];
                }
                Token load = TrustedWebActivityService.this.getTokenStore().load();
                PackageManager packageManager = TrustedWebActivityService.this.getPackageManager();
                if (load != null) {
                    int length = packagesForUid.length;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        if (load.matches(packagesForUid[i], packageManager)) {
                            TrustedWebActivityService.this.f2444f = Binder.getCallingUid();
                            break;
                        }
                        i++;
                    }
                }
            }
            if (TrustedWebActivityService.this.f2444f != Binder.getCallingUid()) {
                throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
            }
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) {
            m1271e();
            return TrustedWebActivityService.this.onExtraCommand(str, bundle, TrustedWebActivityCallbackRemote.m1267a(iBinder));
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getActiveNotifications() {
            m1271e();
            return new TrustedWebActivityServiceConnection.C0364b(TrustedWebActivityService.this.onGetActiveNotifications()).m1275b();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getSmallIconBitmap() {
            m1271e();
            return TrustedWebActivityService.this.onGetSmallIconBitmap();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public int getSmallIconId() {
            m1271e();
            return TrustedWebActivityService.this.onGetSmallIconId();
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle notifyNotificationWithChannel(Bundle bundle) {
            m1271e();
            TrustedWebActivityServiceConnection.C0367e m1280a = TrustedWebActivityServiceConnection.C0367e.m1280a(bundle);
            return new TrustedWebActivityServiceConnection.C0368f(TrustedWebActivityService.this.onNotifyNotificationWithChannel(m1280a.f2460a, m1280a.f2461b, m1280a.f2462c, m1280a.f2463d)).m1283b();
        }
    }

    /* renamed from: a */
    public static String m1269a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', NameUtil.USCORE) + "_channel_id";
    }

    /* renamed from: b */
    public final void m1270b() {
        if (this.f2443e == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }

    @NonNull
    @BinderThread
    public abstract TokenStore getTokenStore();

    @BinderThread
    public boolean onAreNotificationsEnabled(@NonNull String str) {
        m1270b();
        if (NotificationManagerCompat.from(this).areNotificationsEnabled()) {
            return h5k.m54400b(this.f2443e, m1269a(str));
        }
        return false;
    }

    @Override // android.app.Service
    @Nullable
    @MainThread
    public final IBinder onBind(@Nullable Intent intent) {
        return this.f2445g;
    }

    @BinderThread
    public void onCancelNotification(@NonNull String str, int i) {
        m1270b();
        this.f2443e.cancel(str, i);
    }

    @Override // android.app.Service
    @CallSuper
    @MainThread
    public void onCreate() {
        super.onCreate();
        this.f2443e = (NotificationManager) getSystemService(FunctionKey.NOTIFICATION);
    }

    @Nullable
    @BinderThread
    public Bundle onExtraCommand(@NonNull String str, @NonNull Bundle bundle, @Nullable TrustedWebActivityCallbackRemote trustedWebActivityCallbackRemote) {
        return null;
    }

    @NonNull
    @BinderThread
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Parcelable[] onGetActiveNotifications() {
        m1270b();
        return NotificationApiHelperForM.m1266a(this.f2443e);
    }

    @NonNull
    @BinderThread
    public Bundle onGetSmallIconBitmap() {
        int onGetSmallIconId = onGetSmallIconId();
        Bundle bundle = new Bundle();
        if (onGetSmallIconId == -1) {
            return bundle;
        }
        bundle.putParcelable(KEY_SMALL_ICON_BITMAP, BitmapFactory.decodeResource(getResources(), onGetSmallIconId));
        return bundle;
    }

    @BinderThread
    public int onGetSmallIconId() {
        try {
            Bundle bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
            if (bundle == null) {
                return -1;
            }
            return bundle.getInt(META_DATA_NAME_SMALL_ICON, -1);
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    @BinderThread
    public boolean onNotifyNotificationWithChannel(@NonNull String str, int i, @NonNull Notification notification, @NonNull String str2) {
        m1270b();
        if (!NotificationManagerCompat.from(this).areNotificationsEnabled()) {
            return false;
        }
        String m1269a = m1269a(str2);
        Notification m54399a = h5k.m54399a(this, this.f2443e, notification, m1269a, str2);
        if (!h5k.m54400b(this.f2443e, m1269a)) {
            return false;
        }
        this.f2443e.notify(str, i, m54399a);
        return true;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@Nullable Intent intent) {
        this.f2444f = -1;
        return super.onUnbind(intent);
    }
}
