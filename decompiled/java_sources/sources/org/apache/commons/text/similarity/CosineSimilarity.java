package org.apache.commons.text.similarity;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes12.dex */
public class CosineSimilarity {
    /* renamed from: a */
    public final double m68269a(Map<CharSequence, Integer> map, Map<CharSequence, Integer> map2, Set<CharSequence> set) {
        long j = 0;
        for (CharSequence charSequence : set) {
            j += map.get(charSequence).intValue() * map2.get(charSequence).intValue();
        }
        return j;
    }

    /* renamed from: b */
    public final Set<CharSequence> m68270b(Map<CharSequence, Integer> map, Map<CharSequence, Integer> map2) {
        HashSet hashSet = new HashSet(map.keySet());
        hashSet.retainAll(map2.keySet());
        return hashSet;
    }

    public Double cosineSimilarity(Map<CharSequence, Integer> map, Map<CharSequence, Integer> map2) {
        if (map == null || map2 == null) {
            throw new IllegalArgumentException("Vectors must not be null");
        }
        double m68269a = m68269a(map, map2, m68270b(map, map2));
        Iterator<Integer> it2 = map.values().iterator();
        double d = 0.0d;
        double d2 = 0.0d;
        while (it2.hasNext()) {
            d2 += Math.pow(it2.next().intValue(), 2.0d);
        }
        Iterator<Integer> it3 = map2.values().iterator();
        double d3 = 0.0d;
        while (it3.hasNext()) {
            d3 += Math.pow(it3.next().intValue(), 2.0d);
        }
        if (d2 > 0.0d && d3 > 0.0d) {
            d = m68269a / (Math.sqrt(d2) * Math.sqrt(d3));
        }
        return Double.valueOf(d);
    }
}
