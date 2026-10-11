package com.google.android.exoplayer2.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoFrameReleaseHelper;
import com.sunia.HTREnginev2.gng;

/* loaded from: classes5.dex */
public final class VideoFrameReleaseHelper {

    /* renamed from: r */
    public static final String f28606r = "VideoFrameReleaseHelper";

    /* renamed from: s */
    public static final long f28607s = 5000000000L;

    /* renamed from: t */
    public static final float f28608t = 0.02f;

    /* renamed from: u */
    public static final float f28609u = 1.0f;

    /* renamed from: v */
    public static final int f28610v = 30;

    /* renamed from: w */
    public static final long f28611w = 500;

    /* renamed from: x */
    public static final long f28612x = 20000000;

    /* renamed from: y */
    public static final long f28613y = 80;

    /* renamed from: a */
    public final gng f28614a = new gng();

    /* renamed from: b */
    @Nullable
    public final DisplayHelper f28615b;

    /* renamed from: c */
    @Nullable
    public final ChoreographerFrameCallbackC5031d f28616c;

    /* renamed from: d */
    public boolean f28617d;

    /* renamed from: e */
    @Nullable
    public Surface f28618e;

    /* renamed from: f */
    public float f28619f;

    /* renamed from: g */
    public float f28620g;

    /* renamed from: h */
    public float f28621h;

    /* renamed from: i */
    public float f28622i;

    /* renamed from: j */
    public int f28623j;

    /* renamed from: k */
    public long f28624k;

    /* renamed from: l */
    public long f28625l;

    /* renamed from: m */
    public long f28626m;

    /* renamed from: n */
    public long f28627n;

    /* renamed from: o */
    public long f28628o;

    /* renamed from: p */
    public long f28629p;

    /* renamed from: q */
    public long f28630q;

    /* loaded from: classes5.dex */
    public interface DisplayHelper {

        /* loaded from: classes5.dex */
        public interface Listener {
            void onDefaultDisplayChanged(@Nullable Display display);
        }

        /* renamed from: a */
        void mo21628a(Listener listener);

        void unregister();
    }

    @RequiresApi(30)
    /* renamed from: com.google.android.exoplayer2.video.VideoFrameReleaseHelper$a */
    /* loaded from: classes5.dex */
    public static final class C5028a {
        @DoNotInline
        /* renamed from: a */
        public static void m21629a(Surface surface, float f) {
            try {
                surface.setFrameRate(f, f == 0.0f ? 0 : 1);
            } catch (IllegalStateException e) {
                Log.m21490e(VideoFrameReleaseHelper.f28606r, "Failed to call Surface.setFrameRate", e);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.VideoFrameReleaseHelper$b */
    /* loaded from: classes5.dex */
    public static final class C5029b implements DisplayHelper {

        /* renamed from: a */
        public final WindowManager f28631a;

        public C5029b(WindowManager windowManager) {
            this.f28631a = windowManager;
        }

        @Nullable
        /* renamed from: b */
        public static DisplayHelper m21630b(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new C5029b(windowManager);
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        /* renamed from: a */
        public void mo21628a(DisplayHelper.Listener listener) {
            listener.onDefaultDisplayChanged(this.f28631a.getDefaultDisplay());
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        public void unregister() {
        }
    }

    @RequiresApi(17)
    /* renamed from: com.google.android.exoplayer2.video.VideoFrameReleaseHelper$c */
    /* loaded from: classes5.dex */
    public static final class C5030c implements DisplayHelper, DisplayManager.DisplayListener {

        /* renamed from: a */
        public final DisplayManager f28632a;

        /* renamed from: b */
        @Nullable
        public DisplayHelper.Listener f28633b;

        public C5030c(DisplayManager displayManager) {
            this.f28632a = displayManager;
        }

        @Nullable
        /* renamed from: c */
        public static DisplayHelper m21631c(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new C5030c(displayManager);
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        /* renamed from: a */
        public void mo21628a(DisplayHelper.Listener listener) {
            this.f28633b = listener;
            this.f28632a.registerDisplayListener(this, Util.createHandlerForCurrentLooper());
            listener.onDefaultDisplayChanged(m21632b());
        }

        /* renamed from: b */
        public final Display m21632b() {
            return this.f28632a.getDisplay(0);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            DisplayHelper.Listener listener = this.f28633b;
            if (listener == null || i != 0) {
                return;
            }
            listener.onDefaultDisplayChanged(m21632b());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        public void unregister() {
            this.f28632a.unregisterDisplayListener(this);
            this.f28633b = null;
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.VideoFrameReleaseHelper$d */
    /* loaded from: classes5.dex */
    public static final class ChoreographerFrameCallbackC5031d implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: j */
        public static final int f28634j = 0;

        /* renamed from: k */
        public static final int f28635k = 1;

        /* renamed from: l */
        public static final int f28636l = 2;

        /* renamed from: m */
        public static final ChoreographerFrameCallbackC5031d f28637m = new ChoreographerFrameCallbackC5031d();

        /* renamed from: e */
        public volatile long f28638e = C4649C.TIME_UNSET;

        /* renamed from: f */
        public final Handler f28639f;

        /* renamed from: g */
        public final HandlerThread f28640g;

        /* renamed from: h */
        public Choreographer f28641h;

        /* renamed from: i */
        public int f28642i;

        public ChoreographerFrameCallbackC5031d() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f28640g = handlerThread;
            handlerThread.start();
            Handler createHandler = Util.createHandler(handlerThread.getLooper(), this);
            this.f28639f = createHandler;
            createHandler.sendEmptyMessage(0);
        }

        /* renamed from: d */
        public static ChoreographerFrameCallbackC5031d m21633d() {
            return f28637m;
        }

        /* renamed from: a */
        public void m21634a() {
            this.f28639f.sendEmptyMessage(1);
        }

        /* renamed from: b */
        public final void m21635b() {
            Choreographer choreographer = this.f28641h;
            if (choreographer != null) {
                int i = this.f28642i + 1;
                this.f28642i = i;
                if (i == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        /* renamed from: c */
        public final void m21636c() {
            try {
                this.f28641h = Choreographer.getInstance();
            } catch (RuntimeException e) {
                Log.m21494w(VideoFrameReleaseHelper.f28606r, "Vsync sampling disabled due to platform error", e);
            }
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f28638e = j;
            ((Choreographer) Assertions.checkNotNull(this.f28641h)).postFrameCallbackDelayed(this, 500L);
        }

        /* renamed from: e */
        public void m21637e() {
            this.f28639f.sendEmptyMessage(2);
        }

        /* renamed from: f */
        public final void m21638f() {
            Choreographer choreographer = this.f28641h;
            if (choreographer != null) {
                int i = this.f28642i - 1;
                this.f28642i = i;
                if (i == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f28638e = C4649C.TIME_UNSET;
                }
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                m21636c();
                return true;
            }
            if (i == 1) {
                m21635b();
                return true;
            }
            if (i != 2) {
                return false;
            }
            m21638f();
            return true;
        }
    }

    public VideoFrameReleaseHelper(@Nullable Context context) {
        DisplayHelper m21622e = m21622e(context);
        this.f28615b = m21622e;
        this.f28616c = m21622e != null ? ChoreographerFrameCallbackC5031d.m21633d() : null;
        this.f28624k = C4649C.TIME_UNSET;
        this.f28625l = C4649C.TIME_UNSET;
        this.f28619f = -1.0f;
        this.f28622i = 1.0f;
        this.f28623j = 0;
    }

    /* renamed from: b */
    public static boolean m21620b(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    /* renamed from: d */
    public static long m21621d(long j, long j2, long j3) {
        long j4;
        long j5 = j2 + (((j - j2) / j3) * j3);
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j5 = j3 + j5;
            j4 = j5;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    @Nullable
    /* renamed from: e */
    public static DisplayHelper m21622e(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        DisplayHelper m21631c = Util.SDK_INT >= 17 ? C5030c.m21631c(applicationContext) : null;
        return m21631c == null ? C5029b.m21630b(applicationContext) : m21631c;
    }

    public long adjustReleaseTime(long j) {
        long j2;
        ChoreographerFrameCallbackC5031d choreographerFrameCallbackC5031d;
        if (this.f28629p != -1 && this.f28614a.m54305e()) {
            long m54301a = this.f28630q + (((float) (this.f28614a.m54301a() * (this.f28626m - this.f28629p))) / this.f28622i);
            if (m21620b(j, m54301a)) {
                j2 = m54301a;
                this.f28627n = this.f28626m;
                this.f28628o = j2;
                choreographerFrameCallbackC5031d = this.f28616c;
                if (choreographerFrameCallbackC5031d != null || this.f28624k == C4649C.TIME_UNSET) {
                    return j2;
                }
                long j3 = choreographerFrameCallbackC5031d.f28638e;
                return j3 == C4649C.TIME_UNSET ? j2 : m21621d(j2, j3, this.f28624k) - this.f28625l;
            }
            m21624f();
        }
        j2 = j;
        this.f28627n = this.f28626m;
        this.f28628o = j2;
        choreographerFrameCallbackC5031d = this.f28616c;
        if (choreographerFrameCallbackC5031d != null) {
        }
        return j2;
    }

    /* renamed from: c */
    public final void m21623c() {
        Surface surface;
        if (Util.SDK_INT < 30 || (surface = this.f28618e) == null || this.f28623j == Integer.MIN_VALUE || this.f28621h == 0.0f) {
            return;
        }
        this.f28621h = 0.0f;
        C5028a.m21629a(surface, 0.0f);
    }

    /* renamed from: f */
    public final void m21624f() {
        this.f28626m = 0L;
        this.f28629p = -1L;
        this.f28627n = -1L;
    }

    /* renamed from: g */
    public final void m21625g(@Nullable Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.f28624k = refreshRate;
            this.f28625l = (refreshRate * 80) / 100;
        } else {
            Log.m21493w(f28606r, "Unable to query display refresh rate");
            this.f28624k = C4649C.TIME_UNSET;
            this.f28625l = C4649C.TIME_UNSET;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        if (java.lang.Math.abs(r0 - r7.f28620g) >= (r7.f28614a.m54305e() && (r7.f28614a.m54304d() > com.google.android.exoplayer2.video.VideoFrameReleaseHelper.f28607s ? 1 : (r7.f28614a.m54304d() == com.google.android.exoplayer2.video.VideoFrameReleaseHelper.f28607s ? 0 : -1)) >= 0 ? 0.02f : 1.0f)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006a, code lost:
    
        if (r7.f28614a.m54303c() >= 30) goto L35;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21626h() {
        /*
            r7 = this;
            int r0 = com.google.android.exoplayer2.util.Util.SDK_INT
            r1 = 30
            if (r0 < r1) goto L73
            android.view.Surface r0 = r7.f28618e
            if (r0 != 0) goto Lc
            goto L73
        Lc:
            com.sunia.HTREnginev2.gng r0 = r7.f28614a
            boolean r0 = r0.m54305e()
            if (r0 == 0) goto L1b
            com.sunia.HTREnginev2.gng r0 = r7.f28614a
            float r0 = r0.m54302b()
            goto L1d
        L1b:
            float r0 = r7.f28619f
        L1d:
            float r2 = r7.f28620g
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L24
            return
        L24:
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r4 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            r5 = 0
            r6 = 1
            if (r4 == 0) goto L61
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 == 0) goto L61
            com.sunia.HTREnginev2.gng r1 = r7.f28614a
            boolean r1 = r1.m54305e()
            if (r1 == 0) goto L49
            com.sunia.HTREnginev2.gng r1 = r7.f28614a
            long r1 = r1.m54304d()
            r3 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 < 0) goto L49
            r1 = r6
            goto L4a
        L49:
            r1 = r5
        L4a:
            if (r1 == 0) goto L50
            r1 = 1017370378(0x3ca3d70a, float:0.02)
            goto L52
        L50:
            r1 = 1065353216(0x3f800000, float:1.0)
        L52:
            float r2 = r7.f28620g
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 < 0) goto L5f
            goto L6c
        L5f:
            r6 = r5
            goto L6c
        L61:
            if (r4 == 0) goto L64
            goto L6c
        L64:
            com.sunia.HTREnginev2.gng r2 = r7.f28614a
            int r2 = r2.m54303c()
            if (r2 < r1) goto L5f
        L6c:
            if (r6 == 0) goto L73
            r7.f28620g = r0
            r7.m21627i(r5)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.VideoFrameReleaseHelper.m21626h():void");
    }

    /* renamed from: i */
    public final void m21627i(boolean z) {
        Surface surface;
        float f;
        if (Util.SDK_INT < 30 || (surface = this.f28618e) == null || this.f28623j == Integer.MIN_VALUE) {
            return;
        }
        if (this.f28617d) {
            float f2 = this.f28620g;
            if (f2 != -1.0f) {
                f = f2 * this.f28622i;
                if (z && this.f28621h == f) {
                    return;
                }
                this.f28621h = f;
                C5028a.m21629a(surface, f);
            }
        }
        f = 0.0f;
        if (z) {
        }
        this.f28621h = f;
        C5028a.m21629a(surface, f);
    }

    public void onFormatChanged(float f) {
        this.f28619f = f;
        this.f28614a.m54307g();
        m21626h();
    }

    public void onNextFrame(long j) {
        long j2 = this.f28627n;
        if (j2 != -1) {
            this.f28629p = j2;
            this.f28630q = this.f28628o;
        }
        this.f28626m++;
        this.f28614a.m54306f(j * 1000);
        m21626h();
    }

    public void onPlaybackSpeed(float f) {
        this.f28622i = f;
        m21624f();
        m21627i(false);
    }

    public void onPositionReset() {
        m21624f();
    }

    public void onStarted() {
        this.f28617d = true;
        m21624f();
        if (this.f28615b != null) {
            ((ChoreographerFrameCallbackC5031d) Assertions.checkNotNull(this.f28616c)).m21634a();
            this.f28615b.mo21628a(new DisplayHelper.Listener() { // from class: com.sunia.HTREnginev2.e1o
                @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener
                public final void onDefaultDisplayChanged(Display display) {
                    VideoFrameReleaseHelper.this.m21625g(display);
                }
            });
        }
        m21627i(false);
    }

    public void onStopped() {
        this.f28617d = false;
        DisplayHelper displayHelper = this.f28615b;
        if (displayHelper != null) {
            displayHelper.unregister();
            ((ChoreographerFrameCallbackC5031d) Assertions.checkNotNull(this.f28616c)).m21637e();
        }
        m21623c();
    }

    public void onSurfaceChanged(@Nullable Surface surface) {
        if (surface instanceof DummySurface) {
            surface = null;
        }
        if (this.f28618e == surface) {
            return;
        }
        m21623c();
        this.f28618e = surface;
        m21627i(true);
    }

    public void setChangeFrameRateStrategy(int i) {
        if (this.f28623j == i) {
            return;
        }
        this.f28623j = i;
        m21627i(true);
    }
}
