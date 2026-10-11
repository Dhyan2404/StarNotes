package com.google.android.exoplayer2.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.NetworkTypeObserver;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes5.dex */
public final class NetworkTypeObserver {

    /* renamed from: e */
    @Nullable
    public static NetworkTypeObserver f28404e;

    /* renamed from: a */
    public final Handler f28405a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public final CopyOnWriteArrayList<WeakReference<Listener>> f28406b = new CopyOnWriteArrayList<>();

    /* renamed from: c */
    public final Object f28407c = new Object();

    /* renamed from: d */
    @GuardedBy("networkTypeLock")
    public int f28408d = 0;

    /* loaded from: classes5.dex */
    public static final class Config {

        /* renamed from: a */
        public static volatile boolean f28409a;

        public static void disable5GNsaDisambiguation() {
            f28409a = true;
        }
    }

    /* loaded from: classes5.dex */
    public interface Listener {
        void onNetworkTypeChanged(int i);
    }

    /* renamed from: com.google.android.exoplayer2.util.NetworkTypeObserver$b */
    /* loaded from: classes5.dex */
    public final class C5018b extends BroadcastReceiver {
        public C5018b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int m21511e = NetworkTypeObserver.m21511e(context);
            int i = Util.SDK_INT;
            if (i >= 29 && !Config.f28409a && m21511e == 5) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) Assertions.checkNotNull((TelephonyManager) context.getSystemService("phone"));
                    C5019c c5019c = new C5019c();
                    if (i < 31) {
                        telephonyManager.listen(c5019c, 1);
                    } else {
                        telephonyManager.listen(c5019c, 1048576);
                    }
                    telephonyManager.listen(c5019c, 0);
                    return;
                } catch (RuntimeException unused) {
                }
            }
            NetworkTypeObserver.this.m21514h(m21511e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.NetworkTypeObserver$c */
    /* loaded from: classes5.dex */
    public class C5019c extends PhoneStateListener {
        public C5019c() {
        }

        @Override // android.telephony.PhoneStateListener
        @RequiresApi(31)
        public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
            int overrideNetworkType;
            overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
            NetworkTypeObserver.this.m21514h(overrideNetworkType == 3 || overrideNetworkType == 4 ? 10 : 5);
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(@Nullable ServiceState serviceState) {
            String serviceState2 = serviceState == null ? "" : serviceState.toString();
            NetworkTypeObserver.this.m21514h(serviceState2.contains("nrState=CONNECTED") || serviceState2.contains("nrState=NOT_RESTRICTED") ? 10 : 5);
        }
    }

    public NetworkTypeObserver(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new C5018b(), intentFilter);
    }

    /* renamed from: d */
    public static int m21510d(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return Util.SDK_INT >= 29 ? 9 : 0;
        }
    }

    /* renamed from: e */
    public static int m21511e(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return m21510d(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m21512f(Listener listener) {
        listener.onNetworkTypeChanged(getNetworkType());
    }

    public static synchronized NetworkTypeObserver getInstance(Context context) {
        NetworkTypeObserver networkTypeObserver;
        synchronized (NetworkTypeObserver.class) {
            if (f28404e == null) {
                f28404e = new NetworkTypeObserver(context);
            }
            networkTypeObserver = f28404e;
        }
        return networkTypeObserver;
    }

    @VisibleForTesting
    public static synchronized void resetForTests() {
        synchronized (NetworkTypeObserver.class) {
            f28404e = null;
        }
    }

    /* renamed from: g */
    public final void m21513g() {
        Iterator<WeakReference<Listener>> it2 = this.f28406b.iterator();
        while (it2.hasNext()) {
            WeakReference<Listener> next = it2.next();
            if (next.get() == null) {
                this.f28406b.remove(next);
            }
        }
    }

    public int getNetworkType() {
        int i;
        synchronized (this.f28407c) {
            i = this.f28408d;
        }
        return i;
    }

    /* renamed from: h */
    public final void m21514h(int i) {
        synchronized (this.f28407c) {
            if (this.f28408d == i) {
                return;
            }
            this.f28408d = i;
            Iterator<WeakReference<Listener>> it2 = this.f28406b.iterator();
            while (it2.hasNext()) {
                WeakReference<Listener> next = it2.next();
                Listener listener = next.get();
                if (listener != null) {
                    listener.onNetworkTypeChanged(i);
                } else {
                    this.f28406b.remove(next);
                }
            }
        }
    }

    public void register(final Listener listener) {
        m21513g();
        this.f28406b.add(new WeakReference<>(listener));
        this.f28405a.post(new Runnable() { // from class: com.sunia.HTREnginev2.stj
            @Override // java.lang.Runnable
            public final void run() {
                NetworkTypeObserver.this.m21512f(listener);
            }
        });
    }
}
