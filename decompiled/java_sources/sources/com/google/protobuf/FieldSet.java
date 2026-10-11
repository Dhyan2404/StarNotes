package com.google.protobuf;

import com.google.protobuf.FieldSet.FieldDescriptorLite;
import com.google.protobuf.Internal;
import com.google.protobuf.LazyField;
import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public final class FieldSet<T extends FieldDescriptorLite<T>> {

    /* renamed from: d */
    public static final int f37470d = 16;

    /* renamed from: e */
    public static final FieldSet f37471e = new FieldSet(true);

    /* renamed from: a */
    public final C6856b0<T, Object> f37472a;

    /* renamed from: b */
    public boolean f37473b;

    /* renamed from: c */
    public boolean f37474c;

    /* loaded from: classes6.dex */
    public interface FieldDescriptorLite<T extends FieldDescriptorLite<T>> extends Comparable<T> {
        Internal.EnumLiteMap<?> getEnumType();

        WireFormat.JavaType getLiteJavaType();

        WireFormat.FieldType getLiteType();

        int getNumber();

        MessageLite.Builder internalMergeFrom(MessageLite.Builder to, MessageLite from);

        boolean isPacked();

        boolean isRepeated();
    }

    /* renamed from: com.google.protobuf.FieldSet$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6739a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37475a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f37476b;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f37476b = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37476b[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37476b[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37476b[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37476b[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37476b[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37476b[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37476b[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37476b[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37476b[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f37476b[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f37476b[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f37476b[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f37476b[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f37476b[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f37476b[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f37476b[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f37476b[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            f37475a = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f37475a[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f37475a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f37475a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f37475a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f37475a[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f37475a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f37475a[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f37475a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* renamed from: com.google.protobuf.FieldSet$b */
    /* loaded from: classes6.dex */
    public static final class C6740b<T extends FieldDescriptorLite<T>> {

        /* renamed from: a */
        public C6856b0<T, Object> f37477a;

        /* renamed from: b */
        public boolean f37478b;

        /* renamed from: c */
        public boolean f37479c;

        /* renamed from: d */
        public boolean f37480d;

        public /* synthetic */ C6740b(C6739a c6739a) {
            this();
        }

        /* renamed from: g */
        public static <T extends FieldDescriptorLite<T>> C6740b<T> m29163g(FieldSet<T> fieldSet) {
            C6740b<T> c6740b = new C6740b<>(FieldSet.m29130l(fieldSet.f37472a, true));
            c6740b.f37478b = fieldSet.f37474c;
            return c6740b;
        }

        /* renamed from: r */
        public static Object m29164r(Object value, boolean partial) {
            if (!(value instanceof MessageLite.Builder)) {
                return value;
            }
            MessageLite.Builder builder = (MessageLite.Builder) value;
            return partial ? builder.buildPartial() : builder.build();
        }

        /* renamed from: s */
        public static <T extends FieldDescriptorLite<T>> Object m29165s(T descriptor, Object value, boolean partial) {
            if (value == null || descriptor.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
                return value;
            }
            if (!descriptor.isRepeated()) {
                return m29164r(value, partial);
            }
            if (!(value instanceof List)) {
                throw new IllegalStateException("Repeated field should contains a List but actually contains type: " + value.getClass());
            }
            List list = (List) value;
            for (int i = 0; i < list.size(); i++) {
                Object obj = list.get(i);
                Object m29164r = m29164r(obj, partial);
                if (m29164r != obj) {
                    if (list == value) {
                        list = new ArrayList(list);
                    }
                    list.set(i, m29164r);
                }
            }
            return list;
        }

        /* renamed from: t */
        public static <T extends FieldDescriptorLite<T>> void m29166t(C6856b0<T, Object> fieldMap, boolean partial) {
            for (int i = 0; i < fieldMap.m29890k(); i++) {
                m29167u(fieldMap.m29889j(i), partial);
            }
            Iterator<Map.Entry<T, Object>> it2 = fieldMap.m29892m().iterator();
            while (it2.hasNext()) {
                m29167u(it2.next(), partial);
            }
        }

        /* renamed from: u */
        public static <T extends FieldDescriptorLite<T>> void m29167u(Map.Entry<T, Object> entry, boolean partial) {
            entry.setValue(m29165s(entry.getKey(), entry.getValue(), partial));
        }

        /* renamed from: a */
        public void m29168a(final T descriptor, final Object value) {
            List list;
            m29173f();
            if (!descriptor.isRepeated()) {
                throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
            }
            this.f37480d = this.f37480d || (value instanceof MessageLite.Builder);
            m29186x(descriptor, value);
            Object m29176j = m29176j(descriptor);
            if (m29176j == null) {
                list = new ArrayList();
                this.f37477a.put(descriptor, list);
            } else {
                list = (List) m29176j;
            }
            list.add(value);
        }

        /* renamed from: b */
        public FieldSet<T> m29169b() {
            return m29170c(false);
        }

        /* renamed from: c */
        public final FieldSet<T> m29170c(boolean partial) {
            if (this.f37477a.isEmpty()) {
                return FieldSet.m29136s();
            }
            this.f37479c = false;
            C6856b0<T, Object> c6856b0 = this.f37477a;
            if (this.f37480d) {
                c6856b0 = FieldSet.m29130l(c6856b0, false);
                m29166t(c6856b0, partial);
            }
            FieldSet<T> fieldSet = new FieldSet<>(c6856b0, null);
            fieldSet.f37474c = this.f37478b;
            return fieldSet;
        }

        /* renamed from: d */
        public FieldSet<T> m29171d() {
            return m29170c(true);
        }

        /* renamed from: e */
        public void m29172e(final T descriptor) {
            m29173f();
            this.f37477a.remove(descriptor);
            if (this.f37477a.isEmpty()) {
                this.f37478b = false;
            }
        }

        /* renamed from: f */
        public final void m29173f() {
            if (this.f37479c) {
                return;
            }
            this.f37477a = FieldSet.m29130l(this.f37477a, true);
            this.f37479c = true;
        }

        /* renamed from: h */
        public Map<T, Object> m29174h() {
            if (!this.f37478b) {
                boolean m29895p = this.f37477a.m29895p();
                C6856b0<T, Object> c6856b0 = this.f37477a;
                return m29895p ? c6856b0 : Collections.unmodifiableMap(c6856b0);
            }
            C6856b0 m29130l = FieldSet.m29130l(this.f37477a, false);
            if (this.f37477a.m29895p()) {
                m29130l.mo29896q();
            } else {
                m29166t(m29130l, true);
            }
            return m29130l;
        }

        /* renamed from: i */
        public Object m29175i(final T descriptor) {
            return m29165s(descriptor, m29176j(descriptor), true);
        }

        /* renamed from: j */
        public Object m29176j(final T descriptor) {
            Object obj = this.f37477a.get(descriptor);
            return obj instanceof LazyField ? ((LazyField) obj).getValue() : obj;
        }

        /* renamed from: k */
        public Object m29177k(final T descriptor, final int index) {
            if (this.f37480d) {
                m29173f();
            }
            return m29164r(m29178l(descriptor, index), true);
        }

        /* renamed from: l */
        public Object m29178l(final T descriptor, final int index) {
            if (!descriptor.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            Object m29176j = m29176j(descriptor);
            if (m29176j != null) {
                return ((List) m29176j).get(index);
            }
            throw new IndexOutOfBoundsException();
        }

        /* renamed from: m */
        public int m29179m(final T descriptor) {
            if (!descriptor.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedFieldCount() can only be called on repeated fields.");
            }
            Object m29176j = m29176j(descriptor);
            if (m29176j == null) {
                return 0;
            }
            return ((List) m29176j).size();
        }

        /* renamed from: n */
        public boolean m29180n(final T descriptor) {
            if (descriptor.isRepeated()) {
                throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
            }
            return this.f37477a.get(descriptor) != null;
        }

        /* renamed from: o */
        public boolean m29181o() {
            for (int i = 0; i < this.f37477a.m29890k(); i++) {
                if (!FieldSet.m29114F(this.f37477a.m29889j(i))) {
                    return false;
                }
            }
            Iterator<Map.Entry<T, Object>> it2 = this.f37477a.m29892m().iterator();
            while (it2.hasNext()) {
                if (!FieldSet.m29114F(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: p */
        public void m29182p(final FieldSet<T> other) {
            m29173f();
            for (int i = 0; i < other.f37472a.m29890k(); i++) {
                m29183q(other.f37472a.m29889j(i));
            }
            Iterator it2 = other.f37472a.m29892m().iterator();
            while (it2.hasNext()) {
                m29183q((Map.Entry) it2.next());
            }
        }

        /* renamed from: q */
        public final void m29183q(final Map.Entry<T, Object> entry) {
            T key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof LazyField) {
                value = ((LazyField) value).getValue();
            }
            if (key.isRepeated()) {
                List list = (List) m29176j(key);
                if (list == null) {
                    list = new ArrayList();
                    this.f37477a.put(key, list);
                }
                Iterator it2 = ((List) value).iterator();
                while (it2.hasNext()) {
                    list.add(FieldSet.m29132n(it2.next()));
                }
                return;
            }
            if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
                this.f37477a.put(key, FieldSet.m29132n(value));
                return;
            }
            Object m29176j = m29176j(key);
            if (m29176j == null) {
                this.f37477a.put(key, FieldSet.m29132n(value));
            } else if (m29176j instanceof MessageLite.Builder) {
                key.internalMergeFrom((MessageLite.Builder) m29176j, (MessageLite) value);
            } else {
                this.f37477a.put(key, key.internalMergeFrom(((MessageLite) m29176j).toBuilder(), (MessageLite) value).build());
            }
        }

        /* renamed from: v */
        public void m29184v(final T descriptor, Object value) {
            m29173f();
            if (!descriptor.isRepeated()) {
                m29186x(descriptor, value);
            } else {
                if (!(value instanceof List)) {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                ArrayList arrayList = new ArrayList((List) value);
                for (Object obj : arrayList) {
                    m29186x(descriptor, obj);
                    this.f37480d = this.f37480d || (obj instanceof MessageLite.Builder);
                }
                value = arrayList;
            }
            if (value instanceof LazyField) {
                this.f37478b = true;
            }
            this.f37480d = this.f37480d || (value instanceof MessageLite.Builder);
            this.f37477a.put(descriptor, value);
        }

        /* renamed from: w */
        public void m29185w(final T descriptor, final int index, final Object value) {
            m29173f();
            if (!descriptor.isRepeated()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            this.f37480d = this.f37480d || (value instanceof MessageLite.Builder);
            Object m29176j = m29176j(descriptor);
            if (m29176j == null) {
                throw new IndexOutOfBoundsException();
            }
            m29186x(descriptor, value);
            ((List) m29176j).set(index, value);
        }

        /* renamed from: x */
        public final void m29186x(final T descriptor, final Object value) {
            if (FieldSet.m29116H(descriptor.getLiteType(), value)) {
                return;
            }
            if (descriptor.getLiteType().getJavaType() != WireFormat.JavaType.MESSAGE || !(value instanceof MessageLite.Builder)) {
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(descriptor.getNumber()), descriptor.getLiteType().getJavaType(), value.getClass().getName()));
            }
        }

        public C6740b() {
            this(C6856b0.m29883r(16));
        }

        public C6740b(C6856b0<T, Object> fields) {
            this.f37477a = fields;
            this.f37479c = true;
        }
    }

    public /* synthetic */ FieldSet(C6856b0 c6856b0, C6739a c6739a) {
        this(c6856b0);
    }

    /* renamed from: A */
    public static int m29113A(final WireFormat.FieldType type, boolean isPacked) {
        if (isPacked) {
            return 2;
        }
        return type.getWireType();
    }

    /* renamed from: F */
    public static <T extends FieldDescriptorLite<T>> boolean m29114F(final Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        if (!key.isRepeated()) {
            return m29115G(entry.getValue());
        }
        Iterator it2 = ((List) entry.getValue()).iterator();
        while (it2.hasNext()) {
            if (!m29115G(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: G */
    public static boolean m29115G(Object value) {
        if (value instanceof MessageLiteOrBuilder) {
            return ((MessageLiteOrBuilder) value).isInitialized();
        }
        if (value instanceof LazyField) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: H */
    public static boolean m29116H(final WireFormat.FieldType type, final Object value) {
        Internal.m29343a(value);
        switch (C6739a.f37475a[type.getJavaType().ordinal()]) {
            case 1:
                return value instanceof Integer;
            case 2:
                return value instanceof Long;
            case 3:
                return value instanceof Float;
            case 4:
                return value instanceof Double;
            case 5:
                return value instanceof Boolean;
            case 6:
                return value instanceof String;
            case 7:
                return (value instanceof ByteString) || (value instanceof byte[]);
            case 8:
                return (value instanceof Integer) || (value instanceof Internal.EnumLite);
            case 9:
                return (value instanceof MessageLite) || (value instanceof LazyField);
            default:
                return false;
        }
    }

    /* renamed from: M */
    public static <T extends FieldDescriptorLite<T>> C6740b<T> m29117M() {
        return new C6740b<>((C6739a) null);
    }

    /* renamed from: N */
    public static <T extends FieldDescriptorLite<T>> FieldSet<T> m29118N() {
        return new FieldSet<>();
    }

    /* renamed from: O */
    public static Object m29119O(CodedInputStream input, final WireFormat.FieldType type, boolean checkUtf8) throws IOException {
        return checkUtf8 ? WireFormat.m29723b(input, type, WireFormat.Utf8Validation.STRICT) : WireFormat.m29723b(input, type, WireFormat.Utf8Validation.LOOSE);
    }

    /* renamed from: S */
    public static void m29120S(final CodedOutputStream output, final WireFormat.FieldType type, final int number, final Object value) throws IOException {
        if (type == WireFormat.FieldType.GROUP) {
            output.writeGroup(number, (MessageLite) value);
        } else {
            output.writeTag(number, m29113A(type, false));
            m29121T(output, type, value);
        }
    }

    /* renamed from: T */
    public static void m29121T(final CodedOutputStream output, final WireFormat.FieldType type, final Object value) throws IOException {
        switch (C6739a.f37476b[type.ordinal()]) {
            case 1:
                output.writeDoubleNoTag(((Double) value).doubleValue());
                return;
            case 2:
                output.writeFloatNoTag(((Float) value).floatValue());
                return;
            case 3:
                output.writeInt64NoTag(((Long) value).longValue());
                return;
            case 4:
                output.writeUInt64NoTag(((Long) value).longValue());
                return;
            case 5:
                output.writeInt32NoTag(((Integer) value).intValue());
                return;
            case 6:
                output.writeFixed64NoTag(((Long) value).longValue());
                return;
            case 7:
                output.writeFixed32NoTag(((Integer) value).intValue());
                return;
            case 8:
                output.writeBoolNoTag(((Boolean) value).booleanValue());
                return;
            case 9:
                output.writeGroupNoTag((MessageLite) value);
                return;
            case 10:
                output.writeMessageNoTag((MessageLite) value);
                return;
            case 11:
                if (value instanceof ByteString) {
                    output.writeBytesNoTag((ByteString) value);
                    return;
                } else {
                    output.writeStringNoTag((String) value);
                    return;
                }
            case 12:
                if (value instanceof ByteString) {
                    output.writeBytesNoTag((ByteString) value);
                    return;
                } else {
                    output.writeByteArrayNoTag((byte[]) value);
                    return;
                }
            case 13:
                output.writeUInt32NoTag(((Integer) value).intValue());
                return;
            case 14:
                output.writeSFixed32NoTag(((Integer) value).intValue());
                return;
            case 15:
                output.writeSFixed64NoTag(((Long) value).longValue());
                return;
            case 16:
                output.writeSInt32NoTag(((Integer) value).intValue());
                return;
            case 17:
                output.writeSInt64NoTag(((Long) value).longValue());
                return;
            case 18:
                if (value instanceof Internal.EnumLite) {
                    output.writeEnumNoTag(((Internal.EnumLite) value).getNumber());
                    return;
                } else {
                    output.writeEnumNoTag(((Integer) value).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: U */
    public static void m29122U(final FieldDescriptorLite<?> descriptor, final Object value, final CodedOutputStream output) throws IOException {
        WireFormat.FieldType liteType = descriptor.getLiteType();
        int number = descriptor.getNumber();
        if (!descriptor.isRepeated()) {
            if (value instanceof LazyField) {
                m29120S(output, liteType, number, ((LazyField) value).getValue());
                return;
            } else {
                m29120S(output, liteType, number, value);
                return;
            }
        }
        List list = (List) value;
        if (!descriptor.isPacked()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                m29120S(output, liteType, number, it2.next());
            }
        } else {
            if (list.isEmpty()) {
                return;
            }
            output.writeTag(number, 2);
            Iterator it3 = list.iterator();
            int i = 0;
            while (it3.hasNext()) {
                i += m29134p(liteType, it3.next());
            }
            output.writeUInt32NoTag(i);
            Iterator it4 = list.iterator();
            while (it4.hasNext()) {
                m29121T(output, liteType, it4.next());
            }
        }
    }

    /* renamed from: l */
    public static <T extends FieldDescriptorLite<T>> C6856b0<T, Object> m29130l(C6856b0<T, Object> fields, boolean copyList) {
        C6856b0<T, Object> m29883r = C6856b0.m29883r(16);
        for (int i = 0; i < fields.m29890k(); i++) {
            m29131m(m29883r, fields.m29889j(i), copyList);
        }
        Iterator<Map.Entry<T, Object>> it2 = fields.m29892m().iterator();
        while (it2.hasNext()) {
            m29131m(m29883r, it2.next(), copyList);
        }
        return m29883r;
    }

    /* renamed from: m */
    public static <T extends FieldDescriptorLite<T>> void m29131m(Map<T, Object> map, Map.Entry<T, Object> entry, boolean copyList) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            map.put(key, ((LazyField) value).getValue());
        } else if (copyList && (value instanceof List)) {
            map.put(key, new ArrayList((List) value));
        } else {
            map.put(key, value);
        }
    }

    /* renamed from: n */
    public static Object m29132n(Object value) {
        if (!(value instanceof byte[])) {
            return value;
        }
        byte[] bArr = (byte[]) value;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: o */
    public static int m29133o(final WireFormat.FieldType type, final int number, final Object value) {
        int computeTagSize = CodedOutputStream.computeTagSize(number);
        if (type == WireFormat.FieldType.GROUP) {
            computeTagSize *= 2;
        }
        return computeTagSize + m29134p(type, value);
    }

    /* renamed from: p */
    public static int m29134p(final WireFormat.FieldType type, final Object value) {
        switch (C6739a.f37476b[type.ordinal()]) {
            case 1:
                return CodedOutputStream.computeDoubleSizeNoTag(((Double) value).doubleValue());
            case 2:
                return CodedOutputStream.computeFloatSizeNoTag(((Float) value).floatValue());
            case 3:
                return CodedOutputStream.computeInt64SizeNoTag(((Long) value).longValue());
            case 4:
                return CodedOutputStream.computeUInt64SizeNoTag(((Long) value).longValue());
            case 5:
                return CodedOutputStream.computeInt32SizeNoTag(((Integer) value).intValue());
            case 6:
                return CodedOutputStream.computeFixed64SizeNoTag(((Long) value).longValue());
            case 7:
                return CodedOutputStream.computeFixed32SizeNoTag(((Integer) value).intValue());
            case 8:
                return CodedOutputStream.computeBoolSizeNoTag(((Boolean) value).booleanValue());
            case 9:
                return CodedOutputStream.computeGroupSizeNoTag((MessageLite) value);
            case 10:
                return value instanceof LazyField ? CodedOutputStream.computeLazyFieldSizeNoTag((LazyField) value) : CodedOutputStream.computeMessageSizeNoTag((MessageLite) value);
            case 11:
                return value instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) value) : CodedOutputStream.computeStringSizeNoTag((String) value);
            case 12:
                return value instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) value) : CodedOutputStream.computeByteArraySizeNoTag((byte[]) value);
            case 13:
                return CodedOutputStream.computeUInt32SizeNoTag(((Integer) value).intValue());
            case 14:
                return CodedOutputStream.computeSFixed32SizeNoTag(((Integer) value).intValue());
            case 15:
                return CodedOutputStream.computeSFixed64SizeNoTag(((Long) value).longValue());
            case 16:
                return CodedOutputStream.computeSInt32SizeNoTag(((Integer) value).intValue());
            case 17:
                return CodedOutputStream.computeSInt64SizeNoTag(((Long) value).longValue());
            case 18:
                return value instanceof Internal.EnumLite ? CodedOutputStream.computeEnumSizeNoTag(((Internal.EnumLite) value).getNumber()) : CodedOutputStream.computeEnumSizeNoTag(((Integer) value).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: q */
    public static int m29135q(final FieldDescriptorLite<?> descriptor, final Object value) {
        WireFormat.FieldType liteType = descriptor.getLiteType();
        int number = descriptor.getNumber();
        if (!descriptor.isRepeated()) {
            return m29133o(liteType, number, value);
        }
        List list = (List) value;
        int i = 0;
        if (!descriptor.isPacked()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                i += m29133o(liteType, number, it2.next());
            }
            return i;
        }
        if (list.isEmpty()) {
            return 0;
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            i += m29134p(liteType, it3.next());
        }
        return CodedOutputStream.computeTagSize(number) + i + CodedOutputStream.computeUInt32SizeNoTag(i);
    }

    /* renamed from: s */
    public static <T extends FieldDescriptorLite<T>> FieldSet<T> m29136s() {
        return f37471e;
    }

    /* renamed from: B */
    public boolean m29137B(final T descriptor) {
        if (descriptor.isRepeated()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.f37472a.get(descriptor) != null;
    }

    /* renamed from: C */
    public boolean m29138C() {
        return this.f37472a.isEmpty();
    }

    /* renamed from: D */
    public boolean m29139D() {
        return this.f37473b;
    }

    /* renamed from: E */
    public boolean m29140E() {
        for (int i = 0; i < this.f37472a.m29890k(); i++) {
            if (!m29114F(this.f37472a.m29889j(i))) {
                return false;
            }
        }
        Iterator<Map.Entry<T, Object>> it2 = this.f37472a.m29892m().iterator();
        while (it2.hasNext()) {
            if (!m29114F(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: I */
    public Iterator<Map.Entry<T, Object>> m29141I() {
        return this.f37474c ? new LazyField.C6787c(this.f37472a.entrySet().iterator()) : this.f37472a.entrySet().iterator();
    }

    /* renamed from: J */
    public void m29142J() {
        if (this.f37473b) {
            return;
        }
        for (int i = 0; i < this.f37472a.m29890k(); i++) {
            Map.Entry<T, Object> m29889j = this.f37472a.m29889j(i);
            if (m29889j.getValue() instanceof GeneratedMessageLite) {
                ((GeneratedMessageLite) m29889j.getValue()).makeImmutable();
            }
        }
        this.f37472a.mo29896q();
        this.f37473b = true;
    }

    /* renamed from: K */
    public void m29143K(final FieldSet<T> other) {
        for (int i = 0; i < other.f37472a.m29890k(); i++) {
            m29144L(other.f37472a.m29889j(i));
        }
        Iterator<Map.Entry<T, Object>> it2 = other.f37472a.m29892m().iterator();
        while (it2.hasNext()) {
            m29144L(it2.next());
        }
    }

    /* renamed from: L */
    public final void m29144L(final Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            value = ((LazyField) value).getValue();
        }
        if (key.isRepeated()) {
            Object m29157u = m29157u(key);
            if (m29157u == null) {
                m29157u = new ArrayList();
            }
            Iterator it2 = ((List) value).iterator();
            while (it2.hasNext()) {
                ((List) m29157u).add(m29132n(it2.next()));
            }
            this.f37472a.put(key, m29157u);
            return;
        }
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            this.f37472a.put(key, m29132n(value));
            return;
        }
        Object m29157u2 = m29157u(key);
        if (m29157u2 == null) {
            this.f37472a.put(key, m29132n(value));
        } else {
            this.f37472a.put(key, key.internalMergeFrom(((MessageLite) m29157u2).toBuilder(), (MessageLite) value).build());
        }
    }

    /* renamed from: P */
    public void m29145P(final T descriptor, Object value) {
        if (!descriptor.isRepeated()) {
            m29147R(descriptor, value);
        } else {
            if (!(value instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) value);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m29147R(descriptor, it2.next());
            }
            value = arrayList;
        }
        if (value instanceof LazyField) {
            this.f37474c = true;
        }
        this.f37472a.put(descriptor, value);
    }

    /* renamed from: Q */
    public void m29146Q(final T descriptor, final int index, final Object value) {
        if (!descriptor.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object m29157u = m29157u(descriptor);
        if (m29157u == null) {
            throw new IndexOutOfBoundsException();
        }
        m29147R(descriptor, value);
        ((List) m29157u).set(index, value);
    }

    /* renamed from: R */
    public final void m29147R(final T descriptor, final Object value) {
        if (!m29116H(descriptor.getLiteType(), value)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(descriptor.getNumber()), descriptor.getLiteType().getJavaType(), value.getClass().getName()));
        }
    }

    /* renamed from: V */
    public void m29148V(final CodedOutputStream output) throws IOException {
        for (int i = 0; i < this.f37472a.m29890k(); i++) {
            m29149W(this.f37472a.m29889j(i), output);
        }
        Iterator<Map.Entry<T, Object>> it2 = this.f37472a.m29892m().iterator();
        while (it2.hasNext()) {
            m29149W(it2.next(), output);
        }
    }

    /* renamed from: W */
    public final void m29149W(final Map.Entry<T, Object> entry, final CodedOutputStream output) throws IOException {
        T key = entry.getKey();
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated() || key.isPacked()) {
            m29122U(key, entry.getValue(), output);
            return;
        }
        Object value = entry.getValue();
        if (!(value instanceof LazyField)) {
            output.writeMessageSetExtension(entry.getKey().getNumber(), (MessageLite) value);
        } else {
            output.writeRawMessageSetExtension(entry.getKey().getNumber(), ((LazyField) value).toByteString());
        }
    }

    /* renamed from: X */
    public void m29150X(final CodedOutputStream output) throws IOException {
        for (int i = 0; i < this.f37472a.m29890k(); i++) {
            Map.Entry<T, Object> m29889j = this.f37472a.m29889j(i);
            m29122U(m29889j.getKey(), m29889j.getValue(), output);
        }
        for (Map.Entry<T, Object> entry : this.f37472a.m29892m()) {
            m29122U(entry.getKey(), entry.getValue(), output);
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o instanceof FieldSet) {
            return this.f37472a.equals(((FieldSet) o).f37472a);
        }
        return false;
    }

    /* renamed from: h */
    public void m29151h(final T descriptor, final Object value) {
        List list;
        if (!descriptor.isRepeated()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        m29147R(descriptor, value);
        Object m29157u = m29157u(descriptor);
        if (m29157u == null) {
            list = new ArrayList();
            this.f37472a.put(descriptor, list);
        } else {
            list = (List) m29157u;
        }
        list.add(value);
    }

    public int hashCode() {
        return this.f37472a.hashCode();
    }

    /* renamed from: i */
    public void m29152i() {
        this.f37472a.clear();
        this.f37474c = false;
    }

    /* renamed from: j */
    public void m29153j(final T descriptor) {
        this.f37472a.remove(descriptor);
        if (this.f37472a.isEmpty()) {
            this.f37474c = false;
        }
    }

    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public FieldSet<T> clone() {
        FieldSet<T> m29118N = m29118N();
        for (int i = 0; i < this.f37472a.m29890k(); i++) {
            Map.Entry<T, Object> m29889j = this.f37472a.m29889j(i);
            m29118N.m29145P(m29889j.getKey(), m29889j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f37472a.m29892m()) {
            m29118N.m29145P(entry.getKey(), entry.getValue());
        }
        m29118N.f37474c = this.f37474c;
        return m29118N;
    }

    /* renamed from: r */
    public Iterator<Map.Entry<T, Object>> m29155r() {
        return this.f37474c ? new LazyField.C6787c(this.f37472a.m29887h().iterator()) : this.f37472a.m29887h().iterator();
    }

    /* renamed from: t */
    public Map<T, Object> m29156t() {
        if (!this.f37474c) {
            boolean m29895p = this.f37472a.m29895p();
            C6856b0<T, Object> c6856b0 = this.f37472a;
            return m29895p ? c6856b0 : Collections.unmodifiableMap(c6856b0);
        }
        C6856b0 m29130l = m29130l(this.f37472a, false);
        if (this.f37472a.m29895p()) {
            m29130l.mo29896q();
        }
        return m29130l;
    }

    /* renamed from: u */
    public Object m29157u(final T descriptor) {
        Object obj = this.f37472a.get(descriptor);
        return obj instanceof LazyField ? ((LazyField) obj).getValue() : obj;
    }

    /* renamed from: v */
    public int m29158v() {
        int i = 0;
        for (int i2 = 0; i2 < this.f37472a.m29890k(); i2++) {
            i += m29159w(this.f37472a.m29889j(i2));
        }
        Iterator<Map.Entry<T, Object>> it2 = this.f37472a.m29892m().iterator();
        while (it2.hasNext()) {
            i += m29159w(it2.next());
        }
        return i;
    }

    /* renamed from: w */
    public final int m29159w(final Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated() || key.isPacked()) ? m29135q(key, value) : value instanceof LazyField ? CodedOutputStream.computeLazyFieldMessageSetExtensionSize(entry.getKey().getNumber(), (LazyField) value) : CodedOutputStream.computeMessageSetExtensionSize(entry.getKey().getNumber(), (MessageLite) value);
    }

    /* renamed from: x */
    public Object m29160x(final T descriptor, final int index) {
        if (!descriptor.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object m29157u = m29157u(descriptor);
        if (m29157u != null) {
            return ((List) m29157u).get(index);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: y */
    public int m29161y(final T descriptor) {
        if (!descriptor.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object m29157u = m29157u(descriptor);
        if (m29157u == null) {
            return 0;
        }
        return ((List) m29157u).size();
    }

    /* renamed from: z */
    public int m29162z() {
        int i = 0;
        for (int i2 = 0; i2 < this.f37472a.m29890k(); i2++) {
            Map.Entry<T, Object> m29889j = this.f37472a.m29889j(i2);
            i += m29135q(m29889j.getKey(), m29889j.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f37472a.m29892m()) {
            i += m29135q(entry.getKey(), entry.getValue());
        }
        return i;
    }

    public FieldSet() {
        this.f37472a = C6856b0.m29883r(16);
    }

    public FieldSet(final boolean dummy) {
        this(C6856b0.m29883r(0));
        m29142J();
    }

    public FieldSet(C6856b0<T, Object> fields) {
        this.f37472a = fields;
        m29142J();
    }
}
