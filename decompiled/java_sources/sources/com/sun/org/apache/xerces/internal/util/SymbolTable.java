package com.sun.org.apache.xerces.internal.util;

/* loaded from: classes10.dex */
public class SymbolTable {
    protected static final int TABLE_SIZE = 173;
    protected Entry[] fBuckets;
    protected int fTableSize;

    public SymbolTable() {
        this(173);
    }

    public String addSymbol(String str) {
        int hash = hash(str);
        int i = hash % this.fTableSize;
        int length = str.length();
        for (Entry entry = this.fBuckets[i]; entry != null; entry = entry.next) {
            if (length == entry.characters.length && hash == entry.hashCode && str.regionMatches(0, entry.symbol, 0, length)) {
                return entry.symbol;
            }
        }
        Entry entry2 = new Entry(str, this.fBuckets[i]);
        entry2.hashCode = hash;
        this.fBuckets[i] = entry2;
        return entry2.symbol;
    }

    public boolean containsSymbol(String str) {
        int hash = hash(str);
        int i = hash % this.fTableSize;
        int length = str.length();
        for (Entry entry = this.fBuckets[i]; entry != null; entry = entry.next) {
            if (length == entry.characters.length && hash == entry.hashCode && str.regionMatches(0, entry.symbol, 0, length)) {
                return true;
            }
        }
        return false;
    }

    public int hash(String str) {
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * 37) + str.charAt(i2);
        }
        return 134217727 & i;
    }

    public SymbolTable(int i) {
        this.fBuckets = null;
        this.fTableSize = i;
        this.fBuckets = new Entry[i];
    }

    public int hash(char[] cArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 37) + cArr[i + i4];
        }
        return 134217727 & i3;
    }

    /* loaded from: classes10.dex */
    public static final class Entry {
        public char[] characters;
        int hashCode = 0;
        public Entry next;
        public String symbol;

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
            this.symbol = new String(this.characters).intern();
            this.next = entry;
        }
    }

    public boolean containsSymbol(char[] cArr, int i, int i2) {
        int hash = hash(cArr, i, i2);
        Entry entry = this.fBuckets[hash % this.fTableSize];
        while (true) {
            if (entry == null) {
                return false;
            }
            if (i2 == entry.characters.length && hash == entry.hashCode) {
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

    public String addSymbol(char[] cArr, int i, int i2) {
        int hash = hash(cArr, i, i2);
        int i3 = hash % this.fTableSize;
        for (Entry entry = this.fBuckets[i3]; entry != null; entry = entry.next) {
            if (i2 == entry.characters.length && hash == entry.hashCode) {
                for (int i4 = 0; i4 < i2; i4++) {
                    if (cArr[i + i4] != entry.characters[i4]) {
                        break;
                    }
                }
                return entry.symbol;
            }
        }
        Entry entry2 = new Entry(cArr, i, i2, this.fBuckets[i3]);
        this.fBuckets[i3] = entry2;
        entry2.hashCode = hash;
        return entry2.symbol;
    }
}
