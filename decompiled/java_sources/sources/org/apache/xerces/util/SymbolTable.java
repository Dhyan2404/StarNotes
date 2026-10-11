package org.apache.xerces.util;

import com.sunia.HTREnginev2.f7l;

/* loaded from: classes13.dex */
public class SymbolTable {
    protected static final int MAX_HASH_COLLISIONS = 40;
    protected static final int MULTIPLIERS_MASK = 31;
    protected static final int MULTIPLIERS_SIZE = 32;
    protected static final int TABLE_SIZE = 101;
    protected Entry[] fBuckets;
    protected final int fCollisionThreshold;
    protected transient int fCount;
    protected int[] fHashMultipliers;
    protected float fLoadFactor;
    protected int fTableSize;
    protected int fThreshold;

    /* loaded from: classes13.dex */
    public static final class Entry {
        public final char[] characters;
        public Entry next;
        public final String symbol;

        public Entry(String str, Entry entry) {
            this.symbol = str.intern();
            char[] cArr = new char[str.length()];
            this.characters = cArr;
            str.getChars(0, cArr.length, cArr, 0);
            this.next = entry;
        }

        public Entry(char[] cArr, int i, int i2, Entry entry) {
            char[] cArr2 = new char[i2];
            this.characters = cArr2;
            System.arraycopy(cArr, i, cArr2, 0, i2);
            this.symbol = new String(cArr2).intern();
            this.next = entry;
        }
    }

    public SymbolTable() {
        this(101, 0.75f);
    }

    /* renamed from: a */
    public final String m70585a(String str, int i, int i2) {
        if (this.fCount < this.fThreshold) {
            if (i2 >= this.fCollisionThreshold) {
                rebalance();
            }
            Entry entry = new Entry(str, this.fBuckets[i]);
            this.fBuckets[i] = entry;
            this.fCount++;
            return entry.symbol;
        }
        rehash();
        i = hash(str) % this.fTableSize;
        Entry entry2 = new Entry(str, this.fBuckets[i]);
        this.fBuckets[i] = entry2;
        this.fCount++;
        return entry2.symbol;
    }

    public String addSymbol(String str) {
        int hash = hash(str) % this.fTableSize;
        int i = 0;
        for (Entry entry = this.fBuckets[hash]; entry != null; entry = entry.next) {
            if (entry.symbol.equals(str)) {
                return entry.symbol;
            }
            i++;
        }
        return m70585a(str, hash, i);
    }

    /* renamed from: b */
    public final String m70586b(char[] cArr, int i, int i2, int i3, int i4) {
        if (this.fCount < this.fThreshold) {
            if (i4 >= this.fCollisionThreshold) {
                rebalance();
            }
            Entry entry = new Entry(cArr, i, i2, this.fBuckets[i3]);
            this.fBuckets[i3] = entry;
            this.fCount++;
            return entry.symbol;
        }
        rehash();
        i3 = hash(cArr, i, i2) % this.fTableSize;
        Entry entry2 = new Entry(cArr, i, i2, this.fBuckets[i3]);
        this.fBuckets[i3] = entry2;
        this.fCount++;
        return entry2.symbol;
    }

    /* renamed from: c */
    public final int m70587c(String str) {
        int length = str.length();
        int[] iArr = this.fHashMultipliers;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * iArr[i2 & 31]) + str.charAt(i2);
        }
        return Integer.MAX_VALUE & i;
    }

    public boolean containsSymbol(String str) {
        int hash = hash(str) % this.fTableSize;
        int length = str.length();
        Entry entry = this.fBuckets[hash];
        while (true) {
            if (entry == null) {
                return false;
            }
            if (length == entry.characters.length) {
                for (int i = 0; i < length; i++) {
                    if (str.charAt(i) != entry.characters[i]) {
                        break;
                    }
                }
                return true;
            }
            entry = entry.next;
        }
    }

    /* renamed from: d */
    public final int m70588d(char[] cArr, int i, int i2) {
        int[] iArr = this.fHashMultipliers;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * iArr[i4 & 31]) + cArr[i + i4];
        }
        return Integer.MAX_VALUE & i3;
    }

    /* renamed from: e */
    public final void m70589e(int i) {
        Entry[] entryArr = this.fBuckets;
        int length = entryArr.length;
        Entry[] entryArr2 = new Entry[i];
        this.fThreshold = (int) (i * this.fLoadFactor);
        this.fBuckets = entryArr2;
        this.fTableSize = entryArr2.length;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return;
            }
            Entry entry = entryArr[i2];
            while (entry != null) {
                Entry entry2 = entry.next;
                int hash = hash(entry.symbol) % i;
                entry.next = entryArr2[hash];
                entryArr2[hash] = entry;
                entry = entry2;
            }
            length = i2;
        }
    }

    public int hash(String str) {
        return this.fHashMultipliers == null ? str.hashCode() & Integer.MAX_VALUE : m70587c(str);
    }

    public void rebalance() {
        if (this.fHashMultipliers == null) {
            this.fHashMultipliers = new int[32];
        }
        f7l.m54072a(this.fHashMultipliers);
        m70589e(this.fBuckets.length);
    }

    public void rehash() {
        m70589e((this.fBuckets.length * 2) + 1);
    }

    public SymbolTable(int i) {
        this(i, 0.75f);
    }

    public String addSymbol(char[] cArr, int i, int i2) {
        int hash = hash(cArr, i, i2) % this.fTableSize;
        int i3 = 0;
        for (Entry entry = this.fBuckets[hash]; entry != null; entry = entry.next) {
            if (i2 == entry.characters.length) {
                for (int i4 = 0; i4 < i2; i4++) {
                    if (cArr[i + i4] != entry.characters[i4]) {
                        break;
                    }
                }
                return entry.symbol;
            }
            i3++;
        }
        return m70586b(cArr, i, i2, hash, i3);
    }

    public boolean containsSymbol(char[] cArr, int i, int i2) {
        Entry entry = this.fBuckets[hash(cArr, i, i2) % this.fTableSize];
        while (true) {
            if (entry == null) {
                return false;
            }
            if (i2 == entry.characters.length) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (cArr[i + i3] != entry.characters[i3]) {
                        break;
                    }
                }
                return true;
            }
            entry = entry.next;
        }
    }

    public int hash(char[] cArr, int i, int i2) {
        if (this.fHashMultipliers != null) {
            return m70588d(cArr, i, i2);
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + cArr[i + i4];
        }
        return Integer.MAX_VALUE & i3;
    }

    public SymbolTable(int i, float f) {
        this.fBuckets = null;
        if (i < 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Illegal Capacity: ");
            stringBuffer.append(i);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        if (f <= 0.0f || Float.isNaN(f)) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Illegal Load: ");
            stringBuffer2.append(f);
            throw new IllegalArgumentException(stringBuffer2.toString());
        }
        i = i == 0 ? 1 : i;
        this.fLoadFactor = f;
        this.fTableSize = i;
        this.fBuckets = new Entry[i];
        this.fThreshold = (int) (i * f);
        this.fCollisionThreshold = (int) (f * 40.0f);
        this.fCount = 0;
    }
}
