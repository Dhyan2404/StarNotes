package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.tnf;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;

@GwtCompatible
@tnf
/* loaded from: classes6.dex */
public final class ArrayBasedEscaperMap {

    /* renamed from: b */
    public static final char[][] f34641b = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 0, 0);

    /* renamed from: a */
    public final char[][] f34642a;

    public ArrayBasedEscaperMap(char[][] cArr) {
        this.f34642a = cArr;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static char[][] m27024a(Map<Character, String> map) {
        Preconditions.checkNotNull(map);
        if (map.isEmpty()) {
            return f34641b;
        }
        char[][] cArr = new char[((Character) Collections.max(map.keySet())).charValue() + 1];
        for (Character ch : map.keySet()) {
            cArr[ch.charValue()] = map.get(ch).toCharArray();
        }
        return cArr;
    }

    public static ArrayBasedEscaperMap create(Map<Character, String> map) {
        return new ArrayBasedEscaperMap(m27024a(map));
    }

    /* renamed from: b */
    public char[][] m27025b() {
        return this.f34642a;
    }
}
