package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes6.dex */
public class LazyStringArrayList extends AbstractC6853a<String> implements LazyStringList, RandomAccess {

    @Deprecated
    public static final LazyStringList EMPTY;

    /* renamed from: g */
    public static final LazyStringArrayList f37689g;

    /* renamed from: f */
    public final List<Object> f37690f;

    /* renamed from: com.google.protobuf.LazyStringArrayList$a */
    /* loaded from: classes6.dex */
    public static class C6788a extends AbstractList<byte[]> implements RandomAccess {

        /* renamed from: e */
        public final LazyStringArrayList f37691e;

        public C6788a(LazyStringArrayList list) {
            this.f37691e = list;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void add(int index, byte[] s) {
            this.f37691e.m29367i(index, s);
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public byte[] get(int index) {
            return this.f37691e.getByteArray(index);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] remove(int index) {
            String remove = this.f37691e.remove(index);
            ((AbstractList) this).modCount++;
            return LazyStringArrayList.m29363j(remove);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public byte[] set(int index, byte[] s) {
            Object m29369n = this.f37691e.m29369n(index, s);
            ((AbstractList) this).modCount++;
            return LazyStringArrayList.m29363j(m29369n);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37691e.size();
        }
    }

    /* renamed from: com.google.protobuf.LazyStringArrayList$b */
    /* loaded from: classes6.dex */
    public static class C6789b extends AbstractList<ByteString> implements RandomAccess {

        /* renamed from: e */
        public final LazyStringArrayList f37692e;

        public C6789b(LazyStringArrayList list) {
            this.f37692e = list;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void add(int index, ByteString s) {
            this.f37692e.m29366h(index, s);
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public ByteString get(int index) {
            return this.f37692e.getByteString(index);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public ByteString remove(int index) {
            String remove = this.f37692e.remove(index);
            ((AbstractList) this).modCount++;
            return LazyStringArrayList.m29364k(remove);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public ByteString set(int index, ByteString s) {
            Object m29368m = this.f37692e.m29368m(index, s);
            ((AbstractList) this).modCount++;
            return LazyStringArrayList.m29364k(m29368m);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37692e.size();
        }
    }

    static {
        LazyStringArrayList lazyStringArrayList = new LazyStringArrayList(false);
        f37689g = lazyStringArrayList;
        EMPTY = lazyStringArrayList;
    }

    public LazyStringArrayList() {
        this(10);
    }

    public static LazyStringArrayList emptyList() {
        return f37689g;
    }

    /* renamed from: j */
    public static byte[] m29363j(Object o) {
        return o instanceof byte[] ? (byte[]) o : o instanceof String ? Internal.toByteArray((String) o) : ((ByteString) o).toByteArray();
    }

    /* renamed from: k */
    public static ByteString m29364k(Object o) {
        return o instanceof ByteString ? (ByteString) o : o instanceof String ? ByteString.copyFromUtf8((String) o) : ByteString.copyFrom((byte[]) o);
    }

    /* renamed from: l */
    public static String m29365l(Object o) {
        return o instanceof String ? (String) o : o instanceof ByteString ? ((ByteString) o).toStringUtf8() : Internal.toStringUtf8((byte[]) o);
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> c) {
        return addAll(size(), c);
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteArray(Collection<byte[]> c) {
        ensureIsMutable();
        boolean addAll = this.f37690f.addAll(c);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteString(Collection<? extends ByteString> values) {
        ensureIsMutable();
        boolean addAll = this.f37690f.addAll(values);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.protobuf.LazyStringList
    public List<byte[]> asByteArrayList() {
        return new C6788a(this);
    }

    @Override // com.google.protobuf.ProtocolStringList
    public List<ByteString> asByteStringList() {
        return new C6789b(this);
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        ensureIsMutable();
        this.f37690f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object o) {
        return super.equals(o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.LazyStringList
    public byte[] getByteArray(int index) {
        Object obj = this.f37690f.get(index);
        byte[] m29363j = m29363j(obj);
        if (m29363j != obj) {
            this.f37690f.set(index, m29363j);
        }
        return m29363j;
    }

    @Override // com.google.protobuf.LazyStringList
    public ByteString getByteString(int index) {
        Object obj = this.f37690f.get(index);
        ByteString m29364k = m29364k(obj);
        if (m29364k != obj) {
            this.f37690f.set(index, m29364k);
        }
        return m29364k;
    }

    @Override // com.google.protobuf.LazyStringList
    public Object getRaw(int index) {
        return this.f37690f.get(index);
    }

    @Override // com.google.protobuf.LazyStringList
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.f37690f);
    }

    @Override // com.google.protobuf.LazyStringList
    public LazyStringList getUnmodifiableView() {
        return isModifiable() ? new UnmodifiableLazyStringList(this) : this;
    }

    /* renamed from: h */
    public final void m29366h(int index, ByteString element) {
        ensureIsMutable();
        this.f37690f.add(index, element);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    /* renamed from: i */
    public final void m29367i(int index, byte[] element) {
        ensureIsMutable();
        this.f37690f.add(index, element);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC6853a, com.google.protobuf.Internal.ProtobufList
    public /* bridge */ /* synthetic */ boolean isModifiable() {
        return super.isModifiable();
    }

    /* renamed from: m */
    public final Object m29368m(int index, ByteString s) {
        ensureIsMutable();
        return this.f37690f.set(index, s);
    }

    @Override // com.google.protobuf.LazyStringList
    public void mergeFrom(LazyStringList other) {
        ensureIsMutable();
        for (Object obj : other.getUnderlyingElements()) {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.f37690f.add(Arrays.copyOf(bArr, bArr.length));
            } else {
                this.f37690f.add(obj);
            }
        }
    }

    /* renamed from: n */
    public final Object m29369n(int index, byte[] s) {
        ensureIsMutable();
        return this.f37690f.set(index, s);
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection c) {
        return super.removeAll(c);
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection c) {
        return super.retainAll(c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f37690f.size();
    }

    public LazyStringArrayList(boolean isMutable) {
        super(isMutable);
        this.f37690f = Collections.emptyList();
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean add(Object e) {
        return super.add((LazyStringArrayList) e);
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends String> c) {
        ensureIsMutable();
        if (c instanceof LazyStringList) {
            c = ((LazyStringList) c).getUnderlyingElements();
        }
        boolean addAll = this.f37690f.addAll(index, c);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int index) {
        Object obj = this.f37690f.get(index);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f37690f.set(index, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String stringUtf82 = Internal.toStringUtf8(bArr);
        if (Internal.isValidUtf8(bArr)) {
            this.f37690f.set(index, stringUtf82);
        }
        return stringUtf82;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public LazyStringArrayList mutableCopyWithCapacity2(int capacity) {
        if (capacity >= size()) {
            ArrayList arrayList = new ArrayList(capacity);
            arrayList.addAll(this.f37690f);
            return new LazyStringArrayList((ArrayList<Object>) arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object o) {
        return super.remove(o);
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    public String set(int index, String s) {
        ensureIsMutable();
        return m29365l(this.f37690f.set(index, s));
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    public void add(int index, String element) {
        ensureIsMutable();
        this.f37690f.add(index, element);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    public String remove(int index) {
        ensureIsMutable();
        Object remove = this.f37690f.remove(index);
        ((AbstractList) this).modCount++;
        return m29365l(remove);
    }

    public LazyStringArrayList(int initialCapacity) {
        this((ArrayList<Object>) new ArrayList(initialCapacity));
    }

    public LazyStringArrayList(LazyStringList from) {
        this.f37690f = new ArrayList(from.size());
        addAll(from);
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int index, ByteString s) {
        m29368m(index, s);
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(ByteString element) {
        ensureIsMutable();
        this.f37690f.add(element);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int index, byte[] s) {
        m29369n(index, s);
    }

    public LazyStringArrayList(List<String> from) {
        this((ArrayList<Object>) new ArrayList(from));
    }

    public LazyStringArrayList(ArrayList<Object> list) {
        this.f37690f = list;
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(byte[] element) {
        ensureIsMutable();
        this.f37690f.add(element);
        ((AbstractList) this).modCount++;
    }
}
