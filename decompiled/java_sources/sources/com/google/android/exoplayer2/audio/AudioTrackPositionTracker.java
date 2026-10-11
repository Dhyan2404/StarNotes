package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.C14192oi;
import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public final class AudioTrackPositionTracker {

    /* renamed from: G */
    public static final int f23026G = 1;

    /* renamed from: H */
    public static final int f23027H = 2;

    /* renamed from: I */
    public static final int f23028I = 3;

    /* renamed from: J */
    public static final long f23029J = 5000000;

    /* renamed from: K */
    public static final long f23030K = 5000000;

    /* renamed from: L */
    public static final long f23031L = 1000000;

    /* renamed from: M */
    public static final long f23032M = 200;

    /* renamed from: N */
    public static final int f23033N = 10;

    /* renamed from: O */
    public static final int f23034O = 30000;

    /* renamed from: P */
    public static final int f23035P = 500000;

    /* renamed from: A */
    public long f23036A;

    /* renamed from: B */
    public long f23037B;

    /* renamed from: C */
    public long f23038C;

    /* renamed from: D */
    public boolean f23039D;

    /* renamed from: E */
    public long f23040E;

    /* renamed from: F */
    public long f23041F;

    /* renamed from: a */
    public final Listener f23042a;

    /* renamed from: b */
    public final long[] f23043b;

    /* renamed from: c */
    @Nullable
    public AudioTrack f23044c;

    /* renamed from: d */
    public int f23045d;

    /* renamed from: e */
    public int f23046e;

    /* renamed from: f */
    @Nullable
    public C14192oi f23047f;

    /* renamed from: g */
    public int f23048g;

    /* renamed from: h */
    public boolean f23049h;

    /* renamed from: i */
    public long f23050i;

    /* renamed from: j */
    public float f23051j;

    /* renamed from: k */
    public boolean f23052k;

    /* renamed from: l */
    public long f23053l;

    /* renamed from: m */
    public long f23054m;

    /* renamed from: n */
    @Nullable
    public Method f23055n;

    /* renamed from: o */
    public long f23056o;

    /* renamed from: p */
    public boolean f23057p;

    /* renamed from: q */
    public boolean f23058q;

    /* renamed from: r */
    public long f23059r;

    /* renamed from: s */
    public long f23060s;

    /* renamed from: t */
    public long f23061t;

    /* renamed from: u */
    public long f23062u;

    /* renamed from: v */
    public int f23063v;

    /* renamed from: w */
    public int f23064w;

    /* renamed from: x */
    public long f23065x;

    /* renamed from: y */
    public long f23066y;

    /* renamed from: z */
    public long f23067z;

    /* loaded from: classes5.dex */
    public interface Listener {
        void onInvalidLatency(long j);

        void onPositionAdvancing(long j);

        void onPositionFramesMismatch(long j, long j2, long j3, long j4);

        void onSystemTimeUsMismatch(long j, long j2, long j3, long j4);

        void onUnderrun(int i, long j);
    }

    public AudioTrackPositionTracker(Listener listener) {
        this.f23042a = (Listener) Assertions.checkNotNull(listener);
        if (Util.SDK_INT >= 18) {
            try {
                this.f23055n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f23043b = new long[10];
    }

    /* renamed from: p */
    public static boolean m18448p(int i) {
        return Util.SDK_INT < 23 && (i == 5 || i == 6);
    }

    /* renamed from: a */
    public final boolean m18449a() {
        return this.f23049h && ((AudioTrack) Assertions.checkNotNull(this.f23044c)).getPlayState() == 2 && m18454f() == 0;
    }

    /* renamed from: b */
    public final long m18450b(long j) {
        return (j * 1000000) / this.f23048g;
    }

    /* renamed from: c */
    public int m18451c(long j) {
        return this.f23046e - ((int) (j - (m18454f() * this.f23045d)));
    }

    /* renamed from: d */
    public long m18452d(boolean z) {
        long m18455g;
        if (((AudioTrack) Assertions.checkNotNull(this.f23044c)).getPlayState() == 3) {
            m18462n();
        }
        long nanoTime = System.nanoTime() / 1000;
        C14192oi c14192oi = (C14192oi) Assertions.checkNotNull(this.f23047f);
        boolean m55972d = c14192oi.m55972d();
        if (m55972d) {
            m18455g = m18450b(c14192oi.m55970b()) + Util.getMediaDurationForPlayoutDuration(nanoTime - c14192oi.m55971c(), this.f23051j);
        } else {
            m18455g = this.f23064w == 0 ? m18455g() : this.f23053l + nanoTime;
            if (!z) {
                m18455g = Math.max(0L, m18455g - this.f23056o);
            }
        }
        if (this.f23039D != m55972d) {
            this.f23041F = this.f23038C;
            this.f23040E = this.f23037B;
        }
        long j = nanoTime - this.f23041F;
        if (j < 1000000) {
            long mediaDurationForPlayoutDuration = this.f23040E + Util.getMediaDurationForPlayoutDuration(j, this.f23051j);
            long j2 = (j * 1000) / 1000000;
            m18455g = ((m18455g * j2) + ((1000 - j2) * mediaDurationForPlayoutDuration)) / 1000;
        }
        if (!this.f23052k) {
            long j3 = this.f23037B;
            if (m18455g > j3) {
                this.f23052k = true;
                this.f23042a.onPositionAdvancing(System.currentTimeMillis() - Util.usToMs(Util.getPlayoutDurationForMediaDuration(Util.usToMs(m18455g - j3), this.f23051j)));
            }
        }
        this.f23038C = nanoTime;
        this.f23037B = m18455g;
        this.f23039D = m55972d;
        return m18455g;
    }

    /* renamed from: e */
    public long m18453e(long j) {
        return Util.usToMs(m18450b(j - m18454f()));
    }

    /* renamed from: f */
    public final long m18454f() {
        AudioTrack audioTrack = (AudioTrack) Assertions.checkNotNull(this.f23044c);
        if (this.f23065x != C4649C.TIME_UNSET) {
            return Math.min(this.f23036A, this.f23067z + ((((SystemClock.elapsedRealtime() * 1000) - this.f23065x) * this.f23048g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
        if (this.f23049h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f23062u = this.f23060s;
            }
            playbackHeadPosition += this.f23062u;
        }
        if (Util.SDK_INT <= 29) {
            if (playbackHeadPosition == 0 && this.f23060s > 0 && playState == 3) {
                if (this.f23066y == C4649C.TIME_UNSET) {
                    this.f23066y = SystemClock.elapsedRealtime();
                }
                return this.f23060s;
            }
            this.f23066y = C4649C.TIME_UNSET;
        }
        if (this.f23060s > playbackHeadPosition) {
            this.f23061t++;
        }
        this.f23060s = playbackHeadPosition;
        return playbackHeadPosition + (this.f23061t << 32);
    }

    /* renamed from: g */
    public final long m18455g() {
        return m18450b(m18454f());
    }

    /* renamed from: h */
    public void m18456h(long j) {
        this.f23067z = m18454f();
        this.f23065x = SystemClock.elapsedRealtime() * 1000;
        this.f23036A = j;
    }

    /* renamed from: i */
    public boolean m18457i(long j) {
        return j > m18454f() || m18449a();
    }

    /* renamed from: j */
    public boolean m18458j() {
        return ((AudioTrack) Assertions.checkNotNull(this.f23044c)).getPlayState() == 3;
    }

    /* renamed from: k */
    public boolean m18459k(long j) {
        return this.f23066y != C4649C.TIME_UNSET && j > 0 && SystemClock.elapsedRealtime() - this.f23066y >= 200;
    }

    /* renamed from: l */
    public boolean m18460l(long j) {
        int playState = ((AudioTrack) Assertions.checkNotNull(this.f23044c)).getPlayState();
        if (this.f23049h) {
            if (playState == 2) {
                this.f23057p = false;
                return false;
            }
            if (playState == 1 && m18454f() == 0) {
                return false;
            }
        }
        boolean z = this.f23057p;
        boolean m18457i = m18457i(j);
        this.f23057p = m18457i;
        if (z && !m18457i && playState != 1) {
            this.f23042a.onUnderrun(this.f23046e, Util.usToMs(this.f23050i));
        }
        return true;
    }

    /* renamed from: m */
    public final void m18461m(long j, long j2) {
        C14192oi c14192oi = (C14192oi) Assertions.checkNotNull(this.f23047f);
        if (c14192oi.m55974f(j)) {
            long m55971c = c14192oi.m55971c();
            long m55970b = c14192oi.m55970b();
            if (Math.abs(m55971c - j) > 5000000) {
                this.f23042a.onSystemTimeUsMismatch(m55970b, m55971c, j, j2);
                c14192oi.m55975g();
            } else if (Math.abs(m18450b(m55970b) - j2) <= 5000000) {
                c14192oi.m55969a();
            } else {
                this.f23042a.onPositionFramesMismatch(m55970b, m55971c, j, j2);
                c14192oi.m55975g();
            }
        }
    }

    /* renamed from: n */
    public final void m18462n() {
        long m18455g = m18455g();
        if (m18455g == 0) {
            return;
        }
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.f23054m >= 30000) {
            long[] jArr = this.f23043b;
            int i = this.f23063v;
            jArr[i] = m18455g - nanoTime;
            this.f23063v = (i + 1) % 10;
            int i2 = this.f23064w;
            if (i2 < 10) {
                this.f23064w = i2 + 1;
            }
            this.f23054m = nanoTime;
            this.f23053l = 0L;
            int i3 = 0;
            while (true) {
                int i4 = this.f23064w;
                if (i3 >= i4) {
                    break;
                }
                this.f23053l += this.f23043b[i3] / i4;
                i3++;
            }
        }
        if (this.f23049h) {
            return;
        }
        m18461m(nanoTime, m18455g);
        m18463o(nanoTime);
    }

    /* renamed from: o */
    public final void m18463o(long j) {
        Method method;
        if (!this.f23058q || (method = this.f23055n) == null || j - this.f23059r < 500000) {
            return;
        }
        try {
            long intValue = (((Integer) Util.castNonNull((Integer) method.invoke(Assertions.checkNotNull(this.f23044c), new Object[0]))).intValue() * 1000) - this.f23050i;
            this.f23056o = intValue;
            long max = Math.max(intValue, 0L);
            this.f23056o = max;
            if (max > 5000000) {
                this.f23042a.onInvalidLatency(max);
                this.f23056o = 0L;
            }
        } catch (Exception unused) {
            this.f23055n = null;
        }
        this.f23059r = j;
    }

    /* renamed from: q */
    public boolean m18464q() {
        m18466s();
        if (this.f23065x != C4649C.TIME_UNSET) {
            return false;
        }
        ((C14192oi) Assertions.checkNotNull(this.f23047f)).m55976h();
        return true;
    }

    /* renamed from: r */
    public void m18465r() {
        m18466s();
        this.f23044c = null;
        this.f23047f = null;
    }

    /* renamed from: s */
    public final void m18466s() {
        this.f23053l = 0L;
        this.f23064w = 0;
        this.f23063v = 0;
        this.f23054m = 0L;
        this.f23038C = 0L;
        this.f23041F = 0L;
        this.f23052k = false;
    }

    /* renamed from: t */
    public void m18467t(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.f23044c = audioTrack;
        this.f23045d = i2;
        this.f23046e = i3;
        this.f23047f = new C14192oi(audioTrack);
        this.f23048g = audioTrack.getSampleRate();
        this.f23049h = z && m18448p(i);
        boolean isEncodingLinearPcm = Util.isEncodingLinearPcm(i);
        this.f23058q = isEncodingLinearPcm;
        this.f23050i = isEncodingLinearPcm ? m18450b(i3 / i2) : -9223372036854775807L;
        this.f23060s = 0L;
        this.f23061t = 0L;
        this.f23062u = 0L;
        this.f23057p = false;
        this.f23065x = C4649C.TIME_UNSET;
        this.f23066y = C4649C.TIME_UNSET;
        this.f23059r = 0L;
        this.f23056o = 0L;
        this.f23051j = 1.0f;
    }

    /* renamed from: u */
    public void m18468u(float f) {
        this.f23051j = f;
        C14192oi c14192oi = this.f23047f;
        if (c14192oi != null) {
            c14192oi.m55976h();
        }
    }

    /* renamed from: v */
    public void m18469v() {
        ((C14192oi) Assertions.checkNotNull(this.f23047f)).m55976h();
    }
}
