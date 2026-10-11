package com.sun.org.apache.bcel.internal.verifier.statics;

import com.sun.org.apache.bcel.internal.generic.Type;

/* loaded from: classes10.dex */
public final class LONG_Upper extends Type {
    private static LONG_Upper singleInstance = new LONG_Upper();

    private LONG_Upper() {
        super((byte) 15, "Long_Upper");
    }

    public static LONG_Upper theInstance() {
        return singleInstance;
    }
}
