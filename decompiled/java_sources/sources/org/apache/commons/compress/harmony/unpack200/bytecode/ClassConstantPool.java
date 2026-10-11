package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import org.apache.commons.compress.harmony.unpack200.Segment;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry;

/* loaded from: classes12.dex */
public class ClassConstantPool {

    /* renamed from: d */
    public boolean f107162d;
    protected Map<ClassFileEntry, Integer> indexCache;
    protected HashSet<ClassFileEntry> entriesContainsSet = new HashSet<>();
    protected HashSet<ClassFileEntry> othersContainsSet = new HashSet<>();

    /* renamed from: a */
    public final HashSet<ClassFileEntry> f107159a = new HashSet<>();

    /* renamed from: b */
    public final List<ClassFileEntry> f107160b = new ArrayList(500);

    /* renamed from: c */
    public final List<ClassFileEntry> f107161c = new ArrayList(500);

    /* renamed from: g */
    public static /* synthetic */ int m67123g(ClassFileEntry classFileEntry) {
        return ((ConstantPoolEntry) classFileEntry).getGlobalIndex();
    }

    /* renamed from: h */
    public static /* synthetic */ String m67124h(ClassFileEntry classFileEntry) {
        return ((CPUTF8) classFileEntry).underlyingString();
    }

    /* renamed from: i */
    public static /* synthetic */ String m67125i(ClassFileEntry classFileEntry) {
        return ((CPClass) classFileEntry).getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m67126j(ClassFileEntry classFileEntry) {
        classFileEntry.resolve(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ void m67127k(ClassFileEntry classFileEntry) {
        classFileEntry.resolve(this);
    }

    public ClassFileEntry add(ClassFileEntry classFileEntry) {
        if (classFileEntry instanceof ByteCode) {
            return null;
        }
        if (classFileEntry instanceof ConstantPoolEntry) {
            if (this.entriesContainsSet.add(classFileEntry)) {
                this.f107161c.add(classFileEntry);
            }
        } else if (this.othersContainsSet.add(classFileEntry)) {
            this.f107160b.add(classFileEntry);
        }
        return classFileEntry;
    }

    public void addNestedEntries() {
        ArrayList arrayList = new ArrayList(512);
        ArrayList arrayList2 = new ArrayList(512);
        arrayList.addAll(this.f107161c);
        arrayList.addAll(this.f107160b);
        boolean z = true;
        while (true) {
            if (!z && arrayList.size() <= 0) {
                return;
            }
            arrayList2.clear();
            int size = this.f107161c.size();
            int size2 = this.f107160b.size();
            for (int i = 0; i < arrayList.size(); i++) {
                ClassFileEntry classFileEntry = (ClassFileEntry) arrayList.get(i);
                ClassFileEntry[] nestedClassFileEntries = classFileEntry.getNestedClassFileEntries();
                arrayList2.addAll(Arrays.asList(nestedClassFileEntries));
                if ((classFileEntry instanceof ByteCode) && ((ByteCode) classFileEntry).nestedMustStartClassPool()) {
                    this.f107159a.addAll(Arrays.asList(nestedClassFileEntries));
                }
                add(classFileEntry);
            }
            z = (this.f107161c.size() == size && this.f107160b.size() == size2) ? false : true;
            arrayList.clear();
            arrayList.addAll(arrayList2);
        }
    }

    public ClassFileEntry addWithNestedEntries(ClassFileEntry classFileEntry) {
        add(classFileEntry);
        for (ClassFileEntry classFileEntry2 : classFileEntry.getNestedClassFileEntries()) {
            addWithNestedEntries(classFileEntry2);
        }
        return classFileEntry;
    }

    public List<ClassFileEntry> entries() {
        return Collections.unmodifiableList(this.f107161c);
    }

    /* renamed from: f */
    public final void m67128f() {
        TreeSet treeSet = new TreeSet(Comparator.comparingInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.bud
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int m67123g;
                m67123g = ClassConstantPool.m67123g((ClassFileEntry) obj);
                return m67123g;
            }
        }));
        TreeSet treeSet2 = new TreeSet(Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.cud
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String m67124h;
                m67124h = ClassConstantPool.m67124h((ClassFileEntry) obj);
                return m67124h;
            }
        }));
        TreeSet treeSet3 = new TreeSet(Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.dud
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String m67125i;
                m67125i = ClassConstantPool.m67125i((ClassFileEntry) obj);
                return m67125i;
            }
        }));
        Iterator<ClassFileEntry> it2 = this.f107161c.iterator();
        while (it2.hasNext()) {
            ConstantPoolEntry constantPoolEntry = (ConstantPoolEntry) it2.next();
            if (constantPoolEntry.getGlobalIndex() != -1) {
                treeSet.add(constantPoolEntry);
            } else if (constantPoolEntry instanceof CPUTF8) {
                treeSet2.add(constantPoolEntry);
            } else {
                if (!(constantPoolEntry instanceof CPClass)) {
                    throw new Error("error");
                }
                treeSet3.add(constantPoolEntry);
            }
        }
        this.f107161c.clear();
        this.f107161c.addAll(treeSet);
        this.f107161c.addAll(treeSet2);
        this.f107161c.addAll(treeSet3);
    }

    public ClassFileEntry get(int i) {
        if (this.f107162d) {
            return this.f107161c.get(i - 1);
        }
        throw new IllegalStateException("Constant pool is not yet resolved; this does not make any sense");
    }

    public int indexOf(ClassFileEntry classFileEntry) {
        if (!this.f107162d) {
            throw new IllegalStateException("Constant pool is not yet resolved; this does not make any sense");
        }
        Map<ClassFileEntry, Integer> map = this.indexCache;
        if (map == null) {
            throw new IllegalStateException("Index cache is not initialized!");
        }
        Integer num = map.get(classFileEntry);
        if (num != null) {
            return num.intValue() + 1;
        }
        return -1;
    }

    public void resolve(Segment segment) {
        m67128f();
        sortClassPool();
        this.f107162d = true;
        this.f107161c.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.eud
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ClassConstantPool.this.m67126j((ClassFileEntry) obj);
            }
        });
        this.f107160b.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.fud
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ClassConstantPool.this.m67127k((ClassFileEntry) obj);
            }
        });
    }

    public int size() {
        return this.f107161c.size();
    }

    public void sortClassPool() {
        ArrayList<ClassFileEntry> arrayList = new ArrayList(this.f107161c.size());
        ArrayList<ClassFileEntry> arrayList2 = new ArrayList(this.f107161c.size());
        for (ClassFileEntry classFileEntry : this.f107161c) {
            if (this.f107159a.contains(classFileEntry)) {
                arrayList.add(classFileEntry);
            } else {
                arrayList2.add(classFileEntry);
            }
        }
        this.indexCache = new HashMap(this.f107161c.size());
        this.f107161c.clear();
        int i = 0;
        for (ClassFileEntry classFileEntry2 : arrayList) {
            this.indexCache.put(classFileEntry2, Integer.valueOf(i));
            if ((classFileEntry2 instanceof CPLong) || (classFileEntry2 instanceof CPDouble)) {
                this.f107161c.add(classFileEntry2);
                this.f107161c.add(classFileEntry2);
                i += 2;
            } else {
                this.f107161c.add(classFileEntry2);
                i++;
            }
        }
        for (ClassFileEntry classFileEntry3 : arrayList2) {
            this.indexCache.put(classFileEntry3, Integer.valueOf(i));
            if ((classFileEntry3 instanceof CPLong) || (classFileEntry3 instanceof CPDouble)) {
                this.f107161c.add(classFileEntry3);
                this.f107161c.add(classFileEntry3);
                i += 2;
            } else {
                this.f107161c.add(classFileEntry3);
                i++;
            }
        }
    }
}
