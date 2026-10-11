package androidx.core.os;

import androidx.annotation.Nullable;

@Deprecated
/* loaded from: classes3.dex */
public final class CancellationSignal {

    /* renamed from: a */
    public boolean f5532a;

    /* renamed from: b */
    public OnCancelListener f5533b;

    /* renamed from: c */
    public Object f5534c;

    /* renamed from: d */
    public boolean f5535d;

    /* loaded from: classes3.dex */
    public interface OnCancelListener {
        void onCancel();
    }

    /* renamed from: a */
    public final void m3110a() {
        while (this.f5535d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void cancel() {
        synchronized (this) {
            if (this.f5532a) {
                return;
            }
            this.f5532a = true;
            this.f5535d = true;
            OnCancelListener onCancelListener = this.f5533b;
            Object obj = this.f5534c;
            if (onCancelListener != null) {
                try {
                    onCancelListener.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f5535d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null) {
                ((android.os.CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f5535d = false;
                notifyAll();
            }
        }
    }

    @Nullable
    public Object getCancellationSignalObject() {
        Object obj;
        synchronized (this) {
            if (this.f5534c == null) {
                android.os.CancellationSignal cancellationSignal = new android.os.CancellationSignal();
                this.f5534c = cancellationSignal;
                if (this.f5532a) {
                    cancellationSignal.cancel();
                }
            }
            obj = this.f5534c;
        }
        return obj;
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.f5532a;
        }
        return z;
    }

    public void setOnCancelListener(@Nullable OnCancelListener onCancelListener) {
        synchronized (this) {
            m3110a();
            if (this.f5533b == onCancelListener) {
                return;
            }
            this.f5533b = onCancelListener;
            if (this.f5532a && onCancelListener != null) {
                onCancelListener.onCancel();
            }
        }
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }
}
