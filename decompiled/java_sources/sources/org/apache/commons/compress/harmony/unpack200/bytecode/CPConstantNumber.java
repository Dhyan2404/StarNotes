package org.apache.commons.compress.harmony.unpack200.bytecode;

/* loaded from: classes12.dex */
public abstract class CPConstantNumber extends CPConstant {
    public CPConstantNumber(byte b, Object obj, int i) {
        super(b, obj, i);
    }

    public Number getNumber() {
        return (Number) getValue();
    }
}
