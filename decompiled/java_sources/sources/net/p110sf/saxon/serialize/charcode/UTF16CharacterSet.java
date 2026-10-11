package net.p110sf.saxon.serialize.charcode;

import java.awt.image.BufferedImage;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntPredicateProxy;

/* loaded from: classes11.dex */
public class UTF16CharacterSet implements CharacterSet {
    public static final int NONBMP_MAX = 1114111;
    public static final int NONBMP_MIN = 65536;
    public static final char SURROGATE1_MAX = 56319;
    public static final char SURROGATE1_MIN = 55296;
    public static final char SURROGATE2_MAX = 57343;
    public static final char SURROGATE2_MIN = 56320;

    /* renamed from: a */
    public static final UTF16CharacterSet f101651a = new UTF16CharacterSet();

    public static int combinePair(char c, char c2) {
        return ((c - 55296) * 1024) + (c2 - 56320) + 65536;
    }

    public static int firstInvalidChar(IntIterator intIterator, IntPredicateProxy intPredicateProxy) {
        while (intIterator.hasNext()) {
            int next = intIterator.next();
            if (!intPredicateProxy.test(next)) {
                return next;
            }
        }
        return -1;
    }

    public static UTF16CharacterSet getInstance() {
        return f101651a;
    }

    public static char highSurrogate(int i) {
        return (char) (((i - 65536) >> 10) + 55296);
    }

    public static boolean isHighSurrogate(int i) {
        return 55296 <= i && i <= 56319;
    }

    public static boolean isLowSurrogate(int i) {
        return 56320 <= i && i <= 57343;
    }

    public static boolean isSurrogate(int i) {
        return (i & BufferedImage.DCM_565_RED_MASK) == 55296;
    }

    public static char lowSurrogate(int i) {
        return (char) (((i - 65536) & 1023) + 56320);
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public String getCanonicalName() {
        return "UTF-16";
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public boolean inCharset(int i) {
        return true;
    }
}
