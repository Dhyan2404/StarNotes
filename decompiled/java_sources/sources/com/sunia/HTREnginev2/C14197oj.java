package com.sunia.HTREnginev2;

import io.opencensus.stats.BucketBoundaries;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.oj */
/* loaded from: classes10.dex */
public final class C14197oj extends BucketBoundaries {

    /* renamed from: b */
    public final List<Double> f79787b;

    public C14197oj(List<Double> list) {
        if (list == null) {
            throw new NullPointerException("Null boundaries");
        }
        this.f79787b = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BucketBoundaries) {
            return this.f79787b.equals(((BucketBoundaries) obj).getBoundaries());
        }
        return false;
    }

    @Override // io.opencensus.stats.BucketBoundaries
    public List<Double> getBoundaries() {
        return this.f79787b;
    }

    public int hashCode() {
        return this.f79787b.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BucketBoundaries{boundaries=" + this.f79787b + "}";
    }
}
