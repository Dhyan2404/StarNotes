package com.google.android.exoplayer2.scheduler;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.scheduler.RequirementsWatcher;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class RequirementsWatcher {

    /* renamed from: a */
    public final Context f25129a;

    /* renamed from: b */
    public final Listener f25130b;

    /* renamed from: c */
    public final Requirements f25131c;

    /* renamed from: d */
    public final Handler f25132d = Util.createHandlerForCurrentOrMainLooper();

    /* renamed from: e */
    @Nullable
    public C4822b f25133e;

    /* renamed from: f */
    public int f25134f;

    /* renamed from: g */
    @Nullable
    public C4823c f25135g;

    /* loaded from: classes5.dex */
    public interface Listener {
        void onRequirementsStateChanged(RequirementsWatcher requirementsWatcher, int i);
    }

    /* renamed from: com.google.android.exoplayer2.scheduler.RequirementsWatcher$b */
    /* loaded from: classes5.dex */
    public class C4822b extends BroadcastReceiver {
        public C4822b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            RequirementsWatcher.this.m19581e();
        }
    }

    @RequiresApi(24)
    /* renamed from: com.google.android.exoplayer2.scheduler.RequirementsWatcher$c */
    /* loaded from: classes5.dex */
    public final class C4823c extends ConnectivityManager.NetworkCallback {

        /* renamed from: a */
        public boolean f25137a;

        /* renamed from: b */
        public boolean f25138b;

        public C4823c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m19587c() {
            if (RequirementsWatcher.this.f25135g != null) {
                RequirementsWatcher.this.m19581e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m19588d() {
            if (RequirementsWatcher.this.f25135g != null) {
                RequirementsWatcher.this.m19582f();
            }
        }

        /* renamed from: e */
        public final void m19589e() {
            RequirementsWatcher.this.f25132d.post(new Runnable() { // from class: com.sunia.HTREnginev2.nll
                @Override // java.lang.Runnable
                public final void run() {
                    RequirementsWatcher.C4823c.this.m19587c();
                }
            });
        }

        /* renamed from: f */
        public final void m19590f() {
            RequirementsWatcher.this.f25132d.post(new Runnable() { // from class: com.sunia.HTREnginev2.mll
                @Override // java.lang.Runnable
                public final void run() {
                    RequirementsWatcher.C4823c.this.m19588d();
                }
            });
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            m19589e();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onBlockedStatusChanged(Network network, boolean z) {
            if (z) {
                return;
            }
            m19590f();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean hasCapability = networkCapabilities.hasCapability(16);
            if (this.f25137a && this.f25138b == hasCapability) {
                if (hasCapability) {
                    m19590f();
                }
            } else {
                this.f25137a = true;
                this.f25138b = hasCapability;
                m19589e();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            m19589e();
        }
    }

    public RequirementsWatcher(Context context, Listener listener, Requirements requirements) {
        this.f25129a = context.getApplicationContext();
        this.f25130b = listener;
        this.f25131c = requirements;
    }

    /* renamed from: e */
    public final void m19581e() {
        int notMetRequirements = this.f25131c.getNotMetRequirements(this.f25129a);
        if (this.f25134f != notMetRequirements) {
            this.f25134f = notMetRequirements;
            this.f25130b.onRequirementsStateChanged(this, notMetRequirements);
        }
    }

    /* renamed from: f */
    public final void m19582f() {
        if ((this.f25134f & 3) == 0) {
            return;
        }
        m19581e();
    }

    @RequiresApi(24)
    /* renamed from: g */
    public final void m19583g() {
        ConnectivityManager connectivityManager = (ConnectivityManager) Assertions.checkNotNull((ConnectivityManager) this.f25129a.getSystemService("connectivity"));
        C4823c c4823c = new C4823c();
        this.f25135g = c4823c;
        connectivityManager.registerDefaultNetworkCallback(c4823c);
    }

    public Requirements getRequirements() {
        return this.f25131c;
    }

    @RequiresApi(24)
    /* renamed from: h */
    public final void m19584h() {
        ((ConnectivityManager) Assertions.checkNotNull((ConnectivityManager) this.f25129a.getSystemService("connectivity"))).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) Assertions.checkNotNull(this.f25135g));
        this.f25135g = null;
    }

    public int start() {
        this.f25134f = this.f25131c.getNotMetRequirements(this.f25129a);
        IntentFilter intentFilter = new IntentFilter();
        if (this.f25131c.isNetworkRequired()) {
            if (Util.SDK_INT >= 24) {
                m19583g();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.f25131c.isChargingRequired()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.f25131c.isIdleRequired()) {
            if (Util.SDK_INT >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        if (this.f25131c.isStorageNotLowRequired()) {
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        }
        C4822b c4822b = new C4822b();
        this.f25133e = c4822b;
        this.f25129a.registerReceiver(c4822b, intentFilter, null, this.f25132d);
        return this.f25134f;
    }

    public void stop() {
        this.f25129a.unregisterReceiver((BroadcastReceiver) Assertions.checkNotNull(this.f25133e));
        this.f25133e = null;
        if (Util.SDK_INT < 24 || this.f25135g == null) {
            return;
        }
        m19584h();
    }
}
