package org.apache.commons.compress.harmony.unpack200;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

/* loaded from: classes12.dex */
public class SegmentConstantPoolArrayCache {
    protected IdentityHashMap<String[], CachedArray> knownArrays = new IdentityHashMap<>(1000);
    protected String[] lastArray;
    protected List<Integer> lastIndexes;
    protected String lastKey;

    /* loaded from: classes12.dex */
    public class CachedArray {

        /* renamed from: a */
        public String[] f107055a;

        /* renamed from: b */
        public int f107056b;

        /* renamed from: c */
        public HashMap<String, List<Integer>> f107057c;

        public CachedArray(String[] strArr) {
            this.f107055a = strArr;
            this.f107056b = strArr.length;
            this.f107057c = new HashMap<>(this.f107056b);
            cacheIndexes();
        }

        public void cacheIndexes() {
            int i = 0;
            while (true) {
                String[] strArr = this.f107055a;
                if (i >= strArr.length) {
                    return;
                }
                String str = strArr[i];
                if (!this.f107057c.containsKey(str)) {
                    this.f107057c.put(str, new ArrayList());
                }
                this.f107057c.get(str).add(Integer.valueOf(i));
                i++;
            }
        }

        public List<Integer> indexesForKey(String str) {
            return !this.f107057c.containsKey(str) ? Collections.EMPTY_LIST : this.f107057c.get(str);
        }

        public int lastKnownSize() {
            return this.f107056b;
        }
    }

    public boolean arrayIsCached(String[] strArr) {
        return this.knownArrays.containsKey(strArr) && this.knownArrays.get(strArr).lastKnownSize() == strArr.length;
    }

    public void cacheArray(String[] strArr) {
        if (arrayIsCached(strArr)) {
            throw new IllegalArgumentException("Trying to cache an array that already exists");
        }
        this.knownArrays.put(strArr, new CachedArray(strArr));
        this.lastArray = null;
    }

    public List<Integer> indexesForArrayKey(String[] strArr, String str) {
        if (!arrayIsCached(strArr)) {
            cacheArray(strArr);
        }
        if (this.lastArray == strArr && this.lastKey == str) {
            return this.lastIndexes;
        }
        this.lastArray = strArr;
        this.lastKey = str;
        List<Integer> indexesForKey = this.knownArrays.get(strArr).indexesForKey(str);
        this.lastIndexes = indexesForKey;
        return indexesForKey;
    }
}
