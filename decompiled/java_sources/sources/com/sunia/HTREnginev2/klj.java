package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class klj {

    /* renamed from: a */
    public final MediaSource.MediaPeriodId f75530a;

    /* renamed from: b */
    public final long f75531b;

    /* renamed from: c */
    public final long f75532c;

    /* renamed from: d */
    public final long f75533d;

    /* renamed from: e */
    public final long f75534e;

    /* renamed from: f */
    public final boolean f75535f;

    /* renamed from: g */
    public final boolean f75536g;

    /* renamed from: h */
    public final boolean f75537h;

    /* renamed from: i */
    public final boolean f75538i;

    public klj(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        Assertions.checkArgument(!z4 || z2);
        Assertions.checkArgument(!z3 || z2);
        if (!z || (!z2 && !z3 && !z4)) {
            z5 = true;
        }
        Assertions.checkArgument(z5);
        this.f75530a = mediaPeriodId;
        this.f75531b = j;
        this.f75532c = j2;
        this.f75533d = j3;
        this.f75534e = j4;
        this.f75535f = z;
        this.f75536g = z2;
        this.f75537h = z3;
        this.f75538i = z4;
    }

    /* renamed from: a */
    public klj m55229a(long j) {
        return j == this.f75532c ? this : new klj(this.f75530a, this.f75531b, j, this.f75533d, this.f75534e, this.f75535f, this.f75536g, this.f75537h, this.f75538i);
    }

    /* renamed from: b */
    public klj m55230b(long j) {
        return j == this.f75531b ? this : new klj(this.f75530a, j, this.f75532c, this.f75533d, this.f75534e, this.f75535f, this.f75536g, this.f75537h, this.f75538i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || klj.class != obj.getClass()) {
            return false;
        }
        klj kljVar = (klj) obj;
        return this.f75531b == kljVar.f75531b && this.f75532c == kljVar.f75532c && this.f75533d == kljVar.f75533d && this.f75534e == kljVar.f75534e && this.f75535f == kljVar.f75535f && this.f75536g == kljVar.f75536g && this.f75537h == kljVar.f75537h && this.f75538i == kljVar.f75538i && Util.areEqual(this.f75530a, kljVar.f75530a);
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.f75530a.hashCode()) * 31) + ((int) this.f75531b)) * 31) + ((int) this.f75532c)) * 31) + ((int) this.f75533d)) * 31) + ((int) this.f75534e)) * 31) + (this.f75535f ? 1 : 0)) * 31) + (this.f75536g ? 1 : 0)) * 31) + (this.f75537h ? 1 : 0)) * 31) + (this.f75538i ? 1 : 0);
    }
}
