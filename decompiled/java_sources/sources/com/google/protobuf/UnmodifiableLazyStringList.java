package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
/* loaded from: classes6.dex */
public class UnmodifiableLazyStringList extends AbstractList<String> implements LazyStringList, RandomAccess {

    /* renamed from: e */
    public final LazyStringList f37940e;

    /* renamed from: com.google.protobuf.UnmodifiableLazyStringList$a */
    /* loaded from: classes6.dex */
    public class C6837a implements ListIterator<String> {

        /* renamed from: e */
        public ListIterator<String> f37941e;

        /* renamed from: f */
        public final /* synthetic */ int f37942f;

        public C6837a(final int val$index) {
            this.f37942f = val$index;
            this.f37941e = UnmodifiableLazyStringList.this.f37940e.listIterator(val$index);
        }

        @Override // java.util.ListIterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void add(String o) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public String next() {
            return this.f37941e.next();
        }

        @Override // java.util.ListIterator
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public String previous() {
            return this.f37941e.previous();
        }

        @Override // java.util.ListIterator
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void set(String o) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f37941e.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f37941e.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f37941e.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f37941e.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.UnmodifiableLazyStringList$b */
    /* loaded from: classes6.dex */
    public class C6838b implements Iterator<String> {

        /* renamed from: e */
        public Iterator<String> f37944e;

        public C6838b() {
            this.f37944e = UnmodifiableLazyStringList.this.f37940e.iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String next() {
            return this.f37944e.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37944e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public UnmodifiableLazyStringList(LazyStringList list) {
        this.f37940e = list;
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(ByteString element) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteArray(Collection<byte[]> element) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public boolean addAllByteString(Collection<? extends ByteString> element) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public List<byte[]> asByteArrayList() {
        return Collections.unmodifiableList(this.f37940e.asByteArrayList());
    }

    @Override // com.google.protobuf.ProtocolStringList
    public List<ByteString> asByteStringList() {
        return Collections.unmodifiableList(this.f37940e.asByteStringList());
    }

    @Override // com.google.protobuf.LazyStringList
    public byte[] getByteArray(int index) {
        return this.f37940e.getByteArray(index);
    }

    @Override // com.google.protobuf.LazyStringList
    public ByteString getByteString(int index) {
        return this.f37940e.getByteString(index);
    }

    @Override // com.google.protobuf.LazyStringList
    public Object getRaw(int index) {
        return this.f37940e.getRaw(index);
    }

    @Override // com.google.protobuf.LazyStringList
    public List<?> getUnderlyingElements() {
        return this.f37940e.getUnderlyingElements();
    }

    @Override // com.google.protobuf.LazyStringList
    public LazyStringList getUnmodifiableView() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new C6838b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(final int index) {
        return new C6837a(index);
    }

    @Override // com.google.protobuf.LazyStringList
    public void mergeFrom(LazyStringList other) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int index, ByteString element) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f37940e.size();
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(byte[] element) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int index) {
        return this.f37940e.get(index);
    }

    @Override // com.google.protobuf.LazyStringList
    public void set(int index, byte[] element) {
        throw new UnsupportedOperationException();
    }
}
