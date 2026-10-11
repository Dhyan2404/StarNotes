package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.util.Match;

/* loaded from: classes16.dex */
public class Resolver<M extends Match> extends AbstractSet<M> {
    protected final Resolver<M>.Stack stack = new Stack();
    protected final Resolver<M>.Cache cache = new Cache();

    /* loaded from: classes16.dex */
    public class Cache extends LimitedCache<List<M>> {
        public Cache() {
            super(1024);
        }
    }

    /* loaded from: classes16.dex */
    public class Stack extends LinkedList<M> {

        /* loaded from: classes16.dex */
        public class Sequence implements Iterator<M> {
            private int cursor;

            public Sequence() {
                this.cursor = Stack.this.size();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.cursor > 0;
            }

            @Override // java.util.Iterator
            public void remove() {
                Stack.this.purge(this.cursor);
            }

            @Override // java.util.Iterator
            public M next() {
                if (!hasNext()) {
                    return null;
                }
                Stack stack = Stack.this;
                int i = this.cursor - 1;
                this.cursor = i;
                return (M) stack.get(i);
            }
        }

        private Stack() {
        }

        public void purge(int i) {
            Resolver.this.cache.clear();
            remove(i);
        }

        public Iterator<M> sequence() {
            return new Sequence();
        }

        @Override // java.util.LinkedList, java.util.Deque
        public void push(M m) {
            Resolver.this.cache.clear();
            addFirst(m);
        }
    }

    private boolean match(char[] cArr, char[] cArr2) {
        return match(cArr, 0, cArr2, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.cache.clear();
        this.stack.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<M> iterator() {
        return (Iterator<M>) this.stack.sequence();
    }

    public boolean remove(M m) {
        this.cache.clear();
        return this.stack.remove(m);
    }

    public M resolve(String str) {
        List<M> list = (List) this.cache.get(str);
        if (list == null) {
            list = resolveAll(str);
        }
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public List<M> resolveAll(String str) {
        List<M> list = (List) this.cache.get(str);
        if (list != null) {
            return list;
        }
        char[] charArray = str.toCharArray();
        if (charArray == null) {
            return null;
        }
        return resolveAll(str, charArray);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.stack.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
    
        if (r9 < r8.length) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0019, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001a, code lost:
    
        if (r0 != '?') goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001c, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x001f, code lost:
    
        if (r9 < r8.length) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0021, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0023, code lost:
    
        if (r7 >= r6.length) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0025, code lost:
    
        r0 = r6[r7];
        r1 = r8[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0029, code lost:
    
        if (r0 == r1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x002b, code lost:
    
        if (r1 != '?') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003a, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0031, code lost:
    
        if (r8[r9 - 1] == '?') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0037, code lost:
    
        if (match(r6, r7, r8, r9) == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0039, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x003e, code lost:
    
        if (r6.length != r7) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0040, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0041, code lost:
    
        r0 = r7 + 1;
        r1 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0049, code lost:
    
        if (r6[r7] == r8[r9]) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x004f, code lost:
    
        if (r8[r1 - 1] == '?') goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0051, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0052, code lost:
    
        r7 = r0;
        r9 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (r8[r9] == '*') goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0010, code lost:
    
        r0 = r8[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
    
        if (r0 != '*') goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        r9 = r9 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean match(char[] r6, int r7, char[] r8, int r9) {
        /*
            r5 = this;
        L0:
            int r0 = r8.length
            r1 = 42
            r2 = 0
            r3 = 1
            if (r9 >= r0) goto L55
            int r0 = r6.length
            if (r7 >= r0) goto L55
            char r0 = r8[r9]
            r4 = 63
            if (r0 != r1) goto L41
        L10:
            char r0 = r8[r9]
            if (r0 != r1) goto L1a
            int r9 = r9 + 1
            int r0 = r8.length
            if (r9 < r0) goto L10
            return r3
        L1a:
            if (r0 != r4) goto L22
            int r9 = r9 + 1
            int r0 = r8.length
            if (r9 < r0) goto L22
            return r3
        L22:
            int r0 = r6.length
            if (r7 >= r0) goto L3d
            char r0 = r6[r7]
            char r1 = r8[r9]
            if (r0 == r1) goto L2d
            if (r1 != r4) goto L3a
        L2d:
            int r0 = r9 + (-1)
            char r0 = r8[r0]
            if (r0 == r4) goto L3d
            boolean r0 = r5.match(r6, r7, r8, r9)
            if (r0 == 0) goto L3a
            return r3
        L3a:
            int r7 = r7 + 1
            goto L22
        L3d:
            int r0 = r6.length
            if (r0 != r7) goto L41
            return r2
        L41:
            int r0 = r7 + 1
            char r7 = r6[r7]
            int r1 = r9 + 1
            char r9 = r8[r9]
            if (r7 == r9) goto L52
            int r7 = r1 + (-1)
            char r7 = r8[r7]
            if (r7 == r4) goto L52
            return r2
        L52:
            r7 = r0
            r9 = r1
            goto L0
        L55:
            int r5 = r8.length
            if (r5 != r9) goto L5d
            int r5 = r6.length
            if (r5 != r7) goto L5c
            r2 = r3
        L5c:
            return r2
        L5d:
            char r5 = r8[r9]
            if (r5 != r1) goto L67
            int r9 = r9 + 1
            int r5 = r8.length
            if (r9 < r5) goto L5d
            return r3
        L67:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.simpleframework.xml.util.Resolver.match(char[], int, char[], int):boolean");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(M m) {
        this.stack.push((Resolver<M>.Stack) m);
        return true;
    }

    private List<M> resolveAll(String str, char[] cArr) {
        ArrayList arrayList = new ArrayList();
        Iterator<M> it2 = this.stack.iterator();
        while (it2.hasNext()) {
            Match match = (Match) it2.next();
            if (match(cArr, match.getPattern().toCharArray())) {
                this.cache.put(str, arrayList);
                arrayList.add(match);
            }
        }
        return arrayList;
    }
}
