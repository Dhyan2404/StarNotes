package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* loaded from: classes5.dex */
public final class Loader implements LoaderErrorThrower {
    public static final LoadErrorAction DONT_RETRY;
    public static final LoadErrorAction DONT_RETRY_FATAL;
    public static final LoadErrorAction RETRY;
    public static final LoadErrorAction RETRY_RESET_ERROR_COUNT;

    /* renamed from: d */
    public static final String f28086d = "ExoPlayer:Loader:";

    /* renamed from: e */
    public static final int f28087e = 0;

    /* renamed from: f */
    public static final int f28088f = 1;

    /* renamed from: g */
    public static final int f28089g = 2;

    /* renamed from: h */
    public static final int f28090h = 3;

    /* renamed from: a */
    public final ExecutorService f28091a;

    /* renamed from: b */
    @Nullable
    public HandlerC5001b<? extends Loadable> f28092b;

    /* renamed from: c */
    @Nullable
    public IOException f28093c;

    /* loaded from: classes5.dex */
    public interface Callback<T extends Loadable> {
        void onLoadCanceled(T t, long j, long j2, boolean z);

        void onLoadCompleted(T t, long j, long j2);

        LoadErrorAction onLoadError(T t, long j, long j2, IOException iOException, int i);
    }

    /* loaded from: classes5.dex */
    public static final class LoadErrorAction {

        /* renamed from: a */
        public final int f28094a;

        /* renamed from: b */
        public final long f28095b;

        public boolean isRetry() {
            int i = this.f28094a;
            return i == 0 || i == 1;
        }

        public LoadErrorAction(int i, long j) {
            this.f28094a = i;
            this.f28095b = j;
        }
    }

    /* loaded from: classes5.dex */
    public interface Loadable {
        void cancelLoad();

        void load() throws IOException;
    }

    /* loaded from: classes5.dex */
    public interface ReleaseCallback {
        void onLoaderReleased();
    }

    /* loaded from: classes5.dex */
    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedLoaderException(java.lang.Throwable r5) {
            /*
                r4 = this;
                java.lang.Class r0 = r5.getClass()
                java.lang.String r0 = r0.getSimpleName()
                java.lang.String r1 = r5.getMessage()
                int r2 = r0.length()
                int r2 = r2 + 13
                java.lang.String r3 = java.lang.String.valueOf(r1)
                int r3 = r3.length()
                int r2 = r2 + r3
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>(r2)
                java.lang.String r2 = "Unexpected "
                r3.append(r2)
                r3.append(r0)
                java.lang.String r0 = ": "
                r3.append(r0)
                r3.append(r1)
                java.lang.String r0 = r3.toString()
                r4.<init>(r0, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.Loader.UnexpectedLoaderException.<init>(java.lang.Throwable):void");
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.upstream.Loader$b */
    /* loaded from: classes5.dex */
    public final class HandlerC5001b<T extends Loadable> extends Handler implements Runnable {

        /* renamed from: o */
        public static final String f28096o = "LoadTask";

        /* renamed from: p */
        public static final int f28097p = 0;

        /* renamed from: q */
        public static final int f28098q = 1;

        /* renamed from: r */
        public static final int f28099r = 2;

        /* renamed from: s */
        public static final int f28100s = 3;

        /* renamed from: e */
        public final int f28101e;

        /* renamed from: f */
        public final T f28102f;

        /* renamed from: g */
        public final long f28103g;

        /* renamed from: h */
        @Nullable
        public Callback<T> f28104h;

        /* renamed from: i */
        @Nullable
        public IOException f28105i;

        /* renamed from: j */
        public int f28106j;

        /* renamed from: k */
        @Nullable
        public Thread f28107k;

        /* renamed from: l */
        public boolean f28108l;

        /* renamed from: m */
        public volatile boolean f28109m;

        public HandlerC5001b(Looper looper, T t, Callback<T> callback, int i, long j) {
            super(looper);
            this.f28102f = t;
            this.f28104h = callback;
            this.f28101e = i;
            this.f28103g = j;
        }

        /* renamed from: a */
        public void m21353a(boolean z) {
            this.f28109m = z;
            this.f28105i = null;
            if (hasMessages(0)) {
                this.f28108l = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.f28108l = true;
                    this.f28102f.cancelLoad();
                    Thread thread = this.f28107k;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z) {
                m21355c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((Callback) Assertions.checkNotNull(this.f28104h)).onLoadCanceled(this.f28102f, elapsedRealtime, elapsedRealtime - this.f28103g, true);
                this.f28104h = null;
            }
        }

        /* renamed from: b */
        public final void m21354b() {
            this.f28105i = null;
            Loader.this.f28091a.execute((Runnable) Assertions.checkNotNull(Loader.this.f28092b));
        }

        /* renamed from: c */
        public final void m21355c() {
            Loader.this.f28092b = null;
        }

        /* renamed from: d */
        public final long m21356d() {
            return Math.min((this.f28106j - 1) * 1000, 5000);
        }

        /* renamed from: e */
        public void m21357e(int i) throws IOException {
            IOException iOException = this.f28105i;
            if (iOException != null && this.f28106j > i) {
                throw iOException;
            }
        }

        /* renamed from: f */
        public void m21358f(long j) {
            Assertions.checkState(Loader.this.f28092b == null);
            Loader.this.f28092b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                m21354b();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f28109m) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                m21354b();
                return;
            }
            if (i == 3) {
                throw ((Error) message.obj);
            }
            m21355c();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.f28103g;
            Callback callback = (Callback) Assertions.checkNotNull(this.f28104h);
            if (this.f28108l) {
                callback.onLoadCanceled(this.f28102f, elapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                try {
                    callback.onLoadCompleted(this.f28102f, elapsedRealtime, j);
                    return;
                } catch (RuntimeException e) {
                    Log.m21490e(f28096o, "Unexpected exception handling load completed", e);
                    Loader.this.f28093c = new UnexpectedLoaderException(e);
                    return;
                }
            }
            if (i2 != 2) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.f28105i = iOException;
            int i3 = this.f28106j + 1;
            this.f28106j = i3;
            LoadErrorAction onLoadError = callback.onLoadError(this.f28102f, elapsedRealtime, j, iOException, i3);
            if (onLoadError.f28094a == 3) {
                Loader.this.f28093c = this.f28105i;
            } else if (onLoadError.f28094a != 2) {
                if (onLoadError.f28094a == 1) {
                    this.f28106j = 1;
                }
                m21358f(onLoadError.f28095b != C4649C.TIME_UNSET ? onLoadError.f28095b : m21356d());
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = !this.f28108l;
                    this.f28107k = Thread.currentThread();
                }
                if (z) {
                    String simpleName = this.f28102f.getClass().getSimpleName();
                    TraceUtil.beginSection(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                    try {
                        this.f28102f.load();
                        TraceUtil.endSection();
                    } catch (Throwable th) {
                        TraceUtil.endSection();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.f28107k = null;
                    Thread.interrupted();
                }
                if (this.f28109m) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e) {
                if (this.f28109m) {
                    return;
                }
                obtainMessage(2, e).sendToTarget();
            } catch (Error e2) {
                if (!this.f28109m) {
                    Log.m21490e(f28096o, "Unexpected error loading stream", e2);
                    obtainMessage(3, e2).sendToTarget();
                }
                throw e2;
            } catch (Exception e3) {
                if (this.f28109m) {
                    return;
                }
                Log.m21490e(f28096o, "Unexpected exception loading stream", e3);
                obtainMessage(2, new UnexpectedLoaderException(e3)).sendToTarget();
            } catch (OutOfMemoryError e4) {
                if (this.f28109m) {
                    return;
                }
                Log.m21490e(f28096o, "OutOfMemory error loading stream", e4);
                obtainMessage(2, new UnexpectedLoaderException(e4)).sendToTarget();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$c */
    /* loaded from: classes5.dex */
    public static final class RunnableC5002c implements Runnable {

        /* renamed from: e */
        public final ReleaseCallback f28111e;

        public RunnableC5002c(ReleaseCallback releaseCallback) {
            this.f28111e = releaseCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f28111e.onLoaderReleased();
        }
    }

    static {
        long j = C4649C.TIME_UNSET;
        RETRY = createRetryAction(false, C4649C.TIME_UNSET);
        RETRY_RESET_ERROR_COUNT = createRetryAction(true, C4649C.TIME_UNSET);
        DONT_RETRY = new LoadErrorAction(2, j);
        DONT_RETRY_FATAL = new LoadErrorAction(3, j);
    }

    public Loader(String str) {
        String valueOf = String.valueOf(str);
        this.f28091a = Util.newSingleThreadExecutor(valueOf.length() != 0 ? f28086d.concat(valueOf) : new String(f28086d));
    }

    public static LoadErrorAction createRetryAction(boolean z, long j) {
        return new LoadErrorAction(z ? 1 : 0, j);
    }

    public void cancelLoading() {
        ((HandlerC5001b) Assertions.checkStateNotNull(this.f28092b)).m21353a(false);
    }

    public void clearFatalError() {
        this.f28093c = null;
    }

    public boolean hasFatalError() {
        return this.f28093c != null;
    }

    public boolean isLoading() {
        return this.f28092b != null;
    }

    @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
    public void maybeThrowError() throws IOException {
        maybeThrowError(Integer.MIN_VALUE);
    }

    public void release() {
        release(null);
    }

    public <T extends Loadable> long startLoading(T t, Callback<T> callback, int i) {
        Looper looper = (Looper) Assertions.checkStateNotNull(Looper.myLooper());
        this.f28093c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC5001b(looper, t, callback, i, elapsedRealtime).m21358f(0L);
        return elapsedRealtime;
    }

    @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
    public void maybeThrowError(int i) throws IOException {
        IOException iOException = this.f28093c;
        if (iOException == null) {
            HandlerC5001b<? extends Loadable> handlerC5001b = this.f28092b;
            if (handlerC5001b != null) {
                if (i == Integer.MIN_VALUE) {
                    i = handlerC5001b.f28101e;
                }
                handlerC5001b.m21357e(i);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void release(@Nullable ReleaseCallback releaseCallback) {
        HandlerC5001b<? extends Loadable> handlerC5001b = this.f28092b;
        if (handlerC5001b != null) {
            handlerC5001b.m21353a(true);
        }
        if (releaseCallback != null) {
            this.f28091a.execute(new RunnableC5002c(releaseCallback));
        }
        this.f28091a.shutdown();
    }
}
