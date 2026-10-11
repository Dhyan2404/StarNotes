package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.lbp;
import com.sunia.HTREnginev2.mbp;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes5.dex */
public final class zak extends zap {

    /* renamed from: f */
    public final SparseArray f29288f;

    public zak(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.f29288f = new SparseArray();
        this.mLifecycleFragment.addCallback("AutoManageHelper", this);
    }

    public static zak zaa(LifecycleActivity lifecycleActivity) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(lifecycleActivity);
        zak zakVar = (zak) fragment.getCallbackOrNull("AutoManageHelper", zak.class);
        return zakVar != null ? zakVar : new zak(fragment);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f29288f.size(); i++) {
            lbp m22126f = m22126f(i);
            if (m22126f != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(m22126f.f76321a);
                printWriter.println(":");
                m22126f.f76322b.dump(String.valueOf(str).concat(GlideException.C1935a.f14609h), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Nullable
    /* renamed from: f */
    public final lbp m22126f(int i) {
        if (this.f29288f.size() <= i) {
            return null;
        }
        SparseArray sparseArray = this.f29288f;
        return (lbp) sparseArray.get(sparseArray.keyAt(i));
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        SparseArray sparseArray = this.f29288f;
        Log.d("AutoManageHelper", "onStart " + this.zaa + " " + String.valueOf(sparseArray));
        if (this.zab.get() == null) {
            for (int i = 0; i < this.f29288f.size(); i++) {
                lbp m22126f = m22126f(i);
                if (m22126f != null) {
                    m22126f.f76322b.connect();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        for (int i = 0; i < this.f29288f.size(); i++) {
            lbp m22126f = m22126f(i);
            if (m22126f != null) {
                m22126f.f76322b.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zab(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        lbp lbpVar = (lbp) this.f29288f.get(i);
        if (lbpVar != null) {
            zae(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = lbpVar.f76323c;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zac() {
        for (int i = 0; i < this.f29288f.size(); i++) {
            lbp m22126f = m22126f(i);
            if (m22126f != null) {
                m22126f.f76322b.connect();
            }
        }
    }

    public final void zad(int i, GoogleApiClient googleApiClient, @Nullable GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(googleApiClient, "GoogleApiClient instance cannot be null");
        Preconditions.checkState(this.f29288f.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        mbp mbpVar = (mbp) this.zab.get();
        Log.d("AutoManageHelper", "starting AutoManage for client " + i + " " + this.zaa + " " + String.valueOf(mbpVar));
        lbp lbpVar = new lbp(this, i, googleApiClient, onConnectionFailedListener);
        googleApiClient.registerConnectionFailedListener(lbpVar);
        this.f29288f.put(i, lbpVar);
        if (this.zaa && mbpVar == null) {
            Log.d("AutoManageHelper", "connecting ".concat(googleApiClient.toString()));
            googleApiClient.connect();
        }
    }

    public final void zae(int i) {
        lbp lbpVar = (lbp) this.f29288f.get(i);
        this.f29288f.remove(i);
        if (lbpVar != null) {
            lbpVar.f76322b.unregisterConnectionFailedListener(lbpVar);
            lbpVar.f76322b.disconnect();
        }
    }
}
