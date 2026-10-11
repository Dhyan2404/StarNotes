package com.sun.org.apache.xerces.internal.impl.p055xs.util;

/* loaded from: classes10.dex */
public final class XInt {
    private int fValue;

    public XInt(int i) {
        this.fValue = i;
    }

    public final boolean equals(XInt xInt) {
        return this.fValue == xInt.fValue;
    }

    public final int intValue() {
        return this.fValue;
    }

    public final short shortValue() {
        return (short) this.fValue;
    }

    public String toString() {
        return Integer.toString(this.fValue);
    }
}
