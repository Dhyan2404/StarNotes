package com.sun.org.apache.xerces.internal.util;

/* loaded from: classes10.dex */
public class SymbolHash {
    protected Entry[] fBuckets;
    protected int fNum;
    protected int fTableSize;

    public SymbolHash() {
        this.fTableSize = 101;
        this.fNum = 0;
        this.fBuckets = new Entry[101];
    }

    public void clear() {
        for (int i = 0; i < this.fTableSize; i++) {
            this.fBuckets[i] = null;
        }
        this.fNum = 0;
    }

    public Object get(Object obj) {
        Entry search = search(obj, (obj.hashCode() & Integer.MAX_VALUE) % this.fTableSize);
        if (search != null) {
            return search.value;
        }
        return null;
    }

    public int getLength() {
        return this.fNum;
    }

    public int getValues(Object[] objArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.fTableSize && i2 < this.fNum; i3++) {
            for (Entry entry = this.fBuckets[i3]; entry != null; entry = entry.next) {
                objArr[i + i2] = entry.value;
                i2++;
            }
        }
        return this.fNum;
    }

    public SymbolHash makeClone() {
        SymbolHash symbolHash = new SymbolHash(this.fTableSize);
        symbolHash.fNum = this.fNum;
        for (int i = 0; i < this.fTableSize; i++) {
            Entry entry = this.fBuckets[i];
            if (entry != null) {
                symbolHash.fBuckets[i] = entry.makeClone();
            }
        }
        return symbolHash;
    }

    public void put(Object obj, Object obj2) {
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % this.fTableSize;
        Entry search = search(obj, hashCode);
        if (search != null) {
            search.value = obj2;
            return;
        }
        this.fBuckets[hashCode] = new Entry(obj, obj2, this.fBuckets[hashCode]);
        this.fNum++;
    }

    public Entry search(Object obj, int i) {
        for (Entry entry = this.fBuckets[i]; entry != null; entry = entry.next) {
            if (obj.equals(entry.key)) {
                return entry;
            }
        }
        return null;
    }

    /* loaded from: classes10.dex */
    public static final class Entry {
        public Object key;
        public Entry next;
        public Object value;

        public Entry() {
            this.key = null;
            this.value = null;
            this.next = null;
        }

        public Entry makeClone() {
            Entry entry = new Entry();
            entry.key = this.key;
            entry.value = this.value;
            Entry entry2 = this.next;
            if (entry2 != null) {
                entry.next = entry2.makeClone();
            }
            return entry;
        }

        public Entry(Object obj, Object obj2, Entry entry) {
            this.key = obj;
            this.value = obj2;
            this.next = entry;
        }
    }

    public SymbolHash(int i) {
        this.fNum = 0;
        this.fTableSize = i;
        this.fBuckets = new Entry[i];
    }
}
