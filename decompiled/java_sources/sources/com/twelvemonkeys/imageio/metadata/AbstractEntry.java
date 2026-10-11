package com.twelvemonkeys.imageio.metadata;

import com.twelvemonkeys.lang.Validate;
import com.twelvemonkeys.util.CollectionUtil;
import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes10.dex */
public abstract class AbstractEntry implements Entry {

    /* renamed from: a */
    public final Object f94040a;

    /* renamed from: b */
    public final Object f94041b;

    public AbstractEntry(Object obj, Object obj2) {
        Validate.notNull(obj, "identifier");
        this.f94040a = obj;
        this.f94041b = obj2;
    }

    /* renamed from: a */
    public static boolean m60450a(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj2 == null || obj == null || obj.getClass() != obj2.getClass()) {
            return false;
        }
        Class<?> componentType = obj.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return Arrays.equals((Object[]) obj, (Object[]) obj2);
        }
        if (obj instanceof byte[]) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        if (obj instanceof char[]) {
            return Arrays.equals((char[]) obj, (char[]) obj2);
        }
        if (obj instanceof short[]) {
            return Arrays.equals((short[]) obj, (short[]) obj2);
        }
        if (obj instanceof int[]) {
            return Arrays.equals((int[]) obj, (int[]) obj2);
        }
        if (obj instanceof long[]) {
            return Arrays.equals((long[]) obj, (long[]) obj2);
        }
        if (obj instanceof boolean[]) {
            return Arrays.equals((boolean[]) obj, (boolean[]) obj2);
        }
        if (obj instanceof float[]) {
            return Arrays.equals((float[]) obj, (float[]) obj2);
        }
        if (obj instanceof double[]) {
            return Arrays.equals((double[]) obj, (double[]) obj2);
        }
        throw new AssertionError("Unsupported type:" + componentType);
    }

    /* renamed from: b */
    public static String m60451b(Object obj) {
        Class<?> componentType = obj.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return Arrays.toString((Object[]) obj);
        }
        if (componentType.equals(Boolean.TYPE)) {
            return Arrays.toString((boolean[]) obj);
        }
        if (componentType.equals(Byte.TYPE)) {
            return Arrays.toString((byte[]) obj);
        }
        if (componentType.equals(Character.TYPE)) {
            return new String((char[]) obj);
        }
        if (componentType.equals(Double.TYPE)) {
            return Arrays.toString((double[]) obj);
        }
        if (componentType.equals(Float.TYPE)) {
            return Arrays.toString((float[]) obj);
        }
        if (componentType.equals(Integer.TYPE)) {
            return Arrays.toString((int[]) obj);
        }
        if (componentType.equals(Long.TYPE)) {
            return Arrays.toString((long[]) obj);
        }
        if (componentType.equals(Short.TYPE)) {
            return Arrays.toString((short[]) obj);
        }
        throw new AssertionError("Unknown type: " + componentType);
    }

    /* renamed from: c */
    public final boolean m60452c(AbstractEntry abstractEntry) {
        boolean isArray = this.f94041b.getClass().isArray();
        Object obj = this.f94041b;
        Object obj2 = abstractEntry.f94041b;
        return isArray ? m60450a(obj, obj2) : obj.equals(obj2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractEntry)) {
            return false;
        }
        AbstractEntry abstractEntry = (AbstractEntry) obj;
        if (this.f94040a.equals(abstractEntry.f94040a)) {
            Object obj2 = this.f94041b;
            if (obj2 == null && abstractEntry.f94041b == null) {
                return true;
            }
            if (obj2 != null && m60452c(abstractEntry)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.twelvemonkeys.imageio.metadata.Entry
    public String getFieldName() {
        return null;
    }

    @Override // com.twelvemonkeys.imageio.metadata.Entry
    public final Object getIdentifier() {
        return this.f94040a;
    }

    public String getNativeIdentifier() {
        return String.valueOf(getIdentifier());
    }

    @Override // com.twelvemonkeys.imageio.metadata.Entry
    public String getTypeName() {
        Object obj = this.f94041b;
        if (obj == null) {
            return null;
        }
        return obj.getClass().getSimpleName();
    }

    @Override // com.twelvemonkeys.imageio.metadata.Entry
    public Object getValue() {
        return this.f94041b;
    }

    @Override // com.twelvemonkeys.imageio.metadata.Entry
    public String getValueAsString() {
        if (valueCount() <= 1) {
            Object obj = this.f94041b;
            return (obj != null && obj.getClass().isArray() && Array.getLength(this.f94041b) == 1) ? String.valueOf(Array.get(this.f94041b, 0)) : String.valueOf(this.f94041b);
        }
        if (valueCount() < 16) {
            return m60451b(this.f94041b);
        }
        String m60451b = m60451b(CollectionUtil.subArray(this.f94041b, 0, 4));
        return String.format("%s ... %s (%d)", m60451b.substring(0, m60451b.length() - 1), m60451b(CollectionUtil.subArray(this.f94041b, valueCount() - 4, 4)).substring(1), Integer.valueOf(valueCount()));
    }

    public int hashCode() {
        int hashCode = this.f94040a.hashCode();
        Object obj = this.f94041b;
        return hashCode + (obj != null ? obj.hashCode() * 31 : 0);
    }

    public String toString() {
        String fieldName = getFieldName();
        String format = fieldName != null ? String.format("/%s", fieldName) : "";
        String typeName = getTypeName();
        return String.format("%s%s: %s%s", getNativeIdentifier(), format, getValueAsString(), typeName != null ? String.format(" (%s)", typeName) : "");
    }

    @Override // com.twelvemonkeys.imageio.metadata.Entry
    public int valueCount() {
        Object obj = this.f94041b;
        if (obj == null || !obj.getClass().isArray()) {
            return 1;
        }
        return Array.getLength(this.f94041b);
    }
}
