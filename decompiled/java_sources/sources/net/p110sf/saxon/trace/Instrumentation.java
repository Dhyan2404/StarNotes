package net.p110sf.saxon.trace;

import java.util.HashMap;

/* loaded from: classes11.dex */
public class Instrumentation {
    public static final boolean ACTIVE = false;
    public static HashMap<String, Long> counters = new HashMap<>();

    public static void count(String str) {
        if (counters.containsKey(str)) {
            HashMap<String, Long> hashMap = counters;
            hashMap.put(str, Long.valueOf(hashMap.get(str).longValue() + 1));
        } else {
            counters.put(str, 1L);
        }
    }

    public static void report() {
    }

    public static void reset() {
        counters.clear();
    }

    public static void count(String str, long j) {
        if (counters.containsKey(str)) {
            HashMap<String, Long> hashMap = counters;
            hashMap.put(str, Long.valueOf(hashMap.get(str).longValue() + j));
        } else {
            counters.put(str, Long.valueOf(j));
        }
    }
}
