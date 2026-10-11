package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.Log;

@RequiresApi(17)
/* loaded from: classes5.dex */
public final class DummySurface extends Surface {
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final HandlerThreadC5025b thread;
    private boolean threadReleased;

    /* renamed from: com.google.android.exoplayer2.video.DummySurface$b */
    /* loaded from: classes5.dex */
    public static class HandlerThreadC5025b extends HandlerThread implements Handler.Callback {

        /* renamed from: j */
        public static final int f28532j = 1;

        /* renamed from: k */
        public static final int f28533k = 2;

        /* renamed from: e */
        public EGLSurfaceTexture f28534e;

        /* renamed from: f */
        public Handler f28535f;

        /* renamed from: g */
        @Nullable
        public Error f28536g;

        /* renamed from: h */
        @Nullable
        public RuntimeException f28537h;

        /* renamed from: i */
        @Nullable
        public DummySurface f28538i;

        public HandlerThreadC5025b() {
            super("ExoPlayer:DummySurface");
        }

        /* renamed from: a */
        public DummySurface m21588a(int i) {
            boolean z;
            start();
            this.f28535f = new Handler(getLooper(), this);
            this.f28534e = new EGLSurfaceTexture(this.f28535f);
            synchronized (this) {
                z = false;
                this.f28535f.obtainMessage(1, i, 0).sendToTarget();
                while (this.f28538i == null && this.f28537h == null && this.f28536g == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f28537h;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = this.f28536g;
            if (error == null) {
                return (DummySurface) Assertions.checkNotNull(this.f28538i);
            }
            throw error;
        }

        /* renamed from: b */
        public final void m21589b(int i) {
            Assertions.checkNotNull(this.f28534e);
            this.f28534e.init(i);
            this.f28538i = new DummySurface(this, this.f28534e.getSurfaceTexture(), i != 0);
        }

        /* renamed from: c */
        public void m21590c() {
            Assertions.checkNotNull(this.f28535f);
            this.f28535f.sendEmptyMessage(2);
        }

        /* renamed from: d */
        public final void m21591d() {
            Assertions.checkNotNull(this.f28534e);
            this.f28534e.release();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        m21591d();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    m21589b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e) {
                    Log.m21490e(DummySurface.TAG, "Failed to initialize dummy surface", e);
                    this.f28536g = e;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e2) {
                    Log.m21490e(DummySurface.TAG, "Failed to initialize dummy surface", e2);
                    this.f28537h = e2;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }
    }

    private static int getSecureMode(Context context) {
        if (GlUtil.isProtectedContentExtensionSupported(context)) {
            return GlUtil.isSurfacelessContextExtensionSupported() ? 1 : 2;
        }
        return 0;
    }

    public static synchronized boolean isSecureSupported(Context context) {
        boolean z;
        synchronized (DummySurface.class) {
            if (!secureModeInitialized) {
                secureMode = getSecureMode(context);
                secureModeInitialized = true;
            }
            z = secureMode != 0;
        }
        return z;
    }

    public static DummySurface newInstanceV17(Context context, boolean z) {
        Assertions.checkState(!z || isSecureSupported(context));
        return new HandlerThreadC5025b().m21588a(z ? secureMode : 0);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                this.thread.m21590c();
                this.threadReleased = true;
            }
        }
    }

    private DummySurface(HandlerThreadC5025b handlerThreadC5025b, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.thread = handlerThreadC5025b;
        this.secure = z;
    }
}
