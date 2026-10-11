package com.sunia.HTREnginev2;

import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes3.dex */
public class end {

    /* renamed from: d */
    public static final String f69116d = "CancelSignalProvider";

    /* renamed from: a */
    public final InterfaceC13683c f69117a;

    /* renamed from: b */
    @Nullable
    public CancellationSignal f69118b;

    /* renamed from: c */
    @Nullable
    public androidx.core.os.CancellationSignal f69119c;

    /* renamed from: com.sunia.HTREnginev2.end$a */
    /* loaded from: classes3.dex */
    public class C13681a implements InterfaceC13683c {
        public C13681a() {
        }

        @Override // com.sunia.HTREnginev2.end.InterfaceC13683c
        @NonNull
        /* renamed from: a */
        public androidx.core.os.CancellationSignal mo53984a() {
            return new androidx.core.os.CancellationSignal();
        }

        @Override // com.sunia.HTREnginev2.end.InterfaceC13683c
        @NonNull
        @RequiresApi(16)
        /* renamed from: b */
        public CancellationSignal mo53985b() {
            return C13682b.m53987b();
        }
    }

    @RequiresApi(16)
    /* renamed from: com.sunia.HTREnginev2.end$b */
    /* loaded from: classes3.dex */
    public static class C13682b {
        private C13682b() {
        }

        /* renamed from: a */
        public static void m53986a(CancellationSignal cancellationSignal) {
            cancellationSignal.cancel();
        }

        /* renamed from: b */
        public static CancellationSignal m53987b() {
            return new CancellationSignal();
        }
    }

    @VisibleForTesting
    /* renamed from: com.sunia.HTREnginev2.end$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC13683c {
        @NonNull
        /* renamed from: a */
        androidx.core.os.CancellationSignal mo53984a();

        @NonNull
        @RequiresApi(16)
        /* renamed from: b */
        CancellationSignal mo53985b();
    }

    public end() {
        this.f69117a = new C13681a();
    }

    /* renamed from: a */
    public void m53981a() {
        CancellationSignal cancellationSignal = this.f69118b;
        if (cancellationSignal != null) {
            try {
                C13682b.m53986a(cancellationSignal);
            } catch (NullPointerException e) {
                Log.e(f69116d, "Got NPE while canceling biometric authentication.", e);
            }
            this.f69118b = null;
        }
        androidx.core.os.CancellationSignal cancellationSignal2 = this.f69119c;
        if (cancellationSignal2 != null) {
            try {
                cancellationSignal2.cancel();
            } catch (NullPointerException e2) {
                Log.e(f69116d, "Got NPE while canceling fingerprint authentication.", e2);
            }
            this.f69119c = null;
        }
    }

    @NonNull
    @RequiresApi(16)
    /* renamed from: b */
    public CancellationSignal m53982b() {
        if (this.f69118b == null) {
            this.f69118b = this.f69117a.mo53985b();
        }
        return this.f69118b;
    }

    @NonNull
    /* renamed from: c */
    public androidx.core.os.CancellationSignal m53983c() {
        if (this.f69119c == null) {
            this.f69119c = this.f69117a.mo53984a();
        }
        return this.f69119c;
    }

    @VisibleForTesting
    public end(InterfaceC13683c interfaceC13683c) {
        this.f69117a = interfaceC13683c;
    }
}
