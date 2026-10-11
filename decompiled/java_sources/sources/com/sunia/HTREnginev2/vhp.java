package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes5.dex */
public final class vhp {

    /* renamed from: a */
    public final String f87510a;

    /* renamed from: b */
    public final String f87511b;

    /* renamed from: c */
    public final long f87512c;

    /* renamed from: d */
    public final long f87513d;

    /* renamed from: e */
    public final long f87514e;

    /* renamed from: f */
    public final long f87515f;

    /* renamed from: g */
    public final long f87516g;

    /* renamed from: h */
    public final Long f87517h;

    /* renamed from: i */
    public final Long f87518i;

    /* renamed from: j */
    public final Long f87519j;

    /* renamed from: k */
    public final Boolean f87520k;

    public vhp(String str, String str2, long j, long j2, long j3, long j4, Long l, Long l2, Long l3, Boolean bool) {
        this(str, str2, 0L, 0L, 0L, j3, 0L, null, null, null, null);
    }

    /* renamed from: a */
    public final vhp m57797a(long j) {
        return new vhp(this.f87510a, this.f87511b, this.f87512c, this.f87513d, this.f87514e, j, this.f87516g, this.f87517h, this.f87518i, this.f87519j, this.f87520k);
    }

    /* renamed from: b */
    public final vhp m57798b(long j, long j2) {
        return new vhp(this.f87510a, this.f87511b, this.f87512c, this.f87513d, this.f87514e, this.f87515f, j, Long.valueOf(j2), this.f87518i, this.f87519j, this.f87520k);
    }

    /* renamed from: c */
    public final vhp m57799c(Long l, Long l2, Boolean bool) {
        return new vhp(this.f87510a, this.f87511b, this.f87512c, this.f87513d, this.f87514e, this.f87515f, this.f87516g, this.f87517h, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }

    public vhp(String str, String str2, long j, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j3 >= 0);
        Preconditions.checkArgument(j5 >= 0);
        this.f87510a = str;
        this.f87511b = str2;
        this.f87512c = j;
        this.f87513d = j2;
        this.f87514e = j3;
        this.f87515f = j4;
        this.f87516g = j5;
        this.f87517h = l;
        this.f87518i = l2;
        this.f87519j = l3;
        this.f87520k = bool;
    }
}
