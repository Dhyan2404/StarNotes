package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;

/* loaded from: classes3.dex */
public final class ErrorRequestCoordinator implements RequestCoordinator, Request {

    /* renamed from: a */
    public final Object f15309a;

    /* renamed from: b */
    @Nullable
    public final RequestCoordinator f15310b;

    /* renamed from: c */
    public volatile Request f15311c;

    /* renamed from: d */
    public volatile Request f15312d;

    /* renamed from: e */
    @GuardedBy("requestLock")
    public RequestCoordinator.RequestState f15313e;

    /* renamed from: f */
    @GuardedBy("requestLock")
    public RequestCoordinator.RequestState f15314f;

    public ErrorRequestCoordinator(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f15313e = requestState;
        this.f15314f = requestState;
        this.f15309a = obj;
        this.f15310b = requestCoordinator;
    }

    @GuardedBy("requestLock")
    /* renamed from: a */
    public final boolean m9098a(Request request) {
        return request.equals(this.f15311c) || (this.f15313e == RequestCoordinator.RequestState.FAILED && request.equals(this.f15312d));
    }

    @GuardedBy("requestLock")
    /* renamed from: b */
    public final boolean m9099b() {
        RequestCoordinator requestCoordinator = this.f15310b;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        synchronized (this.f15309a) {
            RequestCoordinator.RequestState requestState = this.f15313e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState != requestState2) {
                this.f15313e = requestState2;
                this.f15311c.begin();
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: c */
    public final boolean m9100c() {
        RequestCoordinator requestCoordinator = this.f15310b;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyCleared(Request request) {
        boolean z;
        synchronized (this.f15309a) {
            z = m9099b() && m9098a(request);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyStatusChanged(Request request) {
        boolean z;
        synchronized (this.f15309a) {
            z = m9100c() && m9098a(request);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canSetImage(Request request) {
        boolean z;
        synchronized (this.f15309a) {
            z = m9101d() && m9098a(request);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f15309a) {
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f15313e = requestState;
            this.f15311c.clear();
            if (this.f15314f != requestState) {
                this.f15314f = requestState;
                this.f15312d.clear();
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: d */
    public final boolean m9101d() {
        RequestCoordinator requestCoordinator = this.f15310b;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.bumptech.glide.request.RequestCoordinator] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        ?? r2;
        synchronized (this.f15309a) {
            RequestCoordinator requestCoordinator = this.f15310b;
            this = this;
            if (requestCoordinator != null) {
                r2 = requestCoordinator.getRoot();
            }
        }
        return r2;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public boolean isAnyResourceSet() {
        boolean z;
        synchronized (this.f15309a) {
            z = this.f15311c.isAnyResourceSet() || this.f15312d.isAnyResourceSet();
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        boolean z;
        synchronized (this.f15309a) {
            RequestCoordinator.RequestState requestState = this.f15313e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.CLEARED;
            z = requestState == requestState2 && this.f15314f == requestState2;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        boolean z;
        synchronized (this.f15309a) {
            RequestCoordinator.RequestState requestState = this.f15313e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.SUCCESS;
            z = requestState == requestState2 || this.f15314f == requestState2;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        if (!(request instanceof ErrorRequestCoordinator)) {
            return false;
        }
        ErrorRequestCoordinator errorRequestCoordinator = (ErrorRequestCoordinator) request;
        return this.f15311c.isEquivalentTo(errorRequestCoordinator.f15311c) && this.f15312d.isEquivalentTo(errorRequestCoordinator.f15312d);
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f15309a) {
            RequestCoordinator.RequestState requestState = this.f15313e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            z = requestState == requestState2 || this.f15314f == requestState2;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestFailed(Request request) {
        synchronized (this.f15309a) {
            if (request.equals(this.f15312d)) {
                this.f15314f = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.f15310b;
                if (requestCoordinator != null) {
                    requestCoordinator.onRequestFailed(this);
                }
                return;
            }
            this.f15313e = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator.RequestState requestState = this.f15314f;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState != requestState2) {
                this.f15314f = requestState2;
                this.f15312d.begin();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestSuccess(Request request) {
        synchronized (this.f15309a) {
            if (request.equals(this.f15311c)) {
                this.f15313e = RequestCoordinator.RequestState.SUCCESS;
            } else if (request.equals(this.f15312d)) {
                this.f15314f = RequestCoordinator.RequestState.SUCCESS;
            }
            RequestCoordinator requestCoordinator = this.f15310b;
            if (requestCoordinator != null) {
                requestCoordinator.onRequestSuccess(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f15309a) {
            RequestCoordinator.RequestState requestState = this.f15313e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState == requestState2) {
                this.f15313e = RequestCoordinator.RequestState.PAUSED;
                this.f15311c.pause();
            }
            if (this.f15314f == requestState2) {
                this.f15314f = RequestCoordinator.RequestState.PAUSED;
                this.f15312d.pause();
            }
        }
    }

    public void setRequests(Request request, Request request2) {
        this.f15311c = request;
        this.f15312d = request2;
    }
}
