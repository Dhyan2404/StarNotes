package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.sunia.HTREnginev2.cyi;
import com.sunia.HTREnginev2.mbp;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: e */
    public final Handler f29294e;
    protected volatile boolean zaa;
    protected final AtomicReference zab;
    protected final GoogleApiAvailability zac;

    @VisibleForTesting
    public zap(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.zab = new AtomicReference(null);
        this.f29294e = new com.google.android.gms.internal.base.zau(Looper.getMainLooper());
        this.zac = googleApiAvailability;
    }

    /* renamed from: c */
    public static final int m22127c(@Nullable mbp mbpVar) {
        if (mbpVar == null) {
            return -1;
        }
        return mbpVar.m55586a();
    }

    /* renamed from: a */
    public final void m22130a(ConnectionResult connectionResult, int i) {
        this.zab.set(null);
        zab(connectionResult, i);
    }

    /* renamed from: b */
    public final void m22131b() {
        this.zab.set(null);
        zac();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onActivityResult(int i, int i2, Intent intent) {
        mbp mbpVar = (mbp) this.zab.get();
        if (i != 1) {
            if (i == 2) {
                int isGooglePlayServicesAvailable = this.zac.isGooglePlayServicesAvailable(getActivity());
                if (isGooglePlayServicesAvailable == 0) {
                    m22131b();
                    return;
                } else {
                    if (mbpVar == null) {
                        return;
                    }
                    if (mbpVar.m55587b().getErrorCode() == 18 && isGooglePlayServicesAvailable == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            m22131b();
            return;
        } else if (i2 == 0) {
            if (mbpVar != null) {
                m22130a(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, mbpVar.m55587b().toString()), m22127c(mbpVar));
                return;
            }
            return;
        }
        if (mbpVar != null) {
            m22130a(mbpVar.m55587b(), mbpVar.m55586a());
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m22130a(new ConnectionResult(13, null), m22127c((mbp) this.zab.get()));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zab.set(bundle.getBoolean("resolving_error", false) ? new mbp(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        mbp mbpVar = (mbp) this.zab.get();
        if (mbpVar == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", mbpVar.m55586a());
        bundle.putInt("failed_status", mbpVar.m55587b().getErrorCode());
        bundle.putParcelable("failed_resolution", mbpVar.m55587b().getResolution());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        this.zaa = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.zaa = false;
    }

    public abstract void zab(ConnectionResult connectionResult, int i);

    public abstract void zac();

    public final void zah(ConnectionResult connectionResult, int i) {
        AtomicReference atomicReference;
        mbp mbpVar = new mbp(connectionResult, i);
        do {
            atomicReference = this.zab;
            if (cyi.m53538a(atomicReference, null, mbpVar)) {
                this.f29294e.post(new RunnableC5060h(this, mbpVar));
                return;
            }
        } while (atomicReference.get() == null);
    }
}
