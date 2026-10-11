package com.sun.org.apache.bcel.internal.verifier.statics;

import com.sun.org.apache.bcel.internal.generic.Type;

/* loaded from: classes10.dex */
public final class DOUBLE_Upper extends Type {
    private static DOUBLE_Upper singleInstance = new DOUBLE_Upper();

    private DOUBLE_Upper() {
        super((byte) 15, "Long_Upper");
    }

    public static DOUBLE_Upper theInstance() {
        return singleInstance;
    }
}
