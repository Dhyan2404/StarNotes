package net.p110sf.saxon.lib;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import net.p110sf.saxon.p111z.IntHashMap;

/* loaded from: classes11.dex */
public class FeatureIndex {

    /* renamed from: a */
    public static final Map<String, FeatureData> f100501a = new HashMap();

    /* renamed from: b */
    public static final IntHashMap<FeatureData> f100502b = new IntHashMap<>();

    static {
        FeatureData.init();
        for (FeatureData featureData : FeatureData.featureList) {
            f100501a.put(featureData.uri, featureData);
            f100502b.put(featureData.code, featureData);
        }
    }

    public static boolean exists(String str) {
        return f100501a.containsKey(str);
    }

    public static FeatureData getData(String str) {
        return f100501a.get(str);
    }

    public static Iterable<String> getNames() {
        return new TreeSet(f100501a.keySet());
    }

    public static FeatureData getData(int i) {
        return f100502b.get(i);
    }
}
