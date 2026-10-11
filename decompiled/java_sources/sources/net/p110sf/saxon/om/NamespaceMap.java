package net.p110sf.saxon.om;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import net.p110sf.saxon.om.NamespaceBinding;

/* loaded from: classes11.dex */
public class NamespaceMap implements NamespaceBindingSet, NamespaceResolver {

    /* renamed from: e */
    public static final String[] f100831e = new String[0];

    /* renamed from: f */
    public static final NamespaceMap f100832f = new NamespaceMap();
    protected String[] prefixes;
    protected String[] uris;

    /* renamed from: net.sf.saxon.om.NamespaceMap$a */
    /* loaded from: classes11.dex */
    public class C18424a implements Iterator<NamespaceBinding> {

        /* renamed from: e */
        public int f100833e = 0;

        public C18424a() {
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NamespaceBinding next() {
            NamespaceMap namespaceMap = NamespaceMap.this;
            String[] strArr = namespaceMap.prefixes;
            int i = this.f100833e;
            NamespaceBinding namespaceBinding = new NamespaceBinding(strArr[i], namespaceMap.uris[i]);
            this.f100833e++;
            return namespaceBinding;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f100833e < NamespaceMap.this.prefixes.length;
        }
    }

    public NamespaceMap() {
        String[] strArr = f100831e;
        this.prefixes = strArr;
        this.uris = strArr;
    }

    public static NamespaceMap emptyMap() {
        return f100832f;
    }

    public static NamespaceMap fromNamespaceResolver(NamespaceResolver namespaceResolver) {
        Iterator<String> iteratePrefixes = namespaceResolver.iteratePrefixes();
        ArrayList arrayList = new ArrayList();
        while (iteratePrefixes.hasNext()) {
            String next = iteratePrefixes.next();
            arrayList.add(new NamespaceBinding(next, namespaceResolver.getURIForPrefix(next, true)));
        }
        return new NamespaceMap(arrayList);
    }

    /* renamed from: of */
    public static NamespaceMap m63391of(String str, String str2) {
        NamespaceMap namespaceMap = new NamespaceMap();
        if (namespaceMap.m63392a(str, str2)) {
            return f100832f;
        }
        namespaceMap.prefixes = new String[]{str};
        namespaceMap.uris = new String[]{str2};
        return namespaceMap;
    }

    /* renamed from: a */
    public final boolean m63392a(String str, String str2) {
        if (str.equals("xml")) {
            if (str2.equals("http://www.w3.org/XML/1998/namespace")) {
                return true;
            }
            throw new IllegalArgumentException("Invalid URI for xml prefix");
        }
        if (str2.equals("http://www.w3.org/XML/1998/namespace")) {
            throw new IllegalArgumentException("Invalid prefix for XML namespace");
        }
        return false;
    }

    public NamespaceMap addAll(NamespaceBindingSet namespaceBindingSet) {
        if (namespaceBindingSet instanceof NamespaceMap) {
            return putAll((NamespaceMap) namespaceBindingSet);
        }
        for (NamespaceBinding namespaceBinding : namespaceBindingSet) {
            this = this.put(namespaceBinding.getPrefix(), namespaceBinding.getURI());
        }
        return this;
    }

    public boolean allowsNamespaceUndeclarations() {
        return false;
    }

    public NamespaceMap applyDifferences(NamespaceDeltaMap namespaceDeltaMap) {
        if (namespaceDeltaMap.isEmpty()) {
            return this;
        }
        String[] strArr = this.prefixes;
        String[] strArr2 = this.uris;
        String[] strArr3 = namespaceDeltaMap.prefixes;
        String[] strArr4 = namespaceDeltaMap.uris;
        ArrayList arrayList = new ArrayList(strArr.length + strArr3.length);
        ArrayList arrayList2 = new ArrayList(strArr.length + strArr3.length);
        int i = 0;
        int i2 = 0;
        while (i < strArr.length && i2 < strArr3.length) {
            int compareTo = strArr[i].compareTo(strArr3[i2]);
            if (compareTo < 0) {
                arrayList.add(strArr[i]);
                arrayList2.add(strArr2[i]);
                i++;
            } else {
                if (compareTo <= 0) {
                    if (!strArr4[i2].isEmpty() || strArr3[i2].isEmpty()) {
                        arrayList.add(strArr3[i2]);
                        arrayList2.add(strArr4[i2]);
                    }
                    i++;
                } else if (!strArr4[i2].isEmpty()) {
                    arrayList.add(strArr3[i2]);
                    arrayList2.add(strArr4[i2]);
                }
                i2++;
            }
        }
        while (i < strArr.length) {
            arrayList.add(strArr[i]);
            arrayList2.add(strArr2[i]);
            i++;
        }
        while (i2 < strArr3.length) {
            if (!strArr4[i2].isEmpty()) {
                arrayList.add(strArr3[i2]);
                arrayList2.add(strArr4[i2]);
            }
            i2++;
        }
        NamespaceMap namespaceMap = new NamespaceMap();
        namespaceMap.prefixes = (String[]) arrayList.toArray(new String[0]);
        namespaceMap.uris = (String[]) arrayList2.toArray(new String[0]);
        return namespaceMap;
    }

    /* renamed from: b */
    public final void m63393b(NamespaceBinding[] namespaceBindingArr) {
        Arrays.sort(namespaceBindingArr, Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.nsj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((NamespaceBinding) obj).getPrefix();
            }
        }));
    }

    public NamespaceMap bind(String str, String str2) {
        return str2.isEmpty() ? remove(str) : put(str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof NamespaceMap) {
                NamespaceMap namespaceMap = (NamespaceMap) obj;
                if (!Arrays.equals(this.prefixes, namespaceMap.prefixes) || !Arrays.equals(this.uris, namespaceMap.uris)) {
                }
            }
            return false;
        }
        return true;
    }

    public String getDefaultNamespace() {
        String[] strArr = this.prefixes;
        return (strArr.length <= 0 || !strArr[0].isEmpty()) ? "" : this.uris[0];
    }

    public NamespaceBinding[] getDifferences(NamespaceMap namespaceMap, boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.prefixes;
            if (i < strArr.length) {
                String[] strArr2 = namespaceMap.prefixes;
                if (i2 < strArr2.length) {
                    int compareTo = strArr[i].compareTo(strArr2[i2]);
                    if (compareTo < 0) {
                        arrayList.add(new NamespaceBinding(this.prefixes[i], this.uris[i]));
                        i++;
                    } else {
                        if (compareTo == 0) {
                            if (!this.uris[i].equals(namespaceMap.uris[i2])) {
                                arrayList.add(new NamespaceBinding(this.prefixes[i], this.uris[i]));
                            }
                            i++;
                        } else if (z || namespaceMap.prefixes[i2].isEmpty()) {
                            arrayList.add(new NamespaceBinding(namespaceMap.prefixes[i2], ""));
                        }
                        i2++;
                    }
                }
            }
            if (i < strArr.length) {
                arrayList.add(new NamespaceBinding(this.prefixes[i], this.uris[i]));
                i++;
            } else {
                if (i2 >= namespaceMap.prefixes.length) {
                    return (NamespaceBinding[]) arrayList.toArray(NamespaceBinding.EMPTY_ARRAY);
                }
                arrayList.add(new NamespaceBinding(namespaceMap.prefixes[i2], ""));
                i2++;
            }
        }
    }

    public NamespaceBinding[] getNamespaceBindings() {
        NamespaceBinding[] namespaceBindingArr = new NamespaceBinding[this.prefixes.length];
        for (int i = 0; i < this.prefixes.length; i++) {
            namespaceBindingArr[i] = new NamespaceBinding(this.prefixes[i], this.uris[i]);
        }
        return namespaceBindingArr;
    }

    public String[] getPrefixArray() {
        return this.prefixes;
    }

    @Override // net.p110sf.saxon.om.NamespaceBindingSet
    public String getURI(String str) {
        if (str.equals("xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        int binarySearch = Arrays.binarySearch(this.prefixes, str);
        if (binarySearch >= 0) {
            return this.uris[binarySearch];
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        return str.equals("xml") ? "http://www.w3.org/XML/1998/namespace" : str.equals("") ? z ? getDefaultNamespace() : "" : getURI(str);
    }

    public String[] getURIsAsArray() {
        return this.uris;
    }

    public int hashCode() {
        return Arrays.hashCode(this.uris) ^ Arrays.hashCode(this.prefixes);
    }

    public boolean isEmpty() {
        return this.prefixes.length == 0;
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        ArrayList arrayList = new ArrayList(Arrays.asList(this.prefixes));
        arrayList.add("xml");
        return arrayList.iterator();
    }

    @Override // java.lang.Iterable
    public Iterator<NamespaceBinding> iterator() {
        return new C18424a();
    }

    public NamespaceMap makeNamespaceMap() {
        return new NamespaceMap();
    }

    public NamespaceMap put(String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        if (m63392a(str, str2)) {
            return this;
        }
        int binarySearch = Arrays.binarySearch(this.prefixes, str);
        if (binarySearch < 0) {
            int i = (-binarySearch) - 1;
            String[] strArr = this.prefixes;
            String[] strArr2 = new String[strArr.length + 1];
            String[] strArr3 = new String[this.uris.length + 1];
            System.arraycopy(strArr, 0, strArr2, 0, i);
            System.arraycopy(this.uris, 0, strArr3, 0, i);
            strArr2[i] = str;
            strArr3[i] = str2;
            String[] strArr4 = this.prefixes;
            int i2 = i + 1;
            System.arraycopy(strArr4, i, strArr2, i2, strArr4.length - i);
            System.arraycopy(this.uris, i, strArr3, i2, this.prefixes.length - i);
            NamespaceMap makeNamespaceMap = makeNamespaceMap();
            makeNamespaceMap.prefixes = strArr2;
            makeNamespaceMap.uris = strArr3;
            return makeNamespaceMap;
        }
        if (this.uris[binarySearch].equals(str2)) {
            return this;
        }
        if (!str2.isEmpty()) {
            NamespaceMap makeNamespaceMap2 = makeNamespaceMap();
            String[] strArr5 = this.prefixes;
            makeNamespaceMap2.prefixes = (String[]) Arrays.copyOf(strArr5, strArr5.length);
            String[] strArr6 = this.uris;
            String[] strArr7 = (String[]) Arrays.copyOf(strArr6, strArr6.length);
            makeNamespaceMap2.uris = strArr7;
            strArr7[binarySearch] = str2;
            return makeNamespaceMap2;
        }
        NamespaceMap makeNamespaceMap3 = makeNamespaceMap();
        String[] strArr8 = this.prefixes;
        if (strArr8.length > 1) {
            String[] strArr9 = new String[strArr8.length - 1];
            makeNamespaceMap3.prefixes = strArr9;
            System.arraycopy(this.prefixes, 0, strArr9, 0, binarySearch);
            String[] strArr10 = this.prefixes;
            int i3 = binarySearch + 1;
            System.arraycopy(strArr10, i3, makeNamespaceMap3.prefixes, binarySearch, (strArr10.length - binarySearch) - 1);
            String[] strArr11 = new String[this.uris.length - 1];
            makeNamespaceMap3.uris = strArr11;
            System.arraycopy(this.uris, 0, strArr11, 0, binarySearch);
            String[] strArr12 = this.uris;
            System.arraycopy(strArr12, i3, makeNamespaceMap3.uris, binarySearch, (strArr12.length - binarySearch) - 1);
        }
        return makeNamespaceMap3;
    }

    public NamespaceMap putAll(NamespaceMap namespaceMap) {
        if (this == namespaceMap) {
            return this;
        }
        if (isEmpty()) {
            return namespaceMap;
        }
        if (namespaceMap.isEmpty()) {
            return this;
        }
        String[] strArr = this.prefixes;
        String[] strArr2 = this.uris;
        String[] strArr3 = namespaceMap.prefixes;
        String[] strArr4 = namespaceMap.uris;
        ArrayList arrayList = new ArrayList(strArr.length + strArr3.length);
        ArrayList arrayList2 = new ArrayList(strArr.length + strArr3.length);
        int i = 0;
        int i2 = 0;
        while (true) {
            int compareTo = strArr[i].compareTo(strArr3[i2]);
            if (compareTo >= 0) {
                if (compareTo <= 0) {
                    arrayList.add(strArr3[i2]);
                    arrayList2.add(strArr4[i2]);
                    i++;
                    i2++;
                    if (i >= strArr.length || i2 >= strArr3.length) {
                        break;
                    }
                } else {
                    arrayList.add(strArr3[i2]);
                    arrayList2.add(strArr4[i2]);
                    i2++;
                    if (i2 >= strArr3.length) {
                        break;
                    }
                }
            } else {
                arrayList.add(strArr[i]);
                arrayList2.add(strArr2[i]);
                i++;
                if (i >= strArr.length) {
                    break;
                }
            }
        }
        while (i < strArr.length) {
            arrayList.add(strArr[i]);
            arrayList2.add(strArr2[i]);
            i++;
        }
        while (i2 < strArr3.length) {
            arrayList.add(strArr3[i2]);
            arrayList2.add(strArr4[i2]);
            i2++;
        }
        NamespaceMap namespaceMap2 = new NamespaceMap();
        namespaceMap2.prefixes = (String[]) arrayList.toArray(new String[0]);
        namespaceMap2.uris = (String[]) arrayList2.toArray(new String[0]);
        return namespaceMap2;
    }

    public NamespaceMap remove(String str) {
        int binarySearch = Arrays.binarySearch(this.prefixes, str);
        if (binarySearch < 0) {
            return this;
        }
        String[] strArr = new String[r0.length - 1];
        String[] strArr2 = new String[this.uris.length - 1];
        System.arraycopy(this.prefixes, 0, strArr, 0, binarySearch);
        System.arraycopy(this.uris, 0, strArr2, 0, binarySearch);
        int i = binarySearch + 1;
        System.arraycopy(this.prefixes, i, strArr, binarySearch, (r0.length - binarySearch) - 1);
        System.arraycopy(this.uris, i, strArr2, binarySearch, (r0.length - binarySearch) - 1);
        NamespaceMap makeNamespaceMap = makeNamespaceMap();
        makeNamespaceMap.prefixes = strArr;
        makeNamespaceMap.uris = strArr2;
        return makeNamespaceMap;
    }

    public int size() {
        return this.prefixes.length;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<NamespaceBinding> it2 = iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            sb.append(next.getPrefix());
            sb.append("=");
            sb.append(next.getURI());
            sb.append(" ");
        }
        return sb.toString();
    }

    public NamespaceMap(List<NamespaceBinding> list) {
        NamespaceBinding[] namespaceBindingArr = (NamespaceBinding[]) list.toArray(NamespaceBinding.EMPTY_ARRAY);
        m63393b(namespaceBindingArr);
        this.prefixes = new String[namespaceBindingArr.length];
        this.uris = new String[namespaceBindingArr.length];
        boolean z = false;
        for (int i = 0; i < namespaceBindingArr.length; i++) {
            this.prefixes[i] = namespaceBindingArr[i].getPrefix();
            this.uris[i] = namespaceBindingArr[i].getURI();
            if (this.prefixes[i].equals("xml")) {
                if (!this.uris[i].equals("http://www.w3.org/XML/1998/namespace")) {
                    throw new IllegalArgumentException("Binds xml prefix to the wrong namespace");
                }
                z = true;
            } else if (this.uris[i].equals("http://www.w3.org/XML/1998/namespace")) {
                throw new IllegalArgumentException("Binds xml namespace to the wrong prefix");
            }
        }
        if (z) {
            remove("xml");
        }
    }
}
