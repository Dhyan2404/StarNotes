package com.sun.org.apache.xalan.internal.xsltc.runtime;

import java.util.Enumeration;

/* loaded from: classes10.dex */
public class Hashtable {
    private transient int count;
    private float loadFactor;
    private transient HashtableEntry[] table;
    private int threshold;

    /* loaded from: classes10.dex */
    public class HashtableEnumerator implements Enumeration {
        HashtableEntry entry;
        int index;
        boolean keys;
        HashtableEntry[] table;

        public HashtableEnumerator(HashtableEntry[] hashtableEntryArr, boolean z) {
            this.table = hashtableEntryArr;
            this.keys = z;
            this.index = hashtableEntryArr.length;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            HashtableEntry hashtableEntry;
            if (this.entry != null) {
                return true;
            }
            do {
                int i = this.index;
                int i2 = i - 1;
                this.index = i2;
                if (i <= 0) {
                    return false;
                }
                hashtableEntry = this.table[i2];
                this.entry = hashtableEntry;
            } while (hashtableEntry == null);
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            r0 = r2.entry;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
        
            if (r0 == null) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0019, code lost:
        
            r2.entry = r0.next;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
        
            if (r2.keys == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
        
            return r0.key;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0026, code lost:
        
            return r0.value;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0027, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
        
            if (r2.entry == null) goto L4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0004, code lost:
        
            r0 = r2.index;
            r1 = r0 - 1;
            r2.index = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
        
            if (r0 <= 0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        
            r0 = r2.table[r1];
            r2.entry = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
        
            if (r0 != null) goto L18;
         */
        @Override // java.util.Enumeration
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object nextElement() {
            /*
                r2 = this;
                com.sun.org.apache.xalan.internal.xsltc.runtime.HashtableEntry r0 = r2.entry
                if (r0 != 0) goto L15
            L4:
                int r0 = r2.index
                int r1 = r0 + (-1)
                r2.index = r1
                if (r0 <= 0) goto L15
                com.sun.org.apache.xalan.internal.xsltc.runtime.HashtableEntry[] r0 = r2.table
                r0 = r0[r1]
                r2.entry = r0
                if (r0 != 0) goto L15
                goto L4
            L15:
                com.sun.org.apache.xalan.internal.xsltc.runtime.HashtableEntry r0 = r2.entry
                if (r0 == 0) goto L27
                com.sun.org.apache.xalan.internal.xsltc.runtime.HashtableEntry r1 = r0.next
                r2.entry = r1
                boolean r2 = r2.keys
                if (r2 == 0) goto L24
                java.lang.Object r2 = r0.key
                goto L26
            L24:
                java.lang.Object r2 = r0.value
            L26:
                return r2
            L27:
                r2 = 0
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable.HashtableEnumerator.nextElement():java.lang.Object");
        }
    }

    public Hashtable(int i, float f) {
        i = i <= 0 ? 11 : i;
        f = ((double) f) <= 0.0d ? 0.75f : f;
        this.loadFactor = f;
        this.table = new HashtableEntry[i];
        this.threshold = (int) (i * f);
    }

    public void clear() {
        HashtableEntry[] hashtableEntryArr = this.table;
        int length = hashtableEntryArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.count = 0;
                return;
            }
            hashtableEntryArr[length] = null;
        }
    }

    public boolean contains(Object obj) {
        obj.getClass();
        HashtableEntry[] hashtableEntryArr = this.table;
        int length = hashtableEntryArr.length;
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return false;
            }
            for (HashtableEntry hashtableEntry = hashtableEntryArr[i]; hashtableEntry != null; hashtableEntry = hashtableEntry.next) {
                if (hashtableEntry.value.equals(obj)) {
                    return true;
                }
            }
            length = i;
        }
    }

    public boolean containsKey(Object obj) {
        HashtableEntry[] hashtableEntryArr = this.table;
        int hashCode = obj.hashCode();
        for (HashtableEntry hashtableEntry = hashtableEntryArr[(Integer.MAX_VALUE & hashCode) % hashtableEntryArr.length]; hashtableEntry != null; hashtableEntry = hashtableEntry.next) {
            if (hashtableEntry.hash == hashCode && hashtableEntry.key.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public Enumeration elements() {
        return new HashtableEnumerator(this.table, false);
    }

    public Object get(Object obj) {
        HashtableEntry[] hashtableEntryArr = this.table;
        int hashCode = obj.hashCode();
        for (HashtableEntry hashtableEntry = hashtableEntryArr[(Integer.MAX_VALUE & hashCode) % hashtableEntryArr.length]; hashtableEntry != null; hashtableEntry = hashtableEntry.next) {
            if (hashtableEntry.hash == hashCode && hashtableEntry.key.equals(obj)) {
                return hashtableEntry.value;
            }
        }
        return null;
    }

    public boolean isEmpty() {
        return this.count == 0;
    }

    public Enumeration keys() {
        return new HashtableEnumerator(this.table, true);
    }

    public Object put(Object obj, Object obj2) {
        obj2.getClass();
        HashtableEntry[] hashtableEntryArr = this.table;
        int hashCode = obj.hashCode();
        int length = (Integer.MAX_VALUE & hashCode) % hashtableEntryArr.length;
        for (HashtableEntry hashtableEntry = hashtableEntryArr[length]; hashtableEntry != null; hashtableEntry = hashtableEntry.next) {
            if (hashtableEntry.hash == hashCode && hashtableEntry.key.equals(obj)) {
                Object obj3 = hashtableEntry.value;
                hashtableEntry.value = obj2;
                return obj3;
            }
        }
        if (this.count >= this.threshold) {
            rehash();
            return put(obj, obj2);
        }
        HashtableEntry hashtableEntry2 = new HashtableEntry();
        hashtableEntry2.hash = hashCode;
        hashtableEntry2.key = obj;
        hashtableEntry2.value = obj2;
        hashtableEntry2.next = hashtableEntryArr[length];
        hashtableEntryArr[length] = hashtableEntry2;
        this.count++;
        return null;
    }

    public void rehash() {
        HashtableEntry[] hashtableEntryArr = this.table;
        int length = hashtableEntryArr.length;
        int i = (length * 2) + 1;
        HashtableEntry[] hashtableEntryArr2 = new HashtableEntry[i];
        this.threshold = (int) (i * this.loadFactor);
        this.table = hashtableEntryArr2;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return;
            }
            HashtableEntry hashtableEntry = hashtableEntryArr[i2];
            while (hashtableEntry != null) {
                HashtableEntry hashtableEntry2 = hashtableEntry.next;
                int i3 = (hashtableEntry.hash & Integer.MAX_VALUE) % i;
                hashtableEntry.next = hashtableEntryArr2[i3];
                hashtableEntryArr2[i3] = hashtableEntry;
                hashtableEntry = hashtableEntry2;
            }
            length = i2;
        }
    }

    public Object remove(Object obj) {
        HashtableEntry[] hashtableEntryArr = this.table;
        int hashCode = obj.hashCode();
        int length = (Integer.MAX_VALUE & hashCode) % hashtableEntryArr.length;
        HashtableEntry hashtableEntry = null;
        for (HashtableEntry hashtableEntry2 = hashtableEntryArr[length]; hashtableEntry2 != null; hashtableEntry2 = hashtableEntry2.next) {
            if (hashtableEntry2.hash == hashCode && hashtableEntry2.key.equals(obj)) {
                if (hashtableEntry != null) {
                    hashtableEntry.next = hashtableEntry2.next;
                } else {
                    hashtableEntryArr[length] = hashtableEntry2.next;
                }
                this.count--;
                return hashtableEntry2.value;
            }
            hashtableEntry = hashtableEntry2;
        }
        return null;
    }

    public int size() {
        return this.count;
    }

    public String toString() {
        int size = size() - 1;
        StringBuffer stringBuffer = new StringBuffer();
        Enumeration keys = keys();
        Enumeration elements = elements();
        stringBuffer.append("{");
        for (int i = 0; i <= size; i++) {
            stringBuffer.append(keys.nextElement().toString() + "=" + elements.nextElement().toString());
            if (i < size) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    public Hashtable(int i) {
        this(i, 0.75f);
    }

    public Hashtable() {
        this(101, 0.75f);
    }
}
