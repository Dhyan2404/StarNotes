package com.tencent.beacon.pack;

import java.io.Serializable;

/* loaded from: classes10.dex */
public abstract class AbstractJceStruct implements Serializable {
    public static final byte BYTE = 0;
    public static final byte DOUBLE = 5;
    public static final byte FLOAT = 4;
    public static final byte INT = 2;
    public static final int JCE_MAX_STRING_LENGTH = 104857600;
    public static final byte LIST = 9;
    public static final byte LONG = 3;
    public static final byte MAP = 8;
    public static final byte SHORT = 1;
    public static final byte SIMPLE_LIST = 13;
    public static final byte STRING1 = 6;
    public static final byte STRING4 = 7;
    public static final byte STRUCT_BEGIN = 10;
    public static final byte STRUCT_END = 11;
    public static final byte ZERO_TAG = 12;

    public AbstractJceStruct newInit() {
        return null;
    }

    public abstract void readFrom(C15013a c15013a);

    public byte[] toByteArray() {
        C15014b c15014b = new C15014b();
        writeTo(c15014b);
        return c15014b.m59761b();
    }

    public abstract void writeTo(C15014b c15014b);

    public byte[] toByteArray(String str) {
        C15014b c15014b = new C15014b();
        c15014b.f93262c = str;
        writeTo(c15014b);
        return c15014b.m59761b();
    }
}
