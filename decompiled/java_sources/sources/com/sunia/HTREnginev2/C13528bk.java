package com.sunia.HTREnginev2;

import io.opencensus.common.Timestamp;
import io.opencensus.metrics.export.Point;
import io.opencensus.metrics.export.Value;

/* renamed from: com.sunia.HTREnginev2.bk */
/* loaded from: classes10.dex */
public final class C13528bk extends Point {

    /* renamed from: a */
    public final Value f65828a;

    /* renamed from: b */
    public final Timestamp f65829b;

    public C13528bk(Value value, Timestamp timestamp) {
        if (value == null) {
            throw new NullPointerException("Null value");
        }
        this.f65828a = value;
        if (timestamp == null) {
            throw new NullPointerException("Null timestamp");
        }
        this.f65829b = timestamp;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        return this.f65828a.equals(point.getValue()) && this.f65829b.equals(point.getTimestamp());
    }

    @Override // io.opencensus.metrics.export.Point
    public Timestamp getTimestamp() {
        return this.f65829b;
    }

    @Override // io.opencensus.metrics.export.Point
    public Value getValue() {
        return this.f65828a;
    }

    public int hashCode() {
        return this.f65829b.hashCode() ^ ((this.f65828a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Point{value=" + this.f65828a + ", timestamp=" + this.f65829b + "}";
    }
}
