package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes6.dex */
public class LazyField extends LazyFieldLite {

    /* renamed from: e */
    public final MessageLite f37682e;

    /* renamed from: com.google.protobuf.LazyField$b */
    /* loaded from: classes6.dex */
    public static class C6786b<K> implements Map.Entry<K, Object> {

        /* renamed from: e */
        public Map.Entry<K, LazyField> f37683e;

        /* renamed from: a */
        public LazyField m29352a() {
            return this.f37683e.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f37683e.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            LazyField value = this.f37683e.getValue();
            if (value == null) {
                return null;
            }
            return value.getValue();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object value) {
            if (value instanceof MessageLite) {
                return this.f37683e.getValue().setValue((MessageLite) value);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }

        public C6786b(Map.Entry<K, LazyField> entry) {
            this.f37683e = entry;
        }
    }

    /* renamed from: com.google.protobuf.LazyField$c */
    /* loaded from: classes6.dex */
    public static class C6787c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: e */
        public Iterator<Map.Entry<K, Object>> f37684e;

        public C6787c(Iterator<Map.Entry<K, Object>> iterator) {
            this.f37684e = iterator;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f37684e.next();
            return next.getValue() instanceof LazyField ? new C6786b(next) : next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37684e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f37684e.remove();
        }
    }

    public LazyField(MessageLite defaultInstance, ExtensionRegistryLite extensionRegistry, ByteString bytes) {
        super(extensionRegistry, bytes);
        this.f37682e = defaultInstance;
    }

    @Override // com.google.protobuf.LazyFieldLite
    public boolean containsDefaultInstance() {
        return super.containsDefaultInstance() || this.value == this.f37682e;
    }

    @Override // com.google.protobuf.LazyFieldLite
    public boolean equals(Object obj) {
        return getValue().equals(obj);
    }

    public MessageLite getValue() {
        return getValue(this.f37682e);
    }

    @Override // com.google.protobuf.LazyFieldLite
    public int hashCode() {
        return getValue().hashCode();
    }

    public String toString() {
        return getValue().toString();
    }
}
