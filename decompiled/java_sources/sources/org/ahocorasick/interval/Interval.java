package org.ahocorasick.interval;

/* loaded from: classes11.dex */
public class Interval implements Intervalable {

    /* renamed from: e */
    public int f104538e;

    /* renamed from: f */
    public int f104539f;

    public Interval(int i, int i2) {
        this.f104538e = i;
        this.f104539f = i2;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof Intervalable)) {
            return -1;
        }
        Intervalable intervalable = (Intervalable) obj;
        int start = this.f104538e - intervalable.getStart();
        return start != 0 ? start : this.f104539f - intervalable.getEnd();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Intervalable)) {
            return false;
        }
        Intervalable intervalable = (Intervalable) obj;
        return this.f104538e == intervalable.getStart() && this.f104539f == intervalable.getEnd();
    }

    @Override // org.ahocorasick.interval.Intervalable
    public int getEnd() {
        return this.f104539f;
    }

    @Override // org.ahocorasick.interval.Intervalable
    public int getStart() {
        return this.f104538e;
    }

    public int hashCode() {
        return (this.f104538e % 100) + (this.f104539f % 100);
    }

    public boolean overlapsWith(Interval interval) {
        return this.f104538e <= interval.getEnd() && this.f104539f >= interval.getStart();
    }

    @Override // org.ahocorasick.interval.Intervalable
    public int size() {
        return (this.f104539f - this.f104538e) + 1;
    }

    public String toString() {
        return this.f104538e + ":" + this.f104539f;
    }

    public boolean overlapsWith(int i) {
        return this.f104538e <= i && i <= this.f104539f;
    }
}
