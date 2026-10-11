package com.sunia.HTREnginev2;

import org.apache.commons.codec.DecoderException;

/* loaded from: classes9.dex */
public class izn {

    /* renamed from: a */
    public static final int f73798a = 16;

    /* renamed from: a */
    public static int m54844a(byte b) throws DecoderException {
        int digit = Character.digit((char) b, 16);
        if (digit != -1) {
            return digit;
        }
        throw new DecoderException("Invalid URL encoding: not a valid digit (radix 16): " + ((int) b));
    }

    /* renamed from: b */
    public static char m54845b(int i) {
        return Character.toUpperCase(Character.forDigit(i & 15, 16));
    }
}
