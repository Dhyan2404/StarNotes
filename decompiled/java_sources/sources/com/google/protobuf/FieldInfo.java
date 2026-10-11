package com.google.protobuf;

import com.google.protobuf.Internal;
import com.sunia.HTREnginev2.htd;
import com.sunia.HTREnginev2.kgk;

@htd
/* loaded from: classes6.dex */
public final class FieldInfo implements Comparable<FieldInfo> {

    /* renamed from: e */
    public final java.lang.reflect.Field f37439e;

    /* renamed from: f */
    public final FieldType f37440f;

    /* renamed from: g */
    public final Class<?> f37441g;

    /* renamed from: h */
    public final int f37442h;

    /* renamed from: i */
    public final java.lang.reflect.Field f37443i;

    /* renamed from: j */
    public final int f37444j;

    /* renamed from: k */
    public final boolean f37445k;

    /* renamed from: l */
    public final boolean f37446l;

    /* renamed from: m */
    public final kgk f37447m;

    /* renamed from: n */
    public final java.lang.reflect.Field f37448n;

    /* renamed from: o */
    public final Class<?> f37449o;

    /* renamed from: p */
    public final Object f37450p;

    /* renamed from: q */
    public final Internal.EnumVerifier f37451q;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public java.lang.reflect.Field f37452a;

        /* renamed from: b */
        public FieldType f37453b;

        /* renamed from: c */
        public int f37454c;

        /* renamed from: d */
        public java.lang.reflect.Field f37455d;

        /* renamed from: e */
        public int f37456e;

        /* renamed from: f */
        public boolean f37457f;

        /* renamed from: g */
        public boolean f37458g;

        /* renamed from: h */
        public kgk f37459h;

        /* renamed from: i */
        public Class<?> f37460i;

        /* renamed from: j */
        public Object f37461j;

        /* renamed from: k */
        public Internal.EnumVerifier f37462k;

        /* renamed from: l */
        public java.lang.reflect.Field f37463l;

        public /* synthetic */ Builder(C6737a c6737a) {
            this();
        }

        public FieldInfo build() {
            kgk kgkVar = this.f37459h;
            if (kgkVar != null) {
                return FieldInfo.m29090h(this.f37454c, this.f37453b, kgkVar, this.f37460i, this.f37458g, this.f37462k);
            }
            Object obj = this.f37461j;
            if (obj != null) {
                return FieldInfo.m29089g(this.f37452a, this.f37454c, obj, this.f37462k);
            }
            java.lang.reflect.Field field = this.f37455d;
            if (field != null) {
                return this.f37457f ? FieldInfo.m29088f(this.f37452a, this.f37454c, this.f37453b, field, this.f37456e, this.f37458g, this.f37462k) : FieldInfo.m29085c(this.f37452a, this.f37454c, this.f37453b, field, this.f37456e, this.f37458g, this.f37462k);
            }
            Internal.EnumVerifier enumVerifier = this.f37462k;
            if (enumVerifier != null) {
                java.lang.reflect.Field field2 = this.f37463l;
                return field2 == null ? FieldInfo.m29087e(this.f37452a, this.f37454c, this.f37453b, enumVerifier) : FieldInfo.m29092j(this.f37452a, this.f37454c, this.f37453b, enumVerifier, field2);
            }
            java.lang.reflect.Field field3 = this.f37463l;
            return field3 == null ? FieldInfo.m29086d(this.f37452a, this.f37454c, this.f37453b, this.f37458g) : FieldInfo.m29091i(this.f37452a, this.f37454c, this.f37453b, field3);
        }

        public Builder withCachedSizeField(java.lang.reflect.Field cachedSizeField) {
            this.f37463l = cachedSizeField;
            return this;
        }

        public Builder withEnforceUtf8(boolean enforceUtf8) {
            this.f37458g = enforceUtf8;
            return this;
        }

        public Builder withEnumVerifier(Internal.EnumVerifier enumVerifier) {
            this.f37462k = enumVerifier;
            return this;
        }

        public Builder withField(java.lang.reflect.Field field) {
            if (this.f37459h != null) {
                throw new IllegalStateException("Cannot set field when building a oneof.");
            }
            this.f37452a = field;
            return this;
        }

        public Builder withFieldNumber(int fieldNumber) {
            this.f37454c = fieldNumber;
            return this;
        }

        public Builder withMapDefaultEntry(Object mapDefaultEntry) {
            this.f37461j = mapDefaultEntry;
            return this;
        }

        public Builder withOneof(kgk oneof, Class<?> oneofStoredType) {
            if (this.f37452a != null || this.f37455d != null) {
                throw new IllegalStateException("Cannot set oneof when field or presenceField have been provided");
            }
            this.f37459h = oneof;
            this.f37460i = oneofStoredType;
            return this;
        }

        public Builder withPresence(java.lang.reflect.Field presenceField, int presenceMask) {
            this.f37455d = (java.lang.reflect.Field) Internal.m29344b(presenceField, "presenceField");
            this.f37456e = presenceMask;
            return this;
        }

        public Builder withRequired(boolean required) {
            this.f37457f = required;
            return this;
        }

        public Builder withType(FieldType type) {
            this.f37453b = type;
            return this;
        }

        public Builder() {
        }
    }

    /* renamed from: com.google.protobuf.FieldInfo$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6737a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f37464a;

        static {
            int[] iArr = new int[FieldType.values().length];
            f37464a = iArr;
            try {
                iArr[FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37464a[FieldType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37464a[FieldType.MESSAGE_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37464a[FieldType.GROUP_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FieldInfo(java.lang.reflect.Field field, int fieldNumber, FieldType type, Class<?> messageClass, java.lang.reflect.Field presenceField, int presenceMask, boolean required, boolean enforceUtf8, kgk oneof, Class<?> oneofStoredType, Object mapDefaultEntry, Internal.EnumVerifier enumVerifier, java.lang.reflect.Field cachedSizeField) {
        this.f37439e = field;
        this.f37440f = type;
        this.f37441g = messageClass;
        this.f37442h = fieldNumber;
        this.f37443i = presenceField;
        this.f37444j = presenceMask;
        this.f37445k = required;
        this.f37446l = enforceUtf8;
        this.f37447m = oneof;
        this.f37449o = oneofStoredType;
        this.f37450p = mapDefaultEntry;
        this.f37451q = enumVerifier;
        this.f37448n = cachedSizeField;
    }

    /* renamed from: A */
    public static Builder m29083A() {
        return new Builder(null);
    }

    /* renamed from: a */
    public static void m29084a(int fieldNumber) {
        if (fieldNumber > 0) {
            return;
        }
        throw new IllegalArgumentException("fieldNumber must be positive: " + fieldNumber);
    }

    /* renamed from: c */
    public static FieldInfo m29085c(java.lang.reflect.Field field, int fieldNumber, FieldType fieldType, java.lang.reflect.Field presenceField, int presenceMask, boolean enforceUtf8, Internal.EnumVerifier enumVerifier) {
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        Internal.m29344b(fieldType, "fieldType");
        Internal.m29344b(presenceField, "presenceField");
        if (presenceField == null || m29094y(presenceMask)) {
            return new FieldInfo(field, fieldNumber, fieldType, null, presenceField, presenceMask, false, enforceUtf8, null, null, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + presenceMask);
    }

    /* renamed from: d */
    public static FieldInfo m29086d(java.lang.reflect.Field field, int fieldNumber, FieldType fieldType, boolean enforceUtf8) {
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        Internal.m29344b(fieldType, "fieldType");
        if (fieldType == FieldType.MESSAGE_LIST || fieldType == FieldType.GROUP_LIST) {
            throw new IllegalStateException("Shouldn't be called for repeated message fields.");
        }
        return new FieldInfo(field, fieldNumber, fieldType, null, null, 0, false, enforceUtf8, null, null, null, null, null);
    }

    /* renamed from: e */
    public static FieldInfo m29087e(java.lang.reflect.Field field, int fieldNumber, FieldType fieldType, Internal.EnumVerifier enumVerifier) {
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        return new FieldInfo(field, fieldNumber, fieldType, null, null, 0, false, false, null, null, null, enumVerifier, null);
    }

    /* renamed from: f */
    public static FieldInfo m29088f(java.lang.reflect.Field field, int fieldNumber, FieldType fieldType, java.lang.reflect.Field presenceField, int presenceMask, boolean enforceUtf8, Internal.EnumVerifier enumVerifier) {
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        Internal.m29344b(fieldType, "fieldType");
        Internal.m29344b(presenceField, "presenceField");
        if (presenceField == null || m29094y(presenceMask)) {
            return new FieldInfo(field, fieldNumber, fieldType, null, presenceField, presenceMask, true, enforceUtf8, null, null, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + presenceMask);
    }

    /* renamed from: g */
    public static FieldInfo m29089g(java.lang.reflect.Field field, int fieldNumber, Object mapDefaultEntry, Internal.EnumVerifier enumVerifier) {
        Internal.m29344b(mapDefaultEntry, "mapDefaultEntry");
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        return new FieldInfo(field, fieldNumber, FieldType.MAP, null, null, 0, false, true, null, null, mapDefaultEntry, enumVerifier, null);
    }

    /* renamed from: h */
    public static FieldInfo m29090h(int fieldNumber, FieldType fieldType, kgk oneof, Class<?> oneofStoredType, boolean enforceUtf8, Internal.EnumVerifier enumVerifier) {
        m29084a(fieldNumber);
        Internal.m29344b(fieldType, "fieldType");
        Internal.m29344b(oneof, "oneof");
        Internal.m29344b(oneofStoredType, "oneofStoredType");
        if (fieldType.isScalar()) {
            return new FieldInfo(null, fieldNumber, fieldType, null, null, 0, false, enforceUtf8, oneof, oneofStoredType, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("Oneof is only supported for scalar fields. Field " + fieldNumber + " is of type " + fieldType);
    }

    /* renamed from: i */
    public static FieldInfo m29091i(java.lang.reflect.Field field, int fieldNumber, FieldType fieldType, java.lang.reflect.Field cachedSizeField) {
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        Internal.m29344b(fieldType, "fieldType");
        if (fieldType == FieldType.MESSAGE_LIST || fieldType == FieldType.GROUP_LIST) {
            throw new IllegalStateException("Shouldn't be called for repeated message fields.");
        }
        return new FieldInfo(field, fieldNumber, fieldType, null, null, 0, false, false, null, null, null, null, cachedSizeField);
    }

    /* renamed from: j */
    public static FieldInfo m29092j(java.lang.reflect.Field field, int fieldNumber, FieldType fieldType, Internal.EnumVerifier enumVerifier, java.lang.reflect.Field cachedSizeField) {
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        return new FieldInfo(field, fieldNumber, fieldType, null, null, 0, false, false, null, null, null, enumVerifier, cachedSizeField);
    }

    /* renamed from: k */
    public static FieldInfo m29093k(java.lang.reflect.Field field, int fieldNumber, FieldType fieldType, Class<?> messageClass) {
        m29084a(fieldNumber);
        Internal.m29344b(field, "field");
        Internal.m29344b(fieldType, "fieldType");
        Internal.m29344b(messageClass, "messageClass");
        return new FieldInfo(field, fieldNumber, fieldType, messageClass, null, 0, false, false, null, null, null, null, null);
    }

    /* renamed from: y */
    public static boolean m29094y(int value) {
        return value != 0 && (value & (value + (-1))) == 0;
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(FieldInfo o) {
        return this.f37442h - o.f37442h;
    }

    /* renamed from: l */
    public java.lang.reflect.Field m29096l() {
        return this.f37448n;
    }

    /* renamed from: m */
    public Internal.EnumVerifier m29097m() {
        return this.f37451q;
    }

    /* renamed from: n */
    public java.lang.reflect.Field m29098n() {
        return this.f37439e;
    }

    /* renamed from: o */
    public int m29099o() {
        return this.f37442h;
    }

    /* renamed from: p */
    public Class<?> m29100p() {
        return this.f37441g;
    }

    /* renamed from: q */
    public Object m29101q() {
        return this.f37450p;
    }

    /* renamed from: r */
    public Class<?> m29102r() {
        int i = C6737a.f37464a[this.f37440f.ordinal()];
        if (i == 1 || i == 2) {
            java.lang.reflect.Field field = this.f37439e;
            return field != null ? field.getType() : this.f37449o;
        }
        if (i == 3 || i == 4) {
            return this.f37441g;
        }
        return null;
    }

    /* renamed from: s */
    public kgk m29103s() {
        return this.f37447m;
    }

    /* renamed from: t */
    public Class<?> m29104t() {
        return this.f37449o;
    }

    /* renamed from: u */
    public java.lang.reflect.Field m29105u() {
        return this.f37443i;
    }

    /* renamed from: v */
    public int m29106v() {
        return this.f37444j;
    }

    /* renamed from: w */
    public FieldType m29107w() {
        return this.f37440f;
    }

    /* renamed from: x */
    public boolean m29108x() {
        return this.f37446l;
    }

    /* renamed from: z */
    public boolean m29109z() {
        return this.f37445k;
    }
}
