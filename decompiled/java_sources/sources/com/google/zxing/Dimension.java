package com.google.zxing;

/* loaded from: classes4.dex */
public final class Dimension {

    /* renamed from: a */
    public final int f38198a;

    /* renamed from: b */
    public final int f38199b;

    public Dimension(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException();
        }
        this.f38198a = i;
        this.f38199b = i2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Dimension) {
            Dimension dimension = (Dimension) obj;
            if (this.f38198a == dimension.f38198a && this.f38199b == dimension.f38199b) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.f38199b;
    }

    public int getWidth() {
        return this.f38198a;
    }

    public int hashCode() {
        return (this.f38198a * 32713) + this.f38199b;
    }

    public String toString() {
        return this.f38198a + "x" + this.f38199b;
    }
}
