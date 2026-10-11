package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.StructuralMessageInfo;
import com.sunia.HTREnginev2.kgk;
import com.sunia.HTREnginev2.xmj;
import com.sunia.HTREnginev2.ymj;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.google.protobuf.h */
/* loaded from: classes6.dex */
public final class C6871h implements ymj {

    /* renamed from: a */
    public static final String f38109a = "getDefaultInstance";

    /* renamed from: b */
    public static final C6871h f38110b = new C6871h();

    /* renamed from: c */
    public static final Set<String> f38111c = new HashSet(Arrays.asList("Class", "DefaultInstanceForType", "ParserForType", "SerializedSize", "AllFields", "DescriptorForType", "InitializationErrorString", "UnknownFields", "CachedSize"));

    /* renamed from: d */
    public static d f38112d = new d();

    /* renamed from: com.google.protobuf.h$a */
    /* loaded from: classes6.dex */
    public class a implements Internal.EnumVerifier {

        /* renamed from: a */
        public final /* synthetic */ Descriptors.FieldDescriptor f38113a;

        public a(final Descriptors.FieldDescriptor val$fd) {
            this.f38113a = val$fd;
        }

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int number) {
            return this.f38113a.getEnumType().findValueByNumber(number) != null;
        }
    }

    /* renamed from: com.google.protobuf.h$b */
    /* loaded from: classes6.dex */
    public class b implements Internal.EnumVerifier {

        /* renamed from: a */
        public final /* synthetic */ Descriptors.FieldDescriptor f38114a;

        public b(final Descriptors.FieldDescriptor val$valueField) {
            this.f38114a = val$valueField;
        }

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int number) {
            return this.f38114a.getEnumType().findValueByNumber(number) != null;
        }
    }

    /* renamed from: com.google.protobuf.h$c */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38115a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f38116b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f38117c;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f38117c = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f38117c[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[JavaType.values().length];
            f38116b = iArr2;
            try {
                iArr2[JavaType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f38116b[JavaType.BYTE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f38116b[JavaType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f38116b[JavaType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f38116b[JavaType.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f38116b[JavaType.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f38116b[JavaType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f38116b[JavaType.STRING.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f38116b[JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr3 = new int[Descriptors.FileDescriptor.Syntax.values().length];
            f38115a = iArr3;
            try {
                iArr3[Descriptors.FileDescriptor.Syntax.PROTO2.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f38115a[Descriptors.FileDescriptor.Syntax.PROTO3.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    /* renamed from: e */
    public static java.lang.reflect.Field m30224e(Class<?> messageType, int index) {
        return m30231l(messageType, "bitField" + index + "_");
    }

    /* renamed from: f */
    public static FieldInfo m30225f(Class<?> messageType, Descriptors.FieldDescriptor fd, e oneofState, boolean enforceUtf8, Internal.EnumVerifier enumVerifier) {
        kgk m30251a = oneofState.m30251a(messageType, fd.getContainingOneof());
        FieldType m30235p = m30235p(fd);
        return FieldInfo.m29090h(fd.getNumber(), m30235p, m30251a, m30237r(messageType, fd, m30235p), enforceUtf8, enumVerifier);
    }

    /* renamed from: g */
    public static java.lang.reflect.Field m30226g(Class<?> messageType, Descriptors.FieldDescriptor fd) {
        return m30231l(messageType, m30232m(fd));
    }

    /* renamed from: h */
    public static xmj m30227h(Class<?> messageType, Descriptors.Descriptor messageDescriptor) {
        FieldInfo m29093k;
        List<Descriptors.FieldDescriptor> fields = messageDescriptor.getFields();
        StructuralMessageInfo.Builder m29492f = StructuralMessageInfo.m29492f(fields.size());
        m29492f.withDefaultInstance(m30233n(messageType));
        m29492f.withSyntax(m30228i(messageDescriptor.getFile().getSyntax()));
        m29492f.withMessageSetWireFormat(messageDescriptor.getOptions().getMessageSetWireFormat());
        a aVar = null;
        e eVar = new e(aVar);
        java.lang.reflect.Field field = null;
        int i = 1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < fields.size()) {
            Descriptors.FieldDescriptor fieldDescriptor = fields.get(i2);
            boolean needsUtf8Check = fieldDescriptor.needsUtf8Check();
            Descriptors.FieldDescriptor.JavaType javaType = fieldDescriptor.getJavaType();
            Descriptors.FieldDescriptor.JavaType javaType2 = Descriptors.FieldDescriptor.JavaType.ENUM;
            Internal.EnumVerifier aVar2 = (javaType == javaType2 && fieldDescriptor.legacyEnumFieldTreatedAsClosed()) ? new a(fieldDescriptor) : aVar;
            if (fieldDescriptor.getRealContainingOneof() != null) {
                m29492f.withField(m30225f(messageType, fieldDescriptor, eVar, needsUtf8Check, aVar2));
            } else {
                java.lang.reflect.Field m30230k = m30230k(messageType, fieldDescriptor);
                int number = fieldDescriptor.getNumber();
                FieldType m30235p = m30235p(fieldDescriptor);
                if (fieldDescriptor.hasPresence()) {
                    if (field == null) {
                        field = m30224e(messageType, i3);
                    }
                    m29492f.withField(fieldDescriptor.isRequired() ? FieldInfo.m29088f(m30230k, number, m30235p, field, i, needsUtf8Check, aVar2) : FieldInfo.m29085c(m30230k, number, m30235p, field, i, needsUtf8Check, aVar2));
                    i <<= 1;
                    if (i == 0) {
                        i3++;
                        i = 1;
                        field = null;
                    }
                } else {
                    if (fieldDescriptor.isMapField()) {
                        Descriptors.FieldDescriptor findFieldByNumber = fieldDescriptor.getMessageType().findFieldByNumber(2);
                        if (findFieldByNumber.getJavaType() == javaType2 && findFieldByNumber.legacyEnumFieldTreatedAsClosed()) {
                            aVar2 = new b(findFieldByNumber);
                        }
                        m29093k = FieldInfo.m29089g(m30230k, number, C6854a0.m29761E(messageType, fieldDescriptor.getName()), aVar2);
                    } else {
                        m29093k = (fieldDescriptor.isRepeated() && fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) ? FieldInfo.m29093k(m30230k, number, m30235p, m30239t(messageType, fieldDescriptor)) : fieldDescriptor.isPacked() ? aVar2 != null ? FieldInfo.m29092j(m30230k, number, m30235p, aVar2, m30226g(messageType, fieldDescriptor)) : FieldInfo.m29091i(m30230k, number, m30235p, m30226g(messageType, fieldDescriptor)) : aVar2 != null ? FieldInfo.m29087e(m30230k, number, m30235p, aVar2) : FieldInfo.m29086d(m30230k, number, m30235p, needsUtf8Check);
                    }
                    m29492f.withField(m29093k);
                }
            }
            i2++;
            aVar = null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < fields.size(); i4++) {
            Descriptors.FieldDescriptor fieldDescriptor2 = fields.get(i4);
            if (fieldDescriptor2.isRequired() || (fieldDescriptor2.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE && m30241v(fieldDescriptor2.getMessageType()))) {
                arrayList.add(Integer.valueOf(fieldDescriptor2.getNumber()));
            }
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
        }
        if (size > 0) {
            m29492f.withCheckInitialized(iArr);
        }
        return m29492f.build();
    }

    /* renamed from: i */
    public static ProtoSyntax m30228i(Descriptors.FileDescriptor.Syntax syntax) {
        int i = c.f38115a[syntax.ordinal()];
        if (i == 1) {
            return ProtoSyntax.PROTO2;
        }
        if (i == 2) {
            return ProtoSyntax.PROTO3;
        }
        throw new IllegalArgumentException("Unsupported syntax: " + syntax);
    }

    /* renamed from: j */
    public static Descriptors.Descriptor m30229j(Class<?> messageType) {
        return m30233n(messageType).getDescriptorForType();
    }

    /* renamed from: k */
    public static java.lang.reflect.Field m30230k(Class<?> messageType, Descriptors.FieldDescriptor fd) {
        return m30231l(messageType, m30234o(fd));
    }

    /* renamed from: l */
    public static java.lang.reflect.Field m30231l(Class<?> messageType, String fieldName) {
        try {
            return messageType.getDeclaredField(fieldName);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unable to find field " + fieldName + " in message class " + messageType.getName());
        }
    }

    /* renamed from: m */
    public static String m30232m(Descriptors.FieldDescriptor fd) {
        return m30243x(fd.getName()) + "MemoizedSerializedSize";
    }

    /* renamed from: n */
    public static Message m30233n(Class<?> messageType) {
        try {
            return (Message) messageType.getDeclaredMethod(f38109a, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e2) {
            throw new IllegalArgumentException("Unable to get default instance for message class " + messageType.getName(), e2);
        }
    }

    /* renamed from: o */
    public static String m30234o(Descriptors.FieldDescriptor fd) {
        String name = fd.getType() == Descriptors.FieldDescriptor.Type.GROUP ? fd.getMessageType().getName() : fd.getName();
        return m30243x(name) + (f38111c.contains(m30244y(name)) ? "__" : "_");
    }

    /* renamed from: p */
    public static FieldType m30235p(Descriptors.FieldDescriptor fd) {
        switch (c.f38117c[fd.getType().ordinal()]) {
            case 1:
                return !fd.isRepeated() ? FieldType.BOOL : fd.isPacked() ? FieldType.BOOL_LIST_PACKED : FieldType.BOOL_LIST;
            case 2:
                return fd.isRepeated() ? FieldType.BYTES_LIST : FieldType.BYTES;
            case 3:
                return !fd.isRepeated() ? FieldType.DOUBLE : fd.isPacked() ? FieldType.DOUBLE_LIST_PACKED : FieldType.DOUBLE_LIST;
            case 4:
                return !fd.isRepeated() ? FieldType.ENUM : fd.isPacked() ? FieldType.ENUM_LIST_PACKED : FieldType.ENUM_LIST;
            case 5:
                return !fd.isRepeated() ? FieldType.FIXED32 : fd.isPacked() ? FieldType.FIXED32_LIST_PACKED : FieldType.FIXED32_LIST;
            case 6:
                return !fd.isRepeated() ? FieldType.FIXED64 : fd.isPacked() ? FieldType.FIXED64_LIST_PACKED : FieldType.FIXED64_LIST;
            case 7:
                return !fd.isRepeated() ? FieldType.FLOAT : fd.isPacked() ? FieldType.FLOAT_LIST_PACKED : FieldType.FLOAT_LIST;
            case 8:
                return fd.isRepeated() ? FieldType.GROUP_LIST : FieldType.GROUP;
            case 9:
                return !fd.isRepeated() ? FieldType.INT32 : fd.isPacked() ? FieldType.INT32_LIST_PACKED : FieldType.INT32_LIST;
            case 10:
                return !fd.isRepeated() ? FieldType.INT64 : fd.isPacked() ? FieldType.INT64_LIST_PACKED : FieldType.INT64_LIST;
            case 11:
                return fd.isMapField() ? FieldType.MAP : fd.isRepeated() ? FieldType.MESSAGE_LIST : FieldType.MESSAGE;
            case 12:
                return !fd.isRepeated() ? FieldType.SFIXED32 : fd.isPacked() ? FieldType.SFIXED32_LIST_PACKED : FieldType.SFIXED32_LIST;
            case 13:
                return !fd.isRepeated() ? FieldType.SFIXED64 : fd.isPacked() ? FieldType.SFIXED64_LIST_PACKED : FieldType.SFIXED64_LIST;
            case 14:
                return !fd.isRepeated() ? FieldType.SINT32 : fd.isPacked() ? FieldType.SINT32_LIST_PACKED : FieldType.SINT32_LIST;
            case 15:
                return !fd.isRepeated() ? FieldType.SINT64 : fd.isPacked() ? FieldType.SINT64_LIST_PACKED : FieldType.SINT64_LIST;
            case 16:
                return fd.isRepeated() ? FieldType.STRING_LIST : FieldType.STRING;
            case 17:
                return !fd.isRepeated() ? FieldType.UINT32 : fd.isPacked() ? FieldType.UINT32_LIST_PACKED : FieldType.UINT32_LIST;
            case 18:
                return !fd.isRepeated() ? FieldType.UINT64 : fd.isPacked() ? FieldType.UINT64_LIST_PACKED : FieldType.UINT64_LIST;
            default:
                throw new IllegalArgumentException("Unsupported field type: " + fd.getType());
        }
    }

    /* renamed from: q */
    public static C6871h m30236q() {
        return f38110b;
    }

    /* renamed from: r */
    public static Class<?> m30237r(Class<?> messageType, Descriptors.FieldDescriptor fd, FieldType type) {
        switch (c.f38116b[type.getJavaType().ordinal()]) {
            case 1:
                return Boolean.class;
            case 2:
                return ByteString.class;
            case 3:
                return Double.class;
            case 4:
                return Float.class;
            case 5:
            case 6:
                return Integer.class;
            case 7:
                return Long.class;
            case 8:
                return String.class;
            case 9:
                return m30238s(messageType, fd);
            default:
                throw new IllegalArgumentException("Invalid type for oneof: " + type);
        }
    }

    /* renamed from: s */
    public static Class<?> m30238s(Class<?> messageType, Descriptors.FieldDescriptor fd) {
        try {
            return messageType.getDeclaredMethod(m30240u(fd.getType() == Descriptors.FieldDescriptor.Type.GROUP ? fd.getMessageType().getName() : fd.getName()), new Class[0]).getReturnType();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: t */
    public static Class<?> m30239t(Class<?> messageType, Descriptors.FieldDescriptor fd) {
        try {
            return messageType.getDeclaredMethod(m30240u(fd.getType() == Descriptors.FieldDescriptor.Type.GROUP ? fd.getMessageType().getName() : fd.getName()), Integer.TYPE).getReturnType();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: u */
    public static String m30240u(String snakeCase) {
        String m30243x = m30243x(snakeCase);
        return "get" + Character.toUpperCase(m30243x.charAt(0)) + m30243x.substring(1, m30243x.length());
    }

    /* renamed from: v */
    public static boolean m30241v(Descriptors.Descriptor descriptor) {
        return f38112d.m30249c(descriptor);
    }

    /* renamed from: w */
    public static String m30242w(String snakeCase, boolean capFirst) {
        StringBuilder sb = new StringBuilder(snakeCase.length() + 1);
        for (int i = 0; i < snakeCase.length(); i++) {
            char charAt = snakeCase.charAt(i);
            if (charAt != '_') {
                if (Character.isDigit(charAt)) {
                    sb.append(charAt);
                } else {
                    if (capFirst) {
                        sb.append(Character.toUpperCase(charAt));
                        capFirst = false;
                    } else if (i == 0) {
                        sb.append(Character.toLowerCase(charAt));
                    } else {
                        sb.append(charAt);
                    }
                }
            }
            capFirst = true;
        }
        return sb.toString();
    }

    /* renamed from: x */
    public static String m30243x(String snakeCase) {
        return m30242w(snakeCase, false);
    }

    /* renamed from: y */
    public static String m30244y(String snakeCase) {
        return m30242w(snakeCase, true);
    }

    @Override // com.sunia.HTREnginev2.ymj
    /* renamed from: a */
    public boolean mo30245a(Class<?> messageType) {
        return GeneratedMessageV3.class.isAssignableFrom(messageType);
    }

    @Override // com.sunia.HTREnginev2.ymj
    /* renamed from: b */
    public xmj mo30246b(Class<?> messageType) {
        if (GeneratedMessageV3.class.isAssignableFrom(messageType)) {
            return m30227h(messageType, m30229j(messageType));
        }
        throw new IllegalArgumentException("Unsupported message type: " + messageType.getName());
    }

    /* renamed from: com.google.protobuf.h$d */
    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a */
        public final Map<Descriptors.Descriptor, Boolean> f38118a = new ConcurrentHashMap();

        /* renamed from: b */
        public int f38119b = 0;

        /* renamed from: c */
        public final Stack<a> f38120c = new Stack<>();

        /* renamed from: d */
        public final Map<Descriptors.Descriptor, a> f38121d = new HashMap();

        /* renamed from: com.google.protobuf.h$d$a */
        /* loaded from: classes6.dex */
        public static class a {

            /* renamed from: a */
            public final Descriptors.Descriptor f38122a;

            /* renamed from: b */
            public final int f38123b;

            /* renamed from: c */
            public int f38124c;

            /* renamed from: d */
            public b f38125d = null;

            public a(Descriptors.Descriptor descriptor, int index) {
                this.f38122a = descriptor;
                this.f38123b = index;
                this.f38124c = index;
            }
        }

        /* renamed from: a */
        public final void m30247a(b component) {
            boolean z;
            b bVar;
            Iterator<Descriptors.Descriptor> it2 = component.f38126a.iterator();
            loop0: while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                Descriptors.Descriptor next = it2.next();
                z = true;
                if (next.isExtendable()) {
                    break;
                }
                for (Descriptors.FieldDescriptor fieldDescriptor : next.getFields()) {
                    if (fieldDescriptor.isRequired() || (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE && (bVar = this.f38121d.get(fieldDescriptor.getMessageType()).f38125d) != component && bVar.f38127b)) {
                        break loop0;
                    }
                }
            }
            component.f38127b = z;
            Iterator<Descriptors.Descriptor> it3 = component.f38126a.iterator();
            while (it3.hasNext()) {
                this.f38118a.put(it3.next(), Boolean.valueOf(component.f38127b));
            }
        }

        /* renamed from: b */
        public final a m30248b(Descriptors.Descriptor descriptor) {
            a pop;
            int i = this.f38119b;
            this.f38119b = i + 1;
            a aVar = new a(descriptor, i);
            this.f38120c.push(aVar);
            this.f38121d.put(descriptor, aVar);
            for (Descriptors.FieldDescriptor fieldDescriptor : descriptor.getFields()) {
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    a aVar2 = this.f38121d.get(fieldDescriptor.getMessageType());
                    if (aVar2 == null) {
                        aVar.f38124c = Math.min(aVar.f38124c, m30248b(fieldDescriptor.getMessageType()).f38124c);
                    } else if (aVar2.f38125d == null) {
                        aVar.f38124c = Math.min(aVar.f38124c, aVar2.f38124c);
                    }
                }
            }
            if (aVar.f38123b == aVar.f38124c) {
                b bVar = new b(null);
                do {
                    pop = this.f38120c.pop();
                    pop.f38125d = bVar;
                    bVar.f38126a.add(pop.f38122a);
                } while (pop != aVar);
                m30247a(bVar);
            }
            return aVar;
        }

        /* renamed from: c */
        public boolean m30249c(Descriptors.Descriptor descriptor) {
            Boolean bool = this.f38118a.get(descriptor);
            if (bool != null) {
                return bool.booleanValue();
            }
            synchronized (this) {
                Boolean bool2 = this.f38118a.get(descriptor);
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
                return m30248b(descriptor).f38125d.f38127b;
            }
        }

        /* renamed from: com.google.protobuf.h$d$b */
        /* loaded from: classes6.dex */
        public static class b {

            /* renamed from: a */
            public final List<Descriptors.Descriptor> f38126a;

            /* renamed from: b */
            public boolean f38127b;

            public b() {
                this.f38126a = new ArrayList();
                this.f38127b = false;
            }

            public /* synthetic */ b(a aVar) {
                this();
            }
        }
    }

    /* renamed from: com.google.protobuf.h$e */
    /* loaded from: classes6.dex */
    public static final class e {

        /* renamed from: a */
        public kgk[] f38128a;

        public e() {
            this.f38128a = new kgk[2];
        }

        /* renamed from: b */
        public static kgk m30250b(Class<?> messageType, Descriptors.OneofDescriptor desc) {
            String m30243x = C6871h.m30243x(desc.getName());
            return new kgk(desc.getIndex(), C6871h.m30231l(messageType, m30243x + "Case_"), C6871h.m30231l(messageType, m30243x + "_"));
        }

        /* renamed from: a */
        public kgk m30251a(Class<?> messageType, Descriptors.OneofDescriptor desc) {
            int index = desc.getIndex();
            kgk[] kgkVarArr = this.f38128a;
            if (index >= kgkVarArr.length) {
                this.f38128a = (kgk[]) Arrays.copyOf(kgkVarArr, index * 2);
            }
            kgk kgkVar = this.f38128a[index];
            if (kgkVar != null) {
                return kgkVar;
            }
            kgk m30250b = m30250b(messageType, desc);
            this.f38128a[index] = m30250b;
            return m30250b;
        }

        public /* synthetic */ e(a aVar) {
            this();
        }
    }
}
