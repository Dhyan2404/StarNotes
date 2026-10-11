package com.sunia.HTREnginev2;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.util.Util;

/* renamed from: com.sunia.HTREnginev2.oi */
/* loaded from: classes5.dex */
public final class C14192oi {

    /* renamed from: g */
    public static final int f79736g = 0;

    /* renamed from: h */
    public static final int f79737h = 1;

    /* renamed from: i */
    public static final int f79738i = 2;

    /* renamed from: j */
    public static final int f79739j = 3;

    /* renamed from: k */
    public static final int f79740k = 4;

    /* renamed from: l */
    public static final int f79741l = 10000;

    /* renamed from: m */
    public static final int f79742m = 10000000;

    /* renamed from: n */
    public static final int f79743n = 500000;

    /* renamed from: o */
    public static final int f79744o = 500000;

    /* renamed from: a */
    @Nullable
    public final a f79745a;

    /* renamed from: b */
    public int f79746b;

    /* renamed from: c */
    public long f79747c;

    /* renamed from: d */
    public long f79748d;

    /* renamed from: e */
    public long f79749e;

    /* renamed from: f */
    public long f79750f;

    @RequiresApi(19)
    /* renamed from: com.sunia.HTREnginev2.oi$a */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a */
        public final AudioTrack f79751a;

        /* renamed from: b */
        public final AudioTimestamp f79752b = new AudioTimestamp();

        /* renamed from: c */
        public long f79753c;

        /* renamed from: d */
        public long f79754d;

        /* renamed from: e */
        public long f79755e;

        public a(AudioTrack audioTrack) {
            this.f79751a = audioTrack;
        }

        /* renamed from: a */
        public long m55978a() {
            return this.f79755e;
        }

        /* renamed from: b */
        public long m55979b() {
            return this.f79752b.nanoTime / 1000;
        }

        /* renamed from: c */
        public boolean m55980c() {
            boolean timestamp = this.f79751a.getTimestamp(this.f79752b);
            if (timestamp) {
                long j = this.f79752b.framePosition;
                if (this.f79754d > j) {
                    this.f79753c++;
                }
                this.f79754d = j;
                this.f79755e = j + (this.f79753c << 32);
            }
            return timestamp;
        }
    }

    public C14192oi(AudioTrack audioTrack) {
        if (Util.SDK_INT >= 19) {
            this.f79745a = new a(audioTrack);
            m55976h();
        } else {
            this.f79745a = null;
            m55977i(3);
        }
    }

    /* renamed from: a */
    public void m55969a() {
        if (this.f79746b == 4) {
            m55976h();
        }
    }

    @TargetApi(19)
    /* renamed from: b */
    public long m55970b() {
        a aVar = this.f79745a;
        if (aVar != null) {
            return aVar.m55978a();
        }
        return -1L;
    }

    @TargetApi(19)
    /* renamed from: c */
    public long m55971c() {
        a aVar = this.f79745a;
        return aVar != null ? aVar.m55979b() : C4649C.TIME_UNSET;
    }

    /* renamed from: d */
    public boolean m55972d() {
        return this.f79746b == 2;
    }

    /* renamed from: e */
    public boolean m55973e() {
        int i = this.f79746b;
        return i == 1 || i == 2;
    }

    @TargetApi(19)
    /* renamed from: f */
    public boolean m55974f(long j) {
        a aVar = this.f79745a;
        if (aVar == null || j - this.f79749e < this.f79748d) {
            return false;
        }
        this.f79749e = j;
        boolean m55980c = aVar.m55980c();
        int i = this.f79746b;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (m55980c) {
                        m55976h();
                    }
                } else if (!m55980c) {
                    m55976h();
                }
            } else if (!m55980c) {
                m55976h();
            } else if (this.f79745a.m55978a() > this.f79750f) {
                m55977i(2);
            }
        } else if (m55980c) {
            if (this.f79745a.m55979b() < this.f79747c) {
                return false;
            }
            this.f79750f = this.f79745a.m55978a();
            m55977i(1);
        } else if (j - this.f79747c > 500000) {
            m55977i(3);
        }
        return m55980c;
    }

    /* renamed from: g */
    public void m55975g() {
        m55977i(4);
    }

    /* renamed from: h */
    public void m55976h() {
        if (this.f79745a != null) {
            m55977i(0);
        }
    }

    /* renamed from: i */
    public final void m55977i(int i) {
        this.f79746b = i;
        if (i == 0) {
            this.f79749e = 0L;
            this.f79750f = -1L;
            this.f79747c = System.nanoTime() / 1000;
            this.f79748d = 10000L;
            return;
        }
        if (i == 1) {
            this.f79748d = 10000L;
            return;
        }
        if (i == 2 || i == 3) {
            this.f79748d = 10000000L;
        } else {
            if (i != 4) {
                throw new IllegalStateException();
            }
            this.f79748d = 500000L;
        }
    }
}
