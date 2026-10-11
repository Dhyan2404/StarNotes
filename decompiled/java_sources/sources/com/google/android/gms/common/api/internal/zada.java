package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.sunia.HTREnginev2.sap;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class zada<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* renamed from: g */
    public final WeakReference f29280g;

    /* renamed from: h */
    public final sap f29281h;

    /* renamed from: a */
    @Nullable
    public ResultTransform f29274a = null;

    /* renamed from: b */
    @Nullable
    public zada f29275b = null;

    /* renamed from: c */
    @Nullable
    public volatile ResultCallbacks f29276c = null;

    /* renamed from: d */
    @Nullable
    public PendingResult f29277d = null;

    /* renamed from: e */
    public final Object f29278e = new Object();

    /* renamed from: f */
    @Nullable
    public Status f29279f = null;

    /* renamed from: i */
    public boolean f29282i = false;

    public zada(WeakReference weakReference) {
        Preconditions.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.f29280g = weakReference;
        GoogleApiClient googleApiClient = (GoogleApiClient) weakReference.get();
        this.f29281h = new sap(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    /* renamed from: m */
    public static final void m22118m(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(result)), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final void andFinally(@NonNull ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.f29278e) {
            boolean z = true;
            Preconditions.checkState(this.f29276c == null, "Cannot call andFinally() twice.");
            if (this.f29274a != null) {
                z = false;
            }
            Preconditions.checkState(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f29276c = resultCallbacks;
            m22121j();
        }
    }

    /* renamed from: h */
    public final void m22119h() {
        this.f29276c = null;
    }

    /* renamed from: i */
    public final void m22120i(Status status) {
        synchronized (this.f29278e) {
            this.f29279f = status;
            m22122k(status);
        }
    }

    @GuardedBy("syncToken")
    /* renamed from: j */
    public final void m22121j() {
        if (this.f29274a == null && this.f29276c == null) {
            return;
        }
        GoogleApiClient googleApiClient = (GoogleApiClient) this.f29280g.get();
        if (!this.f29282i && this.f29274a != null && googleApiClient != null) {
            googleApiClient.zao(this);
            this.f29282i = true;
        }
        Status status = this.f29279f;
        if (status != null) {
            m22122k(status);
            return;
        }
        PendingResult pendingResult = this.f29277d;
        if (pendingResult != null) {
            pendingResult.setResultCallback(this);
        }
    }

    /* renamed from: k */
    public final void m22122k(Status status) {
        synchronized (this.f29278e) {
            ResultTransform resultTransform = this.f29274a;
            if (resultTransform != null) {
                ((zada) Preconditions.checkNotNull(this.f29275b)).m22120i((Status) Preconditions.checkNotNull(resultTransform.onFailure(status), "onFailure must not return null"));
            } else if (m22123l()) {
                ((ResultCallbacks) Preconditions.checkNotNull(this.f29276c)).onFailure(status);
            }
        }
    }

    @GuardedBy("syncToken")
    /* renamed from: l */
    public final boolean m22123l() {
        return (this.f29276c == null || ((GoogleApiClient) this.f29280g.get()) == null) ? false : true;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(Result result) {
        synchronized (this.f29278e) {
            if (!result.getStatus().isSuccess()) {
                m22120i(result.getStatus());
                m22118m(result);
            } else if (this.f29274a != null) {
                zaco.zaa().submit(new RunnableC5059g(this, result));
            } else if (m22123l()) {
                ((ResultCallbacks) Preconditions.checkNotNull(this.f29276c)).onSuccess(result);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    @NonNull
    public final <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        zada zadaVar;
        synchronized (this.f29278e) {
            boolean z = true;
            Preconditions.checkState(this.f29274a == null, "Cannot call then() twice.");
            if (this.f29276c != null) {
                z = false;
            }
            Preconditions.checkState(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f29274a = resultTransform;
            zadaVar = new zada(this.f29280g);
            this.f29275b = zadaVar;
            m22121j();
        }
        return zadaVar;
    }

    public final void zai(PendingResult pendingResult) {
        synchronized (this.f29278e) {
            this.f29277d = pendingResult;
            m22121j();
        }
    }
}
