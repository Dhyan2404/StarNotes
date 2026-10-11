package org.apache.commons.lang3.builder;

import com.sunia.HTREnginev2.aci;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class HashCodeBuilder implements Builder<Integer> {

    /* renamed from: g */
    public static final int f107467g = 17;

    /* renamed from: h */
    public static final int f107468h = 37;

    /* renamed from: i */
    public static final ThreadLocal<Set<aci>> f107469i = new ThreadLocal<>();

    /* renamed from: e */
    public final int f107470e;

    /* renamed from: f */
    public int f107471f;

    public HashCodeBuilder() {
        this.f107470e = 37;
        this.f107471f = 17;
    }

    /* renamed from: b */
    public static Set<aci> m67277b() {
        return f107469i.get();
    }

    /* renamed from: c */
    public static boolean m67278c(Object obj) {
        Set<aci> m67277b = m67277b();
        return m67277b != null && m67277b.contains(new aci(obj));
    }

    /* renamed from: d */
    public static void m67279d(Object obj, Class<?> cls, HashCodeBuilder hashCodeBuilder, boolean z, String[] strArr) {
        if (m67278c(obj)) {
            return;
        }
        try {
            m67280e(obj);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                if (!ArrayUtils.contains(strArr, field.getName()) && !field.getName().contains("$") && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(HashCodeExclude.class))) {
                    try {
                        hashCodeBuilder.append(field.get(obj));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
        } finally {
            m67281f(obj);
        }
    }

    /* renamed from: e */
    public static void m67280e(Object obj) {
        Set<aci> m67277b = m67277b();
        if (m67277b == null) {
            m67277b = new HashSet<>();
            f107469i.set(m67277b);
        }
        m67277b.add(new aci(obj));
    }

    /* renamed from: f */
    public static void m67281f(Object obj) {
        Set<aci> m67277b = m67277b();
        if (m67277b != null) {
            m67277b.remove(new aci(obj));
            if (m67277b.isEmpty()) {
                f107469i.remove();
            }
        }
    }

    public static int reflectionHashCode(int i, int i2, Object obj) {
        return reflectionHashCode(i, i2, obj, false, null, new String[0]);
    }

    /* renamed from: a */
    public final void m67282a(Object obj) {
        if (obj instanceof long[]) {
            append((long[]) obj);
            return;
        }
        if (obj instanceof int[]) {
            append((int[]) obj);
            return;
        }
        if (obj instanceof short[]) {
            append((short[]) obj);
            return;
        }
        if (obj instanceof char[]) {
            append((char[]) obj);
            return;
        }
        if (obj instanceof byte[]) {
            append((byte[]) obj);
            return;
        }
        if (obj instanceof double[]) {
            append((double[]) obj);
            return;
        }
        if (obj instanceof float[]) {
            append((float[]) obj);
        } else if (obj instanceof boolean[]) {
            append((boolean[]) obj);
        } else {
            append((Object[]) obj);
        }
    }

    public HashCodeBuilder append(boolean z) {
        this.f107471f = (this.f107471f * this.f107470e) + (!z ? 1 : 0);
        return this;
    }

    public HashCodeBuilder appendSuper(int i) {
        this.f107471f = (this.f107471f * this.f107470e) + i;
        return this;
    }

    public int hashCode() {
        return toHashCode();
    }

    public int toHashCode() {
        return this.f107471f;
    }

    public static int reflectionHashCode(int i, int i2, Object obj, boolean z) {
        return reflectionHashCode(i, i2, obj, z, null, new String[0]);
    }

    public HashCodeBuilder append(boolean[] zArr) {
        if (zArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (boolean z : zArr) {
                append(z);
            }
        }
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.builder.Builder
    public Integer build() {
        return Integer.valueOf(toHashCode());
    }

    public static <T> int reflectionHashCode(int i, int i2, T t, boolean z, Class<? super T> cls, String... strArr) {
        Validate.isTrue(t != null, "The object to build a hash code for must not be null", new Object[0]);
        HashCodeBuilder hashCodeBuilder = new HashCodeBuilder(i, i2);
        Class<?> cls2 = t.getClass();
        m67279d(t, cls2, hashCodeBuilder, z, strArr);
        while (cls2.getSuperclass() != null && cls2 != cls) {
            cls2 = cls2.getSuperclass();
            m67279d(t, cls2, hashCodeBuilder, z, strArr);
        }
        return hashCodeBuilder.toHashCode();
    }

    public HashCodeBuilder(int i, int i2) {
        this.f107471f = 0;
        Validate.isTrue(i % 2 != 0, "HashCodeBuilder requires an odd initial value", new Object[0]);
        Validate.isTrue(i2 % 2 != 0, "HashCodeBuilder requires an odd multiplier", new Object[0]);
        this.f107470e = i2;
        this.f107471f = i;
    }

    public HashCodeBuilder append(byte b) {
        this.f107471f = (this.f107471f * this.f107470e) + b;
        return this;
    }

    public HashCodeBuilder append(byte[] bArr) {
        if (bArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (byte b : bArr) {
                append(b);
            }
        }
        return this;
    }

    public HashCodeBuilder append(char c) {
        this.f107471f = (this.f107471f * this.f107470e) + c;
        return this;
    }

    public HashCodeBuilder append(char[] cArr) {
        if (cArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (char c : cArr) {
                append(c);
            }
        }
        return this;
    }

    public static int reflectionHashCode(Object obj, boolean z) {
        return reflectionHashCode(17, 37, obj, z, null, new String[0]);
    }

    public static int reflectionHashCode(Object obj, Collection<String> collection) {
        return reflectionHashCode(obj, ReflectionToStringBuilder.m67286b(collection));
    }

    public static int reflectionHashCode(Object obj, String... strArr) {
        return reflectionHashCode(17, 37, obj, false, null, strArr);
    }

    public HashCodeBuilder append(double d) {
        return append(Double.doubleToLongBits(d));
    }

    public HashCodeBuilder append(double[] dArr) {
        if (dArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (double d : dArr) {
                append(d);
            }
        }
        return this;
    }

    public HashCodeBuilder append(float f) {
        this.f107471f = (this.f107471f * this.f107470e) + Float.floatToIntBits(f);
        return this;
    }

    public HashCodeBuilder append(float[] fArr) {
        if (fArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (float f : fArr) {
                append(f);
            }
        }
        return this;
    }

    public HashCodeBuilder append(int i) {
        this.f107471f = (this.f107471f * this.f107470e) + i;
        return this;
    }

    public HashCodeBuilder append(int[] iArr) {
        if (iArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (int i : iArr) {
                append(i);
            }
        }
        return this;
    }

    public HashCodeBuilder append(long j) {
        this.f107471f = (this.f107471f * this.f107470e) + ((int) (j ^ (j >> 32)));
        return this;
    }

    public HashCodeBuilder append(long[] jArr) {
        if (jArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (long j : jArr) {
                append(j);
            }
        }
        return this;
    }

    public HashCodeBuilder append(Object obj) {
        if (obj == null) {
            this.f107471f *= this.f107470e;
        } else if (obj.getClass().isArray()) {
            m67282a(obj);
        } else {
            this.f107471f = (this.f107471f * this.f107470e) + obj.hashCode();
        }
        return this;
    }

    public HashCodeBuilder append(Object[] objArr) {
        if (objArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (Object obj : objArr) {
                append(obj);
            }
        }
        return this;
    }

    public HashCodeBuilder append(short s) {
        this.f107471f = (this.f107471f * this.f107470e) + s;
        return this;
    }

    public HashCodeBuilder append(short[] sArr) {
        if (sArr == null) {
            this.f107471f *= this.f107470e;
        } else {
            for (short s : sArr) {
                append(s);
            }
        }
        return this;
    }
}
