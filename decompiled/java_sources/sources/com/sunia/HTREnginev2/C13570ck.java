package com.sunia.HTREnginev2;

/* renamed from: com.sunia.HTREnginev2.ck */
/* loaded from: classes10.dex */
public final class C13570ck extends y7l {

    /* renamed from: a */
    public final double f66901a;

    /* renamed from: b */
    public final long f66902b;

    public C13570ck(double d, long j) {
        this.f66901a = d;
        this.f66902b = j;
    }

    @Override // com.sunia.HTREnginev2.y7l
    /* renamed from: b */
    public long mo53465b() {
        return this.f66902b;
    }

    @Override // com.sunia.HTREnginev2.y7l
    /* renamed from: c */
    public double mo53466c() {
        return this.f66901a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y7l)) {
            return false;
        }
        y7l y7lVar = (y7l) obj;
        return Double.doubleToLongBits(this.f66901a) == Double.doubleToLongBits(y7lVar.mo53466c()) && this.f66902b == y7lVar.mo53465b();
    }

    public int hashCode() {
        long doubleToLongBits = ((int) (1000003 ^ ((Double.doubleToLongBits(this.f66901a) >>> 32) ^ Double.doubleToLongBits(this.f66901a)))) * 1000003;
        long j = this.f66902b;
        return (int) (doubleToLongBits ^ (j ^ (j >>> 32)));
    }

    public String toString() {
        return "ProbabilitySampler{probability=" + this.f66901a + ", idUpperBound=" + this.f66902b + "}";
    }
}
