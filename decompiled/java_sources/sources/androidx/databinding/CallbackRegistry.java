package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CallbackRegistry<C, T, A> implements Cloneable {

    /* renamed from: j */
    public static final String f6666j = "CallbackRegistry";

    /* renamed from: e */
    public List<C> f6667e = new ArrayList();

    /* renamed from: f */
    public long f6668f = 0;

    /* renamed from: g */
    public long[] f6669g;

    /* renamed from: h */
    public int f6670h;

    /* renamed from: i */
    public final NotifierCallback<C, T, A> f6671i;

    /* loaded from: classes3.dex */
    public static abstract class NotifierCallback<C, T, A> {
        public abstract void onNotifyCallback(C callback, T sender, int arg, A arg2);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifier) {
        this.f6671i = notifier;
    }

    /* renamed from: a */
    public final boolean m4038a(int index) {
        int i;
        if (index < 64) {
            return (this.f6668f & (1 << index)) != 0;
        }
        long[] jArr = this.f6669g;
        if (jArr != null && (i = (index / 64) - 1) < jArr.length) {
            return ((1 << (index % 64)) & jArr[i]) != 0;
        }
        return false;
    }

    public synchronized void add(C callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        int lastIndexOf = this.f6667e.lastIndexOf(callback);
        if (lastIndexOf < 0 || m4038a(lastIndexOf)) {
            this.f6667e.add(callback);
        }
    }

    /* renamed from: b */
    public final void m4039b(T t, int i, A a, int i2, int i3, long j) {
        long j2 = 1;
        while (i2 < i3) {
            if ((j & j2) == 0) {
                this.f6671i.onNotifyCallback(this.f6667e.get(i2), t, i, a);
            }
            j2 <<= 1;
            i2++;
        }
    }

    /* renamed from: c */
    public final void m4040c(T sender, int arg, A arg2) {
        m4039b(sender, arg, arg2, 0, Math.min(64, this.f6667e.size()), this.f6668f);
    }

    public synchronized void clear() {
        if (this.f6670h == 0) {
            this.f6667e.clear();
        } else if (!this.f6667e.isEmpty()) {
            for (int size = this.f6667e.size() - 1; size >= 0; size--) {
                m4044g(size);
            }
        }
    }

    public synchronized ArrayList<C> copyCallbacks() {
        ArrayList<C> arrayList;
        arrayList = new ArrayList<>(this.f6667e.size());
        int size = this.f6667e.size();
        for (int i = 0; i < size; i++) {
            if (!m4038a(i)) {
                arrayList.add(this.f6667e.get(i));
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public final void m4041d(T sender, int arg, A arg2) {
        int size = this.f6667e.size();
        int length = this.f6669g == null ? -1 : r0.length - 1;
        m4042e(sender, arg, arg2, length);
        m4039b(sender, arg, arg2, (length + 2) * 64, size, 0L);
    }

    /* renamed from: e */
    public final void m4042e(T sender, int arg, A arg2, int remainderIndex) {
        if (remainderIndex < 0) {
            m4040c(sender, arg, arg2);
            return;
        }
        long j = this.f6669g[remainderIndex];
        int i = (remainderIndex + 1) * 64;
        int min = Math.min(this.f6667e.size(), i + 64);
        m4042e(sender, arg, arg2, remainderIndex - 1);
        m4039b(sender, arg, arg2, i, min, j);
    }

    /* renamed from: f */
    public final void m4043f(int startIndex, long removed) {
        long j = Long.MIN_VALUE;
        for (int i = (startIndex + 64) - 1; i >= startIndex; i--) {
            if ((removed & j) != 0) {
                this.f6667e.remove(i);
            }
            j >>>= 1;
        }
    }

    /* renamed from: g */
    public final void m4044g(int index) {
        if (index < 64) {
            this.f6668f = (1 << index) | this.f6668f;
            return;
        }
        int i = (index / 64) - 1;
        long[] jArr = this.f6669g;
        if (jArr == null) {
            this.f6669g = new long[this.f6667e.size() / 64];
        } else if (jArr.length <= i) {
            long[] jArr2 = new long[this.f6667e.size() / 64];
            long[] jArr3 = this.f6669g;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f6669g = jArr2;
        }
        long[] jArr4 = this.f6669g;
        jArr4[i] = (1 << (index % 64)) | jArr4[i];
    }

    public synchronized boolean isEmpty() {
        if (this.f6667e.isEmpty()) {
            return true;
        }
        if (this.f6670h == 0) {
            return false;
        }
        int size = this.f6667e.size();
        for (int i = 0; i < size; i++) {
            if (!m4038a(i)) {
                return false;
            }
        }
        return true;
    }

    public synchronized void notifyCallbacks(T sender, int arg, A arg2) {
        this.f6670h++;
        m4041d(sender, arg, arg2);
        int i = this.f6670h - 1;
        this.f6670h = i;
        if (i == 0) {
            long[] jArr = this.f6669g;
            if (jArr != null) {
                for (int length = jArr.length - 1; length >= 0; length--) {
                    long j = this.f6669g[length];
                    if (j != 0) {
                        m4043f((length + 1) * 64, j);
                        this.f6669g[length] = 0;
                    }
                }
            }
            long j2 = this.f6668f;
            if (j2 != 0) {
                m4043f(0, j2);
                this.f6668f = 0L;
            }
        }
    }

    public synchronized void remove(C callback) {
        if (this.f6670h == 0) {
            this.f6667e.remove(callback);
        } else {
            int lastIndexOf = this.f6667e.lastIndexOf(callback);
            if (lastIndexOf >= 0) {
                m4044g(lastIndexOf);
            }
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public synchronized CallbackRegistry<C, T, A> m72137clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e;
        try {
            callbackRegistry = (CallbackRegistry) super.clone();
            try {
                callbackRegistry.f6668f = 0L;
                callbackRegistry.f6669g = null;
                callbackRegistry.f6670h = 0;
                callbackRegistry.f6667e = new ArrayList();
                int size = this.f6667e.size();
                for (int i = 0; i < size; i++) {
                    if (!m4038a(i)) {
                        callbackRegistry.f6667e.add(this.f6667e.get(i));
                    }
                }
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return callbackRegistry;
            }
        } catch (CloneNotSupportedException e3) {
            callbackRegistry = null;
            e = e3;
        }
        return callbackRegistry;
    }

    public synchronized void copyCallbacks(List<C> callbacks) {
        callbacks.clear();
        int size = this.f6667e.size();
        for (int i = 0; i < size; i++) {
            if (!m4038a(i)) {
                callbacks.add(this.f6667e.get(i));
            }
        }
    }
}
