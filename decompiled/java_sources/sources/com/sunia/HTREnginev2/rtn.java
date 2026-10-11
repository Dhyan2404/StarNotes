package com.sunia.HTREnginev2;

/* loaded from: classes10.dex */
public final class rtn {

    /* renamed from: a */
    public final short f83468a;

    /* renamed from: b */
    public final int f83469b;

    /* renamed from: c */
    public final long f83470c;

    public rtn(short s, int i, long j) {
        this.f83468a = s;
        this.f83469b = i;
        this.f83470c = j;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != rtn.class) {
            return false;
        }
        rtn rtnVar = (rtn) obj;
        return this.f83470c == rtnVar.f83470c && this.f83468a == rtnVar.f83468a && this.f83469b == rtnVar.f83469b;
    }

    public int hashCode() {
        long j = this.f83470c;
        return ((int) (j ^ (j >>> 32))) + (this.f83469b * 37) + (this.f83468a * 97);
    }

    public String toString() {
        return this.f83469b == 1 ? String.format("Unknown(%d)@%08x", Short.valueOf(this.f83468a), Long.valueOf(this.f83470c)) : String.format("Unknown(%d)[%d]@%08x", Short.valueOf(this.f83468a), Integer.valueOf(this.f83469b), Long.valueOf(this.f83470c));
    }
}
