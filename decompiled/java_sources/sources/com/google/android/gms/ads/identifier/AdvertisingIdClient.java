package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.sunia.HTREnginev2.shp;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

@KeepForSdk
@ParametersAreNonnullByDefault
/* loaded from: classes5.dex */
public class AdvertisingIdClient {

    /* renamed from: a */
    @Nullable
    @GuardedBy("this")
    public BlockingServiceConnection f28844a;

    /* renamed from: b */
    @Nullable
    @GuardedBy("this")
    public zzf f28845b;

    /* renamed from: c */
    @GuardedBy("this")
    public boolean f28846c;

    /* renamed from: d */
    public final Object f28847d;

    /* renamed from: e */
    @Nullable
    @GuardedBy("mAutoDisconnectTaskLock")
    public shp f28848e;

    /* renamed from: f */
    @GuardedBy("this")
    public final Context f28849f;

    /* renamed from: g */
    public final long f28850g;

    @KeepForSdkWithMembers
    /* loaded from: classes5.dex */
    public static final class Info {

        /* renamed from: a */
        @Nullable
        public final String f28851a;

        /* renamed from: b */
        public final boolean f28852b;

        @Deprecated
        public Info(@Nullable String str, boolean z) {
            this.f28851a = str;
            this.f28852b = z;
        }

        @Nullable
        public String getId() {
            return this.f28851a;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.f28852b;
        }

        @NonNull
        public String toString() {
            String str = this.f28851a;
            boolean z = this.f28852b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(@NonNull Context context) {
        this(context, 30000L, false, false);
    }

    @NonNull
    @KeepForSdk
    public static Info getAdvertisingIdInfo(@NonNull Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.zzb(false);
            Info m21884b = advertisingIdClient.m21884b(-1);
            advertisingIdClient.m21883a(m21884b, true, 0.0f, SystemClock.elapsedRealtime() - elapsedRealtime, "", null);
            return m21884b;
        } finally {
        }
    }

    @KeepForSdk
    public static boolean getIsAdIdFakeForDebugLogging(@NonNull Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        boolean zzd;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.zzb(false);
            Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                if (!advertisingIdClient.f28846c) {
                    synchronized (advertisingIdClient.f28847d) {
                        shp shpVar = advertisingIdClient.f28848e;
                        if (shpVar == null || !shpVar.f84163h) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        advertisingIdClient.zzb(false);
                        if (!advertisingIdClient.f28846c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                    }
                }
                Preconditions.checkNotNull(advertisingIdClient.f28844a);
                Preconditions.checkNotNull(advertisingIdClient.f28845b);
                try {
                    zzd = advertisingIdClient.f28845b.zzd();
                } catch (RemoteException e2) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                    throw new IOException("Remote exception");
                }
            }
            advertisingIdClient.m21885c();
            return zzd;
        } finally {
            advertisingIdClient.zza();
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    @VisibleForTesting
    /* renamed from: a */
    public final boolean m21883a(@Nullable Info info, boolean z, float f, long j, String str, @Nullable Throwable th) {
        if (Math.random() > 0.0d) {
            return false;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("app_context", "1");
        if (info != null) {
            hashMap.put("limit_ad_tracking", true != info.isLimitAdTrackingEnabled() ? "0" : "1");
            String id = info.getId();
            if (id != null) {
                hashMap.put("ad_id_size", Integer.toString(id.length()));
            }
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new C5043a(this, hashMap).start();
        return true;
    }

    /* renamed from: b */
    public final Info m21884b(int i) throws IOException {
        Info info;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f28846c) {
                synchronized (this.f28847d) {
                    shp shpVar = this.f28848e;
                    if (shpVar == null || !shpVar.f84163h) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zzb(false);
                    if (!this.f28846c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            Preconditions.checkNotNull(this.f28844a);
            Preconditions.checkNotNull(this.f28845b);
            try {
                info = new Info(this.f28845b.zzc(), this.f28845b.zze(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m21885c();
        return info;
    }

    /* renamed from: c */
    public final void m21885c() {
        synchronized (this.f28847d) {
            shp shpVar = this.f28848e;
            if (shpVar != null) {
                shpVar.f84162g.countDown();
                try {
                    this.f28848e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.f28850g;
            if (j > 0) {
                this.f28848e = new shp(this, j);
            }
        }
    }

    public final void finalize() throws Throwable {
        zza();
        super.finalize();
    }

    @NonNull
    @KeepForSdk
    public Info getInfo() throws IOException {
        return m21884b(-1);
    }

    @KeepForSdk
    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb(true);
    }

    public final void zza() {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f28849f == null || this.f28844a == null) {
                return;
            }
            try {
                if (this.f28846c) {
                    ConnectionTracker.getInstance().unbindService(this.f28849f, this.f28844a);
                }
            } catch (Throwable th) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
            }
            this.f28846c = false;
            this.f28845b = null;
            this.f28844a = null;
        }
    }

    @VisibleForTesting
    public final void zzb(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f28846c) {
                zza();
            }
            Context context = this.f28849f;
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                    throw new IOException("Google Play services not available");
                }
                BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    if (!ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                        throw new IOException("Connection failure");
                    }
                    this.f28844a = blockingServiceConnection;
                    try {
                        this.f28845b = zze.zza(blockingServiceConnection.getServiceWithTimeout(10000L, TimeUnit.MILLISECONDS));
                        this.f28846c = true;
                        if (z) {
                            m21885c();
                        }
                    } catch (InterruptedException unused) {
                        throw new IOException("Interrupted exception");
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                } finally {
                    IOException iOException = new IOException(th);
                }
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new GooglePlayServicesNotAvailableException(9);
            }
        }
    }

    @VisibleForTesting
    public AdvertisingIdClient(@NonNull Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        this.f28847d = new Object();
        Preconditions.checkNotNull(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f28849f = context;
        this.f28846c = false;
        this.f28850g = j;
    }
}
