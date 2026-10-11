package org.apache.xerces.impl.p117xs.util;

/* loaded from: classes13.dex */
public final class XIntPool {

    /* renamed from: a */
    public static final short f113245a = 10;

    /* renamed from: b */
    public static final XInt[] f113246b = new XInt[10];

    static {
        for (int i = 0; i < 10; i++) {
            f113246b[i] = new XInt(i);
        }
    }

    public final XInt getXInt(int i) {
        if (i >= 0) {
            XInt[] xIntArr = f113246b;
            if (i < xIntArr.length) {
                return xIntArr[i];
            }
        }
        return new XInt(i);
    }
}
