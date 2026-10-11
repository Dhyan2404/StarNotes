package com.google.protobuf;

import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.iri;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* loaded from: classes6.dex */
public final class Internal {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final ByteBuffer EMPTY_BYTE_BUFFER;
    public static final CodedInputStream EMPTY_CODED_INPUT_STREAM;

    /* renamed from: a */
    public static final Charset f37666a = Charset.forName("US-ASCII");

    /* renamed from: b */
    public static final Charset f37667b = Charset.forName("UTF-8");

    /* renamed from: c */
    public static final Charset f37668c = Charset.forName("ISO-8859-1");

    /* renamed from: d */
    public static final int f37669d = 4096;

    /* loaded from: classes6.dex */
    public interface BooleanList extends ProtobufList<Boolean> {
        void addBoolean(boolean element);

        boolean getBoolean(int index);

        @Override // com.google.protobuf.Internal.ProtobufList
        /* renamed from: mutableCopyWithCapacity, reason: merged with bridge method [inline-methods] */
        ProtobufList<Boolean> mutableCopyWithCapacity2(int capacity);

        @bnd
        boolean setBoolean(int index, boolean element);
    }

    /* loaded from: classes6.dex */
    public interface DoubleList extends ProtobufList<Double> {
        void addDouble(double element);

        double getDouble(int index);

        @Override // com.google.protobuf.Internal.ProtobufList
        /* renamed from: mutableCopyWithCapacity */
        ProtobufList<Double> mutableCopyWithCapacity2(int capacity);

        @bnd
        double setDouble(int index, double element);
    }

    /* loaded from: classes6.dex */
    public interface EnumLite {
        int getNumber();
    }

    /* loaded from: classes6.dex */
    public interface EnumLiteMap<T extends EnumLite> {
        T findValueByNumber(int number);
    }

    /* loaded from: classes6.dex */
    public interface EnumVerifier {
        boolean isInRange(int number);
    }

    /* loaded from: classes6.dex */
    public interface FloatList extends ProtobufList<Float> {
        void addFloat(float element);

        float getFloat(int index);

        @Override // com.google.protobuf.Internal.ProtobufList
        /* renamed from: mutableCopyWithCapacity */
        ProtobufList<Float> mutableCopyWithCapacity2(int capacity);

        @bnd
        float setFloat(int index, float element);
    }

    /* loaded from: classes6.dex */
    public interface IntList extends ProtobufList<Integer> {
        void addInt(int element);

        int getInt(int index);

        @Override // com.google.protobuf.Internal.ProtobufList
        /* renamed from: mutableCopyWithCapacity */
        ProtobufList<Integer> mutableCopyWithCapacity2(int capacity);

        @bnd
        int setInt(int index, int element);
    }

    /* loaded from: classes6.dex */
    public static class ListAdapter<F, T> extends AbstractList<T> {

        /* renamed from: e */
        public final List<F> f37670e;

        /* renamed from: f */
        public final Converter<F, T> f37671f;

        /* loaded from: classes6.dex */
        public interface Converter<F, T> {
            T convert(F from);
        }

        public ListAdapter(List<F> fromList, Converter<F, T> converter) {
            this.f37670e = fromList;
            this.f37671f = converter;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return (T) this.f37671f.convert(this.f37670e.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f37670e.size();
        }
    }

    /* loaded from: classes6.dex */
    public interface LongList extends ProtobufList<Long> {
        void addLong(long element);

        long getLong(int index);

        @Override // com.google.protobuf.Internal.ProtobufList
        /* renamed from: mutableCopyWithCapacity */
        ProtobufList<Long> mutableCopyWithCapacity2(int capacity);

        @bnd
        long setLong(int index, long element);
    }

    /* loaded from: classes6.dex */
    public static class MapAdapter<K, V, RealValue> extends AbstractMap<K, V> {

        /* renamed from: e */
        public final Map<K, RealValue> f37672e;

        /* renamed from: f */
        public final Converter<RealValue, V> f37673f;

        /* loaded from: classes6.dex */
        public interface Converter<A, B> {
            A doBackward(B object);

            B doForward(A object);
        }

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* renamed from: com.google.protobuf.Internal$MapAdapter$a */
        /* loaded from: classes6.dex */
        public class C6781a<T> implements Converter<Integer, T> {

            /* renamed from: a */
            public final /* synthetic */ EnumLiteMap f37674a;

            /* renamed from: b */
            public final /* synthetic */ EnumLite f37675b;

            public C6781a(final EnumLiteMap val$enumMap, final EnumLite val$unrecognizedValue) {
                this.f37674a = val$enumMap;
                this.f37675b = val$unrecognizedValue;
            }

            /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Integer; */
            @Override // com.google.protobuf.Internal.MapAdapter.Converter
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer doBackward(EnumLite value) {
                return Integer.valueOf(value.getNumber());
            }

            /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Integer;)TT; */
            @Override // com.google.protobuf.Internal.MapAdapter.Converter
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public EnumLite doForward(Integer value) {
                EnumLite findValueByNumber = this.f37674a.findValueByNumber(value.intValue());
                return findValueByNumber == null ? this.f37675b : findValueByNumber;
            }
        }

        /* renamed from: com.google.protobuf.Internal$MapAdapter$b */
        /* loaded from: classes6.dex */
        public class C6782b implements Map.Entry<K, V> {

            /* renamed from: e */
            public final Map.Entry<K, RealValue> f37676e;

            public C6782b(Map.Entry<K, RealValue> realEntry) {
                this.f37676e = realEntry;
            }

            @Override // java.util.Map.Entry
            public boolean equals(Object o) {
                if (o == this) {
                    return true;
                }
                if (o instanceof Map.Entry) {
                    return getKey().equals(((Map.Entry) o).getKey()) && getValue().equals(getValue());
                }
                return false;
            }

            @Override // java.util.Map.Entry
            public K getKey() {
                return this.f37676e.getKey();
            }

            @Override // java.util.Map.Entry
            public V getValue() {
                return (V) MapAdapter.this.f37673f.doForward(this.f37676e.getValue());
            }

            @Override // java.util.Map.Entry
            public int hashCode() {
                return this.f37676e.hashCode();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Map.Entry
            public V setValue(V v) {
                Object value = this.f37676e.setValue(MapAdapter.this.f37673f.doBackward(v));
                if (value == null) {
                    return null;
                }
                return (V) MapAdapter.this.f37673f.doForward(value);
            }
        }

        /* renamed from: com.google.protobuf.Internal$MapAdapter$c */
        /* loaded from: classes6.dex */
        public class C6783c implements Iterator<Map.Entry<K, V>> {

            /* renamed from: e */
            public final Iterator<Map.Entry<K, RealValue>> f37678e;

            public C6783c(Iterator<Map.Entry<K, RealValue>> realIterator) {
                this.f37678e = realIterator;
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return new C6782b(this.f37678e.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f37678e.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f37678e.remove();
            }
        }

        /* renamed from: com.google.protobuf.Internal$MapAdapter$d */
        /* loaded from: classes6.dex */
        public class C6784d extends AbstractSet<Map.Entry<K, V>> {

            /* renamed from: e */
            public final Set<Map.Entry<K, RealValue>> f37680e;

            public C6784d(Set<Map.Entry<K, RealValue>> realSet) {
                this.f37680e = realSet;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return new C6783c(this.f37680e.iterator());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return this.f37680e.size();
            }
        }

        public MapAdapter(Map<K, RealValue> realMap, Converter<RealValue, V> valueConverter) {
            this.f37672e = realMap;
            this.f37673f = valueConverter;
        }

        public static <T extends EnumLite> Converter<Integer, T> newEnumConverter(final EnumLiteMap<T> enumMap, final T unrecognizedValue) {
            return new C6781a(enumMap, unrecognizedValue);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new C6784d(this.f37672e.entrySet());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object key) {
            RealValue realvalue = this.f37672e.get(key);
            if (realvalue == null) {
                return null;
            }
            return this.f37673f.doForward(realvalue);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Object put = this.f37672e.put(k, this.f37673f.doBackward(v));
            if (put == null) {
                return null;
            }
            return (V) this.f37673f.doForward(put);
        }
    }

    /* loaded from: classes6.dex */
    public interface ProtobufList<E> extends List<E>, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        /* renamed from: mutableCopyWithCapacity */
        ProtobufList<E> mutableCopyWithCapacity2(int capacity);
    }

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_BYTE_BUFFER = ByteBuffer.wrap(bArr);
        EMPTY_CODED_INPUT_STREAM = CodedInputStream.newInstance(bArr);
    }

    /* renamed from: a */
    public static <T> T m29343a(T obj) {
        obj.getClass();
        return obj;
    }

    /* renamed from: b */
    public static <T> T m29344b(T obj, String message) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(message);
    }

    public static byte[] byteArrayDefaultValue(String bytes) {
        return bytes.getBytes(f37668c);
    }

    public static ByteBuffer byteBufferDefaultValue(String bytes) {
        return ByteBuffer.wrap(byteArrayDefaultValue(bytes));
    }

    public static ByteString bytesDefaultValue(String bytes) {
        return ByteString.copyFrom(bytes.getBytes(f37668c));
    }

    /* renamed from: c */
    public static int m29345c(byte[] bytes, int offset, int length) {
        int m29347e = m29347e(length, bytes, offset, length);
        if (m29347e == 0) {
            return 1;
        }
        return m29347e;
    }

    public static ByteBuffer copyByteBuffer(ByteBuffer source) {
        ByteBuffer duplicate = source.duplicate();
        duplicate.clear();
        ByteBuffer allocate = ByteBuffer.allocate(duplicate.capacity());
        allocate.put(duplicate);
        allocate.clear();
        return allocate;
    }

    /* renamed from: d */
    public static Object m29346d(Object destination, Object source) {
        return ((MessageLite) destination).toBuilder().mergeFrom((MessageLite) source).buildPartial();
    }

    /* renamed from: e */
    public static int m29347e(int h, byte[] bytes, int offset, int length) {
        for (int i = offset; i < offset + length; i++) {
            h = (h * 31) + bytes[i];
        }
        return h;
    }

    public static boolean equals(List<byte[]> a, List<byte[]> b) {
        if (a.size() != b.size()) {
            return false;
        }
        for (int i = 0; i < a.size(); i++) {
            if (!Arrays.equals(a.get(i), b.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsByteBuffer(ByteBuffer a, ByteBuffer b) {
        if (a.capacity() != b.capacity()) {
            return false;
        }
        ByteBuffer duplicate = a.duplicate();
        iri.m54771a(duplicate);
        ByteBuffer duplicate2 = b.duplicate();
        iri.m54771a(duplicate2);
        return duplicate.equals(duplicate2);
    }

    public static <T extends MessageLite> T getDefaultInstance(Class<T> clazz) {
        try {
            java.lang.reflect.Method method = clazz.getMethod(C6871h.f38109a, new Class[0]);
            return (T) method.invoke(method, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException("Failed to get default instance for " + clazz, e);
        }
    }

    public static int hashBoolean(boolean b) {
        return b ? 1231 : 1237;
    }

    public static int hashCode(List<byte[]> list) {
        Iterator<byte[]> it2 = list.iterator();
        int i = 1;
        while (it2.hasNext()) {
            i = (i * 31) + hashCode(it2.next());
        }
        return i;
    }

    public static int hashCodeByteBuffer(List<ByteBuffer> list) {
        Iterator<ByteBuffer> it2 = list.iterator();
        int i = 1;
        while (it2.hasNext()) {
            i = (i * 31) + hashCodeByteBuffer(it2.next());
        }
        return i;
    }

    public static int hashEnum(EnumLite e) {
        return e.getNumber();
    }

    public static int hashEnumList(List<? extends EnumLite> list) {
        Iterator<? extends EnumLite> it2 = list.iterator();
        int i = 1;
        while (it2.hasNext()) {
            i = (i * 31) + hashEnum(it2.next());
        }
        return i;
    }

    public static int hashLong(long n) {
        return (int) (n ^ (n >>> 32));
    }

    public static boolean isValidUtf8(ByteString byteString) {
        return byteString.isValidUtf8();
    }

    public static String stringDefaultValue(String bytes) {
        return new String(bytes.getBytes(f37668c), f37667b);
    }

    public static byte[] toByteArray(String value) {
        return value.getBytes(f37667b);
    }

    public static String toStringUtf8(byte[] bytes) {
        return new String(bytes, f37667b);
    }

    public static boolean isValidUtf8(byte[] byteArray) {
        return Utf8.m29671t(byteArray);
    }

    public static int hashCode(byte[] bytes) {
        return m29345c(bytes, 0, bytes.length);
    }

    public static int hashCodeByteBuffer(ByteBuffer bytes) {
        if (bytes.hasArray()) {
            int m29347e = m29347e(bytes.capacity(), bytes.array(), bytes.arrayOffset(), bytes.capacity());
            if (m29347e == 0) {
                return 1;
            }
            return m29347e;
        }
        int capacity = bytes.capacity() <= 4096 ? bytes.capacity() : 4096;
        byte[] bArr = new byte[capacity];
        ByteBuffer duplicate = bytes.duplicate();
        iri.m54771a(duplicate);
        int capacity2 = bytes.capacity();
        while (duplicate.remaining() > 0) {
            int remaining = duplicate.remaining() <= capacity ? duplicate.remaining() : capacity;
            duplicate.get(bArr, 0, remaining);
            capacity2 = m29347e(capacity2, bArr, 0, remaining);
        }
        if (capacity2 == 0) {
            return 1;
        }
        return capacity2;
    }

    public static boolean equalsByteBuffer(List<ByteBuffer> a, List<ByteBuffer> b) {
        if (a.size() != b.size()) {
            return false;
        }
        for (int i = 0; i < a.size(); i++) {
            if (!equalsByteBuffer(a.get(i), b.get(i))) {
                return false;
            }
        }
        return true;
    }
}
