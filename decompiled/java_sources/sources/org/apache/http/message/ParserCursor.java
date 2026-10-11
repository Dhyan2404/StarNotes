package org.apache.http.message;

/* loaded from: classes12.dex */
public class ParserCursor {

    /* renamed from: a */
    public final int f111072a;

    /* renamed from: b */
    public final int f111073b;

    /* renamed from: c */
    public int f111074c;

    public ParserCursor(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Lower bound cannot be negative");
        }
        if (i > i2) {
            throw new IndexOutOfBoundsException("Lower bound cannot be greater then upper bound");
        }
        this.f111072a = i;
        this.f111073b = i2;
        this.f111074c = i;
    }

    public boolean atEnd() {
        return this.f111074c >= this.f111073b;
    }

    public int getLowerBound() {
        return this.f111072a;
    }

    public int getPos() {
        return this.f111074c;
    }

    public int getUpperBound() {
        return this.f111073b;
    }

    public String toString() {
        return '[' + Integer.toString(this.f111072a) + '>' + Integer.toString(this.f111074c) + '>' + Integer.toString(this.f111073b) + ']';
    }

    public void updatePos(int i) {
        if (i < this.f111072a) {
            throw new IndexOutOfBoundsException("pos: " + i + " < lowerBound: " + this.f111072a);
        }
        if (i <= this.f111073b) {
            this.f111074c = i;
            return;
        }
        throw new IndexOutOfBoundsException("pos: " + i + " > upperBound: " + this.f111073b);
    }
}
