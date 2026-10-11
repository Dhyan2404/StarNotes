package com.burgstaller.okhttp.digest.fromhttpclient;

/* loaded from: classes3.dex */
public class ParserCursor {

    /* renamed from: a */
    public final int f15562a;

    /* renamed from: b */
    public final int f15563b;

    /* renamed from: c */
    public int f15564c;

    public ParserCursor(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Lower bound cannot be negative");
        }
        if (i > i2) {
            throw new IndexOutOfBoundsException("Lower bound cannot be greater then upper bound");
        }
        this.f15562a = i;
        this.f15563b = i2;
        this.f15564c = i;
    }

    public boolean atEnd() {
        return this.f15564c >= this.f15563b;
    }

    public int getLowerBound() {
        return this.f15562a;
    }

    public int getPos() {
        return this.f15564c;
    }

    public int getUpperBound() {
        return this.f15563b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(16);
        sb.append('[');
        sb.append(this.f15562a);
        sb.append('>');
        sb.append(this.f15564c);
        sb.append('>');
        sb.append(this.f15563b);
        sb.append(']');
        return sb.toString();
    }

    public void updatePos(int i) {
        if (i < this.f15562a) {
            throw new IndexOutOfBoundsException();
        }
        if (i > this.f15563b) {
            throw new IndexOutOfBoundsException();
        }
        this.f15564c = i;
    }
}
