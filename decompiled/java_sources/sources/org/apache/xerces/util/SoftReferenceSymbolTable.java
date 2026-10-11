package org.apache.xerces.util;

import com.sunia.HTREnginev2.f7l;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

/* loaded from: classes13.dex */
public class SoftReferenceSymbolTable extends SymbolTable {

    /* renamed from: a */
    public final ReferenceQueue f113513a;
    protected SREntry[] fBuckets;

    /* loaded from: classes13.dex */
    public static final class SREntry extends SoftReference {
        public int bucket;
        public SREntry next;
        public SREntry prev;

        public SREntry(String str, SREntry sREntry, int i, ReferenceQueue referenceQueue) {
            super(new SREntryData(str), referenceQueue);
            m70580a(sREntry, i);
        }

        /* renamed from: a */
        public final void m70580a(SREntry sREntry, int i) {
            this.next = sREntry;
            if (sREntry != null) {
                sREntry.prev = this;
            }
            this.prev = null;
            this.bucket = i;
        }

        public SREntry(String str, char[] cArr, int i, int i2, SREntry sREntry, int i3, ReferenceQueue referenceQueue) {
            super(new SREntryData(str, cArr, i, i2), referenceQueue);
            m70580a(sREntry, i3);
        }
    }

    /* loaded from: classes13.dex */
    public static final class SREntryData {
        public final char[] characters;
        public final String symbol;

        public SREntryData(String str) {
            this.symbol = str;
            char[] cArr = new char[str.length()];
            this.characters = cArr;
            str.getChars(0, cArr.length, cArr, 0);
        }

        public SREntryData(String str, char[] cArr, int i, int i2) {
            this.symbol = str;
            char[] cArr2 = new char[i2];
            this.characters = cArr2;
            System.arraycopy(cArr, i, cArr2, 0, i2);
        }
    }

    public SoftReferenceSymbolTable() {
        this(101, 0.75f);
    }

    /* renamed from: a */
    private String m70575a(String str, int i, int i2) {
        if (this.fCount < this.fThreshold) {
            if (i2 >= this.fCollisionThreshold) {
                rebalance();
            }
            String intern = str.intern();
            this.fBuckets[i] = new SREntry(intern, this.fBuckets[i], i, this.f113513a);
            this.fCount++;
            return intern;
        }
        rehash();
        i = hash(str) % this.fTableSize;
        String intern2 = str.intern();
        this.fBuckets[i] = new SREntry(intern2, this.fBuckets[i], i, this.f113513a);
        this.fCount++;
        return intern2;
    }

    /* renamed from: b */
    private String m70576b(char[] cArr, int i, int i2, int i3, int i4) {
        if (this.fCount < this.fThreshold) {
            if (i4 >= this.fCollisionThreshold) {
                rebalance();
            }
            String intern = new String(cArr, i, i2).intern();
            this.fBuckets[i3] = new SREntry(intern, cArr, i, i2, this.fBuckets[i3], i3, this.f113513a);
            this.fCount++;
            return intern;
        }
        rehash();
        i3 = hash(cArr, i, i2) % this.fTableSize;
        String intern2 = new String(cArr, i, i2).intern();
        this.fBuckets[i3] = new SREntry(intern2, cArr, i, i2, this.fBuckets[i3], i3, this.f113513a);
        this.fCount++;
        return intern2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private void m70577e(int i) {
        SREntry[] sREntryArr = this.fBuckets;
        int length = sREntryArr.length;
        SREntry[] sREntryArr2 = new SREntry[i];
        this.fThreshold = (int) (i * this.fLoadFactor);
        this.fBuckets = sREntryArr2;
        this.fTableSize = sREntryArr2.length;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return;
            }
            SREntry sREntry = sREntryArr[i2];
            while (sREntry != null) {
                SREntry sREntry2 = sREntry.next;
                SREntryData sREntryData = (SREntryData) sREntry.get();
                if (sREntryData != null) {
                    int hash = hash(sREntryData.symbol) % i;
                    SREntry sREntry3 = sREntryArr2[hash];
                    if (sREntry3 != null) {
                        sREntry3.prev = sREntry;
                    }
                    sREntry.bucket = hash;
                    sREntry.next = sREntry3;
                    sREntryArr2[hash] = sREntry;
                } else {
                    sREntry.bucket = -1;
                    sREntry.next = null;
                    this.fCount--;
                }
                sREntry.prev = null;
                sREntry = sREntry2;
            }
            length = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.xerces.util.SymbolTable
    public String addSymbol(String str) {
        m70578f();
        int hash = hash(str) % this.fTableSize;
        int i = 0;
        for (SREntry sREntry = this.fBuckets[hash]; sREntry != null; sREntry = sREntry.next) {
            SREntryData sREntryData = (SREntryData) sREntry.get();
            if (sREntryData != null) {
                if (sREntryData.symbol.equals(str)) {
                    return sREntryData.symbol;
                }
                i++;
            }
        }
        return m70575a(str, hash, i);
    }

    public void compact() {
        m70577e((((int) (this.fCount / this.fLoadFactor)) * 2) + 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.xerces.util.SymbolTable
    public boolean containsSymbol(String str) {
        int hash = hash(str) % this.fTableSize;
        int length = str.length();
        SREntry sREntry = this.fBuckets[hash];
        while (true) {
            if (sREntry == null) {
                return false;
            }
            SREntryData sREntryData = (SREntryData) sREntry.get();
            if (sREntryData != null && length == sREntryData.characters.length) {
                for (int i = 0; i < length; i++) {
                    if (str.charAt(i) != sREntryData.characters[i]) {
                        break;
                    }
                }
                return true;
            }
            sREntry = sREntry.next;
        }
    }

    /* renamed from: f */
    public final void m70578f() {
        SREntry sREntry = (SREntry) this.f113513a.poll();
        if (sREntry == null) {
            return;
        }
        do {
            m70579g(sREntry);
            sREntry = (SREntry) this.f113513a.poll();
        } while (sREntry != null);
        if (this.fCount < (this.fThreshold >> 2)) {
            compact();
        }
    }

    /* renamed from: g */
    public final void m70579g(SREntry sREntry) {
        int i = sREntry.bucket;
        if (i >= 0) {
            SREntry sREntry2 = sREntry.next;
            if (sREntry2 != null) {
                sREntry2.prev = sREntry.prev;
            }
            SREntry sREntry3 = sREntry.prev;
            if (sREntry3 != null) {
                sREntry3.next = sREntry2;
            } else {
                this.fBuckets[i] = sREntry2;
            }
            this.fCount--;
        }
    }

    @Override // org.apache.xerces.util.SymbolTable
    public void rebalance() {
        if (this.fHashMultipliers == null) {
            this.fHashMultipliers = new int[32];
        }
        f7l.m54072a(this.fHashMultipliers);
        m70577e(this.fBuckets.length);
    }

    @Override // org.apache.xerces.util.SymbolTable
    public void rehash() {
        m70577e((this.fBuckets.length * 2) + 1);
    }

    public SoftReferenceSymbolTable(int i) {
        this(i, 0.75f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.xerces.util.SymbolTable
    public String addSymbol(char[] cArr, int i, int i2) {
        m70578f();
        int hash = hash(cArr, i, i2) % this.fTableSize;
        int i3 = 0;
        for (SREntry sREntry = this.fBuckets[hash]; sREntry != null; sREntry = sREntry.next) {
            SREntryData sREntryData = (SREntryData) sREntry.get();
            if (sREntryData != null) {
                if (i2 == sREntryData.characters.length) {
                    for (int i4 = 0; i4 < i2; i4++) {
                        if (cArr[i + i4] == sREntryData.characters[i4]) {
                        }
                    }
                    return sREntryData.symbol;
                }
                i3++;
            }
        }
        return m70576b(cArr, i, i2, hash, i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.xerces.util.SymbolTable
    public boolean containsSymbol(char[] cArr, int i, int i2) {
        SREntry sREntry = this.fBuckets[hash(cArr, i, i2) % this.fTableSize];
        while (true) {
            if (sREntry == null) {
                return false;
            }
            SREntryData sREntryData = (SREntryData) sREntry.get();
            if (sREntryData != null && i2 == sREntryData.characters.length) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (cArr[i + i3] != sREntryData.characters[i3]) {
                        break;
                    }
                }
                return true;
            }
            sREntry = sREntry.next;
        }
    }

    public SoftReferenceSymbolTable(int i, float f) {
        super(1, f);
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
        this.fBuckets = new SREntry[i];
        this.fThreshold = (int) (i * f);
        this.fCount = 0;
        this.f113513a = new ReferenceQueue();
    }
}
