package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.Logger;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.utils.PackageManagerHelper;

/* loaded from: classes3.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f11611a = Logger.tagWithPrefix("ConstrntProxyUpdtRecvr");

    /* renamed from: b */
    public static final String f11612b = "androidx.work.impl.background.systemalarm.UpdateProxies";

    /* renamed from: c */
    public static final String f11613c = "KEY_BATTERY_NOT_LOW_PROXY_ENABLED";

    /* renamed from: d */
    public static final String f11614d = "KEY_BATTERY_CHARGING_PROXY_ENABLED";

    /* renamed from: e */
    public static final String f11615e = "KEY_STORAGE_NOT_LOW_PROXY_ENABLED";

    /* renamed from: f */
    public static final String f11616f = "KEY_NETWORK_STATE_PROXY_ENABLED";

    /* renamed from: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver$a */
    /* loaded from: classes3.dex */
    public class RunnableC1599a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Intent f11617e;

        /* renamed from: f */
        public final /* synthetic */ Context f11618f;

        /* renamed from: g */
        public final /* synthetic */ BroadcastReceiver.PendingResult f11619g;

        public RunnableC1599a(final Intent val$intent, final Context val$context, final BroadcastReceiver.PendingResult val$pendingResult) {
            this.f11617e = val$intent;
            this.f11618f = val$context;
            this.f11619g = val$pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f11617e.getBooleanExtra(ConstraintProxyUpdateReceiver.f11613c, false);
                boolean booleanExtra2 = this.f11617e.getBooleanExtra(ConstraintProxyUpdateReceiver.f11614d, false);
                boolean booleanExtra3 = this.f11617e.getBooleanExtra(ConstraintProxyUpdateReceiver.f11615e, false);
                boolean booleanExtra4 = this.f11617e.getBooleanExtra(ConstraintProxyUpdateReceiver.f11616f, false);
                Logger.get().debug(ConstraintProxyUpdateReceiver.f11611a, "Updating proxies: (BatteryNotLowProxy (" + booleanExtra + "), BatteryChargingProxy (" + booleanExtra2 + "), StorageNotLowProxy (" + booleanExtra3 + "), NetworkStateProxy (" + booleanExtra4 + "), ");
                PackageManagerHelper.setComponentEnabled(this.f11618f, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                PackageManagerHelper.setComponentEnabled(this.f11618f, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                PackageManagerHelper.setComponentEnabled(this.f11618f, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                PackageManagerHelper.setComponentEnabled(this.f11618f, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f11619g.finish();
            }
        }
    }

    @NonNull
    public static Intent newConstraintProxyUpdateIntent(@NonNull Context context, boolean batteryNotLowProxyEnabled, boolean batteryChargingProxyEnabled, boolean storageNotLowProxyEnabled, boolean networkStateProxyEnabled) {
        Intent intent = new Intent(f11612b);
        intent.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
        intent.putExtra(f11613c, batteryNotLowProxyEnabled).putExtra(f11614d, batteryChargingProxyEnabled).putExtra(f11615e, storageNotLowProxyEnabled).putExtra(f11616f, networkStateProxyEnabled);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NonNull final Context context, @Nullable final Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (f11612b.equals(action)) {
            WorkManagerImpl.getInstance(context).getWorkTaskExecutor().executeOnTaskThread(new RunnableC1599a(intent, context, goAsync()));
            return;
        }
        Logger.get().debug(f11611a, "Ignoring unknown action " + action);
    }
}
