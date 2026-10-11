package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.RequestCoordinator;

/* loaded from: classes3.dex */
public class ThumbnailRequestCoordinator implements RequestCoordinator, Request {

    /* renamed from: a */
    @Nullable
    public final RequestCoordinator f15366a;

    /* renamed from: b */
    public final Object f15367b;

    /* renamed from: c */
    public volatile Request f15368c;

    /* renamed from: d */
    public volatile Request f15369d;

    /* renamed from: e */
    @GuardedBy("requestLock")
    public RequestCoordinator.RequestState f15370e;

    /* renamed from: f */
    @GuardedBy("requestLock")
    public RequestCoordinator.RequestState f15371f;

    /* renamed from: g */
    @GuardedBy("requestLock")
    public boolean f15372g;

    public ThumbnailRequestCoordinator(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f15370e = requestState;
        this.f15371f = requestState;
        this.f15367b = obj;
        this.f15366a = requestCoordinator;
    }

    @GuardedBy("requestLock")
    /* renamed from: a */
    public final boolean m9122a() {
        RequestCoordinator requestCoordinator = this.f15366a;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    @GuardedBy("requestLock")
    /* renamed from: b */
    public final boolean m9123b() {
        RequestCoordinator requestCoordinator = this.f15366a;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        synchronized (this.f15367b) {
            this.f15372g = true;
            try {
                if (this.f15370e != RequestCoordinator.RequestState.SUCCESS) {
                    RequestCoordinator.RequestState requestState = this.f15371f;
                    RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                    if (requestState != requestState2) {
                        this.f15371f = requestState2;
                        this.f15369d.begin();
                    }
                }
                if (this.f15372g) {
                    RequestCoordinator.RequestState requestState3 = this.f15370e;
                    RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                    if (requestState3 != requestState4) {
                        this.f15370e = requestState4;
                        this.f15368c.begin();
                    }
                }
            } finally {
                this.f15372g = false;
            }
        }
    }

    @GuardedBy("requestLock")
    /* renamed from: c */
    public final boolean m9124c() {
        RequestCoordinator requestCoordinator = this.f15366a;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyCleared(Request request) {
        boolean z;
        synchronized (this.f15367b) {
            z = m9122a() && request.equals(this.f15368c) && this.f15370e != RequestCoordinator.RequestState.PAUSED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyStatusChanged(Request request) {
        boolean z;
        synchronized (this.f15367b) {
            z = m9123b() && request.equals(this.f15368c) && !isAnyResourceSet();
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canSetImage(Request request) {
        boolean z;
        synchronized (this.f15367b) {
            z = m9124c() && (request.equals(this.f15368c) || this.f15370e != RequestCoordinator.RequestState.SUCCESS);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        synchronized (this.f15367b) {
            this.f15372g = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f15370e = requestState;
            this.f15371f = requestState;
            this.f15369d.clear();
            this.f15368c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.bumptech.glide.request.RequestCoordinator] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // com.bumptech.glide.request.RequestCoordinator
    public RequestCoordinator getRoot() {
        ?? r2;
        synchronized (this.f15367b) {
            RequestCoordinator requestCoordinator = this.f15366a;
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
        synchronized (this.f15367b) {
            z = this.f15369d.isAnyResourceSet() || this.f15368c.isAnyResourceSet();
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        boolean z;
        synchronized (this.f15367b) {
            z = this.f15370e == RequestCoordinator.RequestState.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        boolean z;
        synchronized (this.f15367b) {
            z = this.f15370e == RequestCoordinator.RequestState.SUCCESS;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        if (!(request instanceof ThumbnailRequestCoordinator)) {
            return false;
        }
        ThumbnailRequestCoordinator thumbnailRequestCoordinator = (ThumbnailRequestCoordinator) request;
        if (this.f15368c == null) {
            if (thumbnailRequestCoordinator.f15368c != null) {
                return false;
            }
        } else if (!this.f15368c.isEquivalentTo(thumbnailRequestCoordinator.f15368c)) {
            return false;
        }
        if (this.f15369d == null) {
            if (thumbnailRequestCoordinator.f15369d != null) {
                return false;
            }
        } else if (!this.f15369d.isEquivalentTo(thumbnailRequestCoordinator.f15369d)) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        boolean z;
        synchronized (this.f15367b) {
            z = this.f15370e == RequestCoordinator.RequestState.RUNNING;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestFailed(Request request) {
        synchronized (this.f15367b) {
            if (!request.equals(this.f15368c)) {
                this.f15371f = RequestCoordinator.RequestState.FAILED;
                return;
            }
            this.f15370e = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator requestCoordinator = this.f15366a;
            if (requestCoordinator != null) {
                requestCoordinator.onRequestFailed(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestSuccess(Request request) {
        synchronized (this.f15367b) {
            if (request.equals(this.f15369d)) {
                this.f15371f = RequestCoordinator.RequestState.SUCCESS;
                return;
            }
            this.f15370e = RequestCoordinator.RequestState.SUCCESS;
            RequestCoordinator requestCoordinator = this.f15366a;
            if (requestCoordinator != null) {
                requestCoordinator.onRequestSuccess(this);
            }
            if (!this.f15371f.isComplete()) {
                this.f15369d.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        synchronized (this.f15367b) {
            if (!this.f15371f.isComplete()) {
                this.f15371f = RequestCoordinator.RequestState.PAUSED;
                this.f15369d.pause();
            }
            if (!this.f15370e.isComplete()) {
                this.f15370e = RequestCoordinator.RequestState.PAUSED;
                this.f15368c.pause();
            }
        }
    }

    public void setRequests(Request request, Request request2) {
        this.f15368c = request;
        this.f15369d = request2;
    }
}
