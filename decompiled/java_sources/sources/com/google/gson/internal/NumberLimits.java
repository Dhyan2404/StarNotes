package com.google.gson.internal;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes6.dex */
public class NumberLimits {

    /* renamed from: a */
    public static final int f36172a = 10000;

    /* renamed from: a */
    public static void m28252a(String str) {
        if (str.length() <= 10000) {
            return;
        }
        throw new NumberFormatException("Number string too large: " + str.substring(0, 30) + RemoveAudioAction.f58149k);
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        m28252a(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException("Number has unsupported scale: " + str);
    }

    public static BigInteger parseBigInteger(String str) throws NumberFormatException {
        m28252a(str);
        return new BigInteger(str);
    }
}
