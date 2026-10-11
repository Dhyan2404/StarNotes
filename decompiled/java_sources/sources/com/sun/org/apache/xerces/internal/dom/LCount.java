package com.sun.org.apache.xerces.internal.dom;

import java.util.Hashtable;

/* loaded from: classes10.dex */
class LCount {
    static Hashtable lCounts = new Hashtable();
    public int defaults;
    public int captures = 0;
    public int bubbles = 0;
    public int total = 0;

    public static LCount lookup(String str) {
        LCount lCount = (LCount) lCounts.get(str);
        if (lCount != null) {
            return lCount;
        }
        Hashtable hashtable = lCounts;
        LCount lCount2 = new LCount();
        hashtable.put(str, lCount2);
        return lCount2;
    }
}
