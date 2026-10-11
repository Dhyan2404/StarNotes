package com.google.protobuf;

import com.google.protobuf.FieldSet;
import com.google.protobuf.Internal;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.htd;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

@htd
/* renamed from: com.google.protobuf.a0 */
/* loaded from: classes6.dex */
public final class C6854a0 {

    /* renamed from: a */
    public static final Class<?> f37993a = m29759D();

    /* renamed from: b */
    public static final AbstractC6858c0<?, ?> f37994b = m29763F();

    /* renamed from: c */
    public static final AbstractC6858c0<?, ?> f37995c = new C6866d0();

    /* renamed from: d */
    public static final int f37996d = 40;

    /* renamed from: A */
    public static int m29753A(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C6879p) {
            C6879p c6879p = (C6879p) list;
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeUInt64SizeNoTag(c6879p.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeUInt64SizeNoTag(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: A0 */
    public static void m29754A0(int fieldNumber, List<String> value, Writer writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29749w(fieldNumber, value);
    }

    @bnd
    /* renamed from: B */
    public static <UT, UB> UB m29755B(Object obj, int i, List<Integer> list, Internal.EnumLiteMap<?> enumLiteMap, UB ub, AbstractC6858c0<UT, UB> abstractC6858c0) {
        if (enumLiteMap == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (enumLiteMap.findValueByNumber(intValue) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) m29772O(obj, i, intValue, ub, abstractC6858c0);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it2 = list.iterator();
            while (it2.hasNext()) {
                int intValue2 = it2.next().intValue();
                if (enumLiteMap.findValueByNumber(intValue2) == null) {
                    ub = (UB) m29772O(obj, i, intValue2, ub, abstractC6858c0);
                    it2.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: B0 */
    public static void m29756B0(int fieldNumber, int value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeUInt32(fieldNumber, value);
        }
    }

    @bnd
    /* renamed from: C */
    public static <UT, UB> UB m29757C(Object obj, int i, List<Integer> list, Internal.EnumVerifier enumVerifier, UB ub, AbstractC6858c0<UT, UB> abstractC6858c0) {
        if (enumVerifier == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (enumVerifier.isInRange(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) m29772O(obj, i, intValue, ub, abstractC6858c0);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it2 = list.iterator();
            while (it2.hasNext()) {
                int intValue2 = it2.next().intValue();
                if (!enumVerifier.isInRange(intValue2)) {
                    ub = (UB) m29772O(obj, i, intValue2, ub, abstractC6858c0);
                    it2.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: C0 */
    public static void m29758C0(int fieldNumber, List<Integer> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29742p(fieldNumber, value, packed);
    }

    /* renamed from: D */
    public static Class<?> m29759D() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: D0 */
    public static void m29760D0(int fieldNumber, long value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeUInt64(fieldNumber, value);
        }
    }

    /* renamed from: E */
    public static Object m29761E(Class<?> clazz, String name) {
        try {
            java.lang.reflect.Field[] declaredFields = Class.forName(clazz.getName() + "$" + m29773P(name, true) + "DefaultEntryHolder").getDeclaredFields();
            if (declaredFields.length == 1) {
                return dun.m53728S(declaredFields[0]);
            }
            throw new IllegalStateException("Unable to look up map field default entry holder class for " + name + CloudStorageConstants.OPERATION_IN + clazz.getName());
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    /* renamed from: E0 */
    public static void m29762E0(int fieldNumber, List<Long> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29730d(fieldNumber, value, packed);
    }

    /* renamed from: F */
    public static AbstractC6858c0<?, ?> m29763F() {
        try {
            Class<?> m29764G = m29764G();
            if (m29764G == null) {
                return null;
            }
            return (AbstractC6858c0) m29764G.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: G */
    public static Class<?> m29764G() {
        return C6868e0.class;
    }

    /* renamed from: H */
    public static <T, FT extends FieldSet.FieldDescriptorLite<FT>> void m29765H(AbstractC6873j<FT> schema, T message, T other) {
        FieldSet<FT> mo30263c = schema.mo30263c(other);
        if (mo30263c.m29138C()) {
            return;
        }
        schema.mo30264d(message).m29143K(mo30263c);
    }

    /* renamed from: I */
    public static <T> void m29766I(InterfaceC6880q mapFieldSchema, T message, T o, long offset) {
        dun.m53775t0(message, offset, mapFieldSchema.mo30308a(dun.m53726Q(message, offset), dun.m53726Q(o, offset)));
    }

    /* renamed from: J */
    public static <T, UT, UB> void m29767J(AbstractC6858c0<UT, UB> schema, T message, T other) {
        schema.mo29995p(message, schema.mo29990k(schema.mo29986g(message), schema.mo29986g(other)));
    }

    /* renamed from: K */
    public static void m29768K(Class<?> messageType) {
        Class<?> cls;
        if (!GeneratedMessageLite.class.isAssignableFrom(messageType) && (cls = f37993a) != null && !cls.isAssignableFrom(messageType)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
    }

    /* renamed from: L */
    public static boolean m29769L(Object a, Object b) {
        return a == b || (a != null && a.equals(b));
    }

    /* renamed from: M */
    public static boolean m29770M(int lo, int hi, int numFields) {
        if (hi < 40) {
            return true;
        }
        long j = (hi - lo) + 1;
        long j2 = numFields;
        return j + 9 <= ((2 * j2) + 3) + ((j2 + 3) * 3);
    }

    /* renamed from: N */
    public static boolean m29771N(FieldInfo[] fields) {
        if (fields.length == 0) {
            return false;
        }
        return m29770M(fields[0].m29099o(), fields[fields.length - 1].m29099o(), fields.length);
    }

    @bnd
    /* renamed from: O */
    public static <UT, UB> UB m29772O(Object obj, int i, int i2, UB ub, AbstractC6858c0<UT, UB> abstractC6858c0) {
        if (ub == null) {
            ub = abstractC6858c0.mo29985f(obj);
        }
        abstractC6858c0.mo29984e(ub, i, i2);
        return ub;
    }

    /* renamed from: P */
    public static String m29773P(String name, boolean capNext) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < name.length(); i++) {
            char charAt = name.charAt(i);
            if ('a' > charAt || charAt > 'z') {
                if ('A' > charAt || charAt > 'Z') {
                    if ('0' <= charAt && charAt <= '9') {
                        sb.append(charAt);
                    }
                    capNext = true;
                } else if (i != 0 || capNext) {
                    sb.append(charAt);
                } else {
                    sb.append((char) (charAt + ' '));
                }
            } else if (capNext) {
                sb.append((char) (charAt - ' '));
            } else {
                sb.append(charAt);
            }
            capNext = false;
        }
        return sb.toString();
    }

    /* renamed from: Q */
    public static AbstractC6858c0<?, ?> m29774Q() {
        return f37994b;
    }

    /* renamed from: R */
    public static AbstractC6858c0<?, ?> m29775R() {
        return f37995c;
    }

    /* renamed from: S */
    public static void m29776S(int fieldNumber, boolean value, Writer writer) throws IOException {
        if (value) {
            writer.writeBool(fieldNumber, true);
        }
    }

    /* renamed from: T */
    public static void m29777T(int fieldNumber, List<Boolean> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29724A(fieldNumber, value, packed);
    }

    /* renamed from: U */
    public static void m29778U(int fieldNumber, ByteString value, Writer writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.writeBytes(fieldNumber, value);
    }

    /* renamed from: V */
    public static void m29779V(int fieldNumber, List<ByteString> value, Writer writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29732f(fieldNumber, value);
    }

    /* renamed from: W */
    public static void m29780W(int fieldNumber, double value, Writer writer) throws IOException {
        if (Double.doubleToRawLongBits(value) != 0) {
            writer.writeDouble(fieldNumber, value);
        }
    }

    /* renamed from: X */
    public static void m29781X(int fieldNumber, List<Double> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29748v(fieldNumber, value, packed);
    }

    /* renamed from: Y */
    public static void m29782Y(int fieldNumber, int value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeEnum(fieldNumber, value);
        }
    }

    /* renamed from: Z */
    public static void m29783Z(int fieldNumber, List<Integer> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29750x(fieldNumber, value, packed);
    }

    /* renamed from: a */
    public static int m29784a(int fieldNumber, List<?> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(size) : size * CodedOutputStream.computeBoolSize(fieldNumber, true);
    }

    /* renamed from: a0 */
    public static void m29785a0(int fieldNumber, int value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeFixed32(fieldNumber, value);
        }
    }

    /* renamed from: b */
    public static int m29786b(List<?> list) {
        return list.size();
    }

    /* renamed from: b0 */
    public static void m29787b0(int fieldNumber, List<Integer> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29729c(fieldNumber, value, packed);
    }

    /* renamed from: c */
    public static int m29788c(int fieldNumber, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = size * CodedOutputStream.computeTagSize(fieldNumber);
        for (int i = 0; i < list.size(); i++) {
            computeTagSize += CodedOutputStream.computeBytesSizeNoTag(list.get(i));
        }
        return computeTagSize;
    }

    /* renamed from: c0 */
    public static void m29789c0(int fieldNumber, long value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeFixed64(fieldNumber, value);
        }
    }

    /* renamed from: d */
    public static int m29790d(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m29792e = m29792e(list);
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29792e) : m29792e + (size * CodedOutputStream.computeTagSize(fieldNumber));
    }

    /* renamed from: d0 */
    public static void m29791d0(int fieldNumber, List<Long> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29745s(fieldNumber, value, packed);
    }

    /* renamed from: e */
    public static int m29792e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C6877n) {
            C6877n c6877n = (C6877n) list;
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeEnumSizeNoTag(c6877n.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeEnumSizeNoTag(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: e0 */
    public static void m29793e0(int fieldNumber, float value, Writer writer) throws IOException {
        if (Float.floatToRawIntBits(value) != 0) {
            writer.writeFloat(fieldNumber, value);
        }
    }

    /* renamed from: f */
    public static int m29794f(int fieldNumber, List<?> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(size * 4) : size * CodedOutputStream.computeFixed32Size(fieldNumber, 0);
    }

    /* renamed from: f0 */
    public static void m29795f0(int fieldNumber, List<Float> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29740n(fieldNumber, value, packed);
    }

    /* renamed from: g */
    public static int m29796g(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: g0 */
    public static void m29797g0(int fieldNumber, List<?> value, Writer writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29727a(fieldNumber, value);
    }

    /* renamed from: h */
    public static int m29798h(int fieldNumber, List<?> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(size * 8) : size * CodedOutputStream.computeFixed64Size(fieldNumber, 0L);
    }

    /* renamed from: h0 */
    public static void m29799h0(int fieldNumber, List<?> value, Writer writer, InterfaceC6889z schema) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29736j(fieldNumber, value, schema);
    }

    /* renamed from: i */
    public static int m29800i(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: i0 */
    public static void m29801i0(int fieldNumber, int value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeInt32(fieldNumber, value);
        }
    }

    /* renamed from: j */
    public static int m29802j(int fieldNumber, List<MessageLite> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream.computeGroupSize(fieldNumber, list.get(i2));
        }
        return i;
    }

    /* renamed from: j0 */
    public static void m29803j0(int fieldNumber, List<Integer> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29728b(fieldNumber, value, packed);
    }

    /* renamed from: k */
    public static int m29804k(int fieldNumber, List<MessageLite> list, InterfaceC6889z schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream.m28682E(fieldNumber, list.get(i2), schema);
        }
        return i;
    }

    /* renamed from: k0 */
    public static void m29805k0(int fieldNumber, long value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeInt64(fieldNumber, value);
        }
    }

    /* renamed from: l */
    public static int m29806l(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m29808m = m29808m(list);
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29808m) : m29808m + (size * CodedOutputStream.computeTagSize(fieldNumber));
    }

    /* renamed from: l0 */
    public static void m29807l0(int fieldNumber, List<Long> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29726C(fieldNumber, value, packed);
    }

    /* renamed from: m */
    public static int m29808m(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C6877n) {
            C6877n c6877n = (C6877n) list;
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeInt32SizeNoTag(c6877n.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeInt32SizeNoTag(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: m0 */
    public static void m29809m0(int fieldNumber, List<?> value, Writer writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        Iterator<?> it2 = value.iterator();
        while (it2.hasNext()) {
            ((LazyFieldLite) it2.next()).m29356c(writer, fieldNumber);
        }
    }

    /* renamed from: n */
    public static int m29810n(int fieldNumber, List<Long> list, boolean packed) {
        if (list.size() == 0) {
            return 0;
        }
        int m29812o = m29812o(list);
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29812o) : m29812o + (list.size() * CodedOutputStream.computeTagSize(fieldNumber));
    }

    /* renamed from: n0 */
    public static void m29811n0(int fieldNumber, Object value, Writer writer) throws IOException {
        if (value != null) {
            writer.mo29752z(fieldNumber, value);
        }
    }

    /* renamed from: o */
    public static int m29812o(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C6879p) {
            C6879p c6879p = (C6879p) list;
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeInt64SizeNoTag(c6879p.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeInt64SizeNoTag(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: o0 */
    public static void m29813o0(int fieldNumber, List<?> value, Writer writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29743q(fieldNumber, value);
    }

    /* renamed from: p */
    public static int m29814p(int fieldNumber, Object value, InterfaceC6889z schema) {
        return value instanceof LazyFieldLite ? CodedOutputStream.computeLazyFieldSize(fieldNumber, (LazyFieldLite) value) : CodedOutputStream.m28685H(fieldNumber, (MessageLite) value, schema);
    }

    /* renamed from: p0 */
    public static void m29815p0(int fieldNumber, List<?> value, Writer writer, InterfaceC6889z schema) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29733g(fieldNumber, value, schema);
    }

    /* renamed from: q */
    public static int m29816q(int fieldNumber, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream.computeTagSize(fieldNumber) * size;
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            computeTagSize += obj instanceof LazyFieldLite ? CodedOutputStream.computeLazyFieldSizeNoTag((LazyFieldLite) obj) : CodedOutputStream.computeMessageSizeNoTag((MessageLite) obj);
        }
        return computeTagSize;
    }

    /* renamed from: q0 */
    public static void m29817q0(int fieldNumber, int value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeSFixed32(fieldNumber, value);
        }
    }

    /* renamed from: r */
    public static int m29818r(int fieldNumber, List<?> list, InterfaceC6889z schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream.computeTagSize(fieldNumber) * size;
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            computeTagSize += obj instanceof LazyFieldLite ? CodedOutputStream.computeLazyFieldSizeNoTag((LazyFieldLite) obj) : CodedOutputStream.m28686I((MessageLite) obj, schema);
        }
        return computeTagSize;
    }

    /* renamed from: r0 */
    public static void m29819r0(int fieldNumber, List<Integer> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29739m(fieldNumber, value, packed);
    }

    /* renamed from: s */
    public static int m29820s(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m29822t = m29822t(list);
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29822t) : m29822t + (size * CodedOutputStream.computeTagSize(fieldNumber));
    }

    /* renamed from: s0 */
    public static void m29821s0(int fieldNumber, long value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeSFixed64(fieldNumber, value);
        }
    }

    /* renamed from: t */
    public static int m29822t(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C6877n) {
            C6877n c6877n = (C6877n) list;
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeSInt32SizeNoTag(c6877n.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeSInt32SizeNoTag(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: t0 */
    public static void m29823t0(int fieldNumber, List<Long> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29751y(fieldNumber, value, packed);
    }

    /* renamed from: u */
    public static int m29824u(int fieldNumber, List<Long> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m29826v = m29826v(list);
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29826v) : m29826v + (size * CodedOutputStream.computeTagSize(fieldNumber));
    }

    /* renamed from: u0 */
    public static void m29825u0(int fieldNumber, int value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeSInt32(fieldNumber, value);
        }
    }

    /* renamed from: v */
    public static int m29826v(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C6879p) {
            C6879p c6879p = (C6879p) list;
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeSInt64SizeNoTag(c6879p.getLong(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeSInt64SizeNoTag(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: v0 */
    public static void m29827v0(int fieldNumber, List<Integer> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29747u(fieldNumber, value, packed);
    }

    /* renamed from: w */
    public static int m29828w(int fieldNumber, List<?> list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream.computeTagSize(fieldNumber) * size;
        if (list instanceof LazyStringList) {
            LazyStringList lazyStringList = (LazyStringList) list;
            while (i < size) {
                Object raw = lazyStringList.getRaw(i);
                computeTagSize += raw instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) raw) : CodedOutputStream.computeStringSizeNoTag((String) raw);
                i++;
            }
        } else {
            while (i < size) {
                Object obj = list.get(i);
                computeTagSize += obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeStringSizeNoTag((String) obj);
                i++;
            }
        }
        return computeTagSize;
    }

    /* renamed from: w0 */
    public static void m29829w0(int fieldNumber, long value, Writer writer) throws IOException {
        if (value != 0) {
            writer.writeSInt64(fieldNumber, value);
        }
    }

    /* renamed from: x */
    public static int m29830x(int fieldNumber, List<Integer> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m29832y = m29832y(list);
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29832y) : m29832y + (size * CodedOutputStream.computeTagSize(fieldNumber));
    }

    /* renamed from: x0 */
    public static void m29831x0(int fieldNumber, List<Long> value, Writer writer, boolean packed) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.mo29735i(fieldNumber, value, packed);
    }

    /* renamed from: y */
    public static int m29832y(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C6877n) {
            C6877n c6877n = (C6877n) list;
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeUInt32SizeNoTag(c6877n.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += CodedOutputStream.computeUInt32SizeNoTag(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: y0 */
    public static void m29833y0(int fieldNumber, Object value, Writer writer) throws IOException {
        if (value instanceof String) {
            m29835z0(fieldNumber, (String) value, writer);
        } else {
            m29778U(fieldNumber, (ByteString) value, writer);
        }
    }

    /* renamed from: z */
    public static int m29834z(int fieldNumber, List<Long> list, boolean packed) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m29753A = m29753A(list);
        return packed ? CodedOutputStream.computeTagSize(fieldNumber) + CodedOutputStream.m28684G(m29753A) : m29753A + (size * CodedOutputStream.computeTagSize(fieldNumber));
    }

    /* renamed from: z0 */
    public static void m29835z0(int fieldNumber, String value, Writer writer) throws IOException {
        if (value == null || value.isEmpty()) {
            return;
        }
        writer.writeString(fieldNumber, value);
    }
}
