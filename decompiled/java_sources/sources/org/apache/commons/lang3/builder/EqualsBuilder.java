package org.apache.commons.lang3.builder;

import com.sunia.HTREnginev2.aci;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.tuple.Pair;

/* loaded from: classes12.dex */
public class EqualsBuilder implements Builder<Boolean> {

    /* renamed from: j */
    public static final ThreadLocal<Set<Pair<aci, aci>>> f107461j = new ThreadLocal<>();

    /* renamed from: e */
    public boolean f107462e = true;

    /* renamed from: f */
    public boolean f107463f = false;

    /* renamed from: g */
    public boolean f107464g = false;

    /* renamed from: h */
    public Class<?> f107465h = null;

    /* renamed from: i */
    public String[] f107466i = null;

    /* renamed from: b */
    public static Pair<aci, aci> m67270b(Object obj, Object obj2) {
        return Pair.m67421of(new aci(obj), new aci(obj2));
    }

    /* renamed from: c */
    public static Set<Pair<aci, aci>> m67271c() {
        return f107461j.get();
    }

    /* renamed from: d */
    public static boolean m67272d(Object obj, Object obj2) {
        Set<Pair<aci, aci>> m67271c = m67271c();
        Pair<aci, aci> m67270b = m67270b(obj, obj2);
        return m67271c != null && (m67271c.contains(m67270b) || m67271c.contains(Pair.m67421of(m67270b.getRight(), m67270b.getLeft())));
    }

    /* renamed from: f */
    public static void m67273f(Object obj, Object obj2) {
        Set<Pair<aci, aci>> m67271c = m67271c();
        if (m67271c == null) {
            m67271c = new HashSet<>();
            f107461j.set(m67271c);
        }
        m67271c.add(m67270b(obj, obj2));
    }

    /* renamed from: g */
    public static void m67274g(Object obj, Object obj2) {
        Set<Pair<aci, aci>> m67271c = m67271c();
        if (m67271c != null) {
            m67271c.remove(m67270b(obj, obj2));
            if (m67271c.isEmpty()) {
                f107461j.remove();
            }
        }
    }

    public static boolean reflectionEquals(Object obj, Object obj2, Collection<String> collection) {
        return reflectionEquals(obj, obj2, ReflectionToStringBuilder.m67286b(collection));
    }

    /* renamed from: a */
    public final void m67275a(Object obj, Object obj2) {
        if (obj.getClass() != obj2.getClass()) {
            setEquals(false);
            return;
        }
        if (obj instanceof long[]) {
            append((long[]) obj, (long[]) obj2);
            return;
        }
        if (obj instanceof int[]) {
            append((int[]) obj, (int[]) obj2);
            return;
        }
        if (obj instanceof short[]) {
            append((short[]) obj, (short[]) obj2);
            return;
        }
        if (obj instanceof char[]) {
            append((char[]) obj, (char[]) obj2);
            return;
        }
        if (obj instanceof byte[]) {
            append((byte[]) obj, (byte[]) obj2);
            return;
        }
        if (obj instanceof double[]) {
            append((double[]) obj, (double[]) obj2);
            return;
        }
        if (obj instanceof float[]) {
            append((float[]) obj, (float[]) obj2);
        } else if (obj instanceof boolean[]) {
            append((boolean[]) obj, (boolean[]) obj2);
        } else {
            append((Object[]) obj, (Object[]) obj2);
        }
    }

    public EqualsBuilder append(Object obj, Object obj2) {
        if (!this.f107462e || obj == obj2) {
            return this;
        }
        if (obj != null && obj2 != null) {
            Class<?> cls = obj.getClass();
            if (!cls.isArray()) {
                if (this.f107464g && !ClassUtils.isPrimitiveOrWrapper(cls)) {
                    reflectionAppend(obj, obj2);
                } else {
                    this.f107462e = obj.equals(obj2);
                }
            } else {
                m67275a(obj, obj2);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder appendSuper(boolean z) {
        if (!this.f107462e) {
            return this;
        }
        this.f107462e = z;
        return this;
    }

    /* renamed from: e */
    public final void m67276e(Object obj, Object obj2, Class<?> cls) {
        if (m67272d(obj, obj2)) {
            return;
        }
        try {
            m67273f(obj, obj2);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (int i = 0; i < declaredFields.length && this.f107462e; i++) {
                Field field = declaredFields[i];
                if (!ArrayUtils.contains(this.f107466i, field.getName()) && !field.getName().contains("$") && ((this.f107463f || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(EqualsExclude.class))) {
                    try {
                        append(field.get(obj), field.get(obj2));
                    } catch (IllegalAccessException unused) {
                        throw new InternalError("Unexpected IllegalAccessException");
                    }
                }
            }
        } finally {
            m67274g(obj, obj2);
        }
    }

    public boolean isEquals() {
        return this.f107462e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0020, code lost:
    
        if (r2.isInstance(r5) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        if (r1.isArray() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        append(r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
    
        m67276e(r5, r6, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        if (r1.getSuperclass() == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
    
        if (r1 == r4.f107465h) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        r1 = r1.getSuperclass();
        m67276e(r5, r6, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
    
        r4.f107462e = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0053, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x002d, code lost:
    
        if (r1.isInstance(r6) == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.lang3.builder.EqualsBuilder reflectionAppend(java.lang.Object r5, java.lang.Object r6) {
        /*
            r4 = this;
            boolean r0 = r4.f107462e
            if (r0 != 0) goto L5
            return r4
        L5:
            if (r5 != r6) goto L8
            return r4
        L8:
            r0 = 0
            if (r5 == 0) goto L57
            if (r6 != 0) goto Le
            goto L57
        Le:
            java.lang.Class r1 = r5.getClass()
            java.lang.Class r2 = r6.getClass()
            boolean r3 = r1.isInstance(r6)
            if (r3 == 0) goto L23
            boolean r3 = r2.isInstance(r5)
            if (r3 != 0) goto L31
            goto L30
        L23:
            boolean r3 = r2.isInstance(r5)
            if (r3 == 0) goto L54
            boolean r3 = r1.isInstance(r6)
            if (r3 != 0) goto L30
            goto L31
        L30:
            r1 = r2
        L31:
            boolean r2 = r1.isArray()     // Catch: java.lang.IllegalArgumentException -> L51
            if (r2 == 0) goto L3b
            r4.append(r5, r6)     // Catch: java.lang.IllegalArgumentException -> L51
            goto L50
        L3b:
            r4.m67276e(r5, r6, r1)     // Catch: java.lang.IllegalArgumentException -> L51
        L3e:
            java.lang.Class r2 = r1.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L51
            if (r2 == 0) goto L50
            java.lang.Class<?> r2 = r4.f107465h     // Catch: java.lang.IllegalArgumentException -> L51
            if (r1 == r2) goto L50
            java.lang.Class r1 = r1.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L51
            r4.m67276e(r5, r6, r1)     // Catch: java.lang.IllegalArgumentException -> L51
            goto L3e
        L50:
            return r4
        L51:
            r4.f107462e = r0
            return r4
        L54:
            r4.f107462e = r0
            return r4
        L57:
            r4.f107462e = r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.builder.EqualsBuilder.reflectionAppend(java.lang.Object, java.lang.Object):org.apache.commons.lang3.builder.EqualsBuilder");
    }

    public void reset() {
        this.f107462e = true;
    }

    public void setEquals(boolean z) {
        this.f107462e = z;
    }

    public EqualsBuilder setExcludeFields(String... strArr) {
        this.f107466i = strArr;
        return this;
    }

    public EqualsBuilder setReflectUpToClass(Class<?> cls) {
        this.f107465h = cls;
        return this;
    }

    public EqualsBuilder setTestRecursive(boolean z) {
        this.f107464g = z;
        return this;
    }

    public EqualsBuilder setTestTransients(boolean z) {
        this.f107463f = z;
        return this;
    }

    public static boolean reflectionEquals(Object obj, Object obj2, String... strArr) {
        return reflectionEquals(obj, obj2, false, null, strArr);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.builder.Builder
    public Boolean build() {
        return Boolean.valueOf(isEquals());
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z) {
        return reflectionEquals(obj, obj2, z, null, new String[0]);
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z, Class<?> cls, String... strArr) {
        return reflectionEquals(obj, obj2, z, cls, false, strArr);
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z, Class<?> cls, boolean z2, String... strArr) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return new EqualsBuilder().setExcludeFields(strArr).setReflectUpToClass(cls).setTestTransients(z).setTestRecursive(z2).reflectionAppend(obj, obj2).isEquals();
    }

    public EqualsBuilder append(long j, long j2) {
        if (!this.f107462e) {
            return this;
        }
        this.f107462e = j == j2;
        return this;
    }

    public EqualsBuilder append(int i, int i2) {
        if (!this.f107462e) {
            return this;
        }
        this.f107462e = i == i2;
        return this;
    }

    public EqualsBuilder append(short s, short s2) {
        if (!this.f107462e) {
            return this;
        }
        this.f107462e = s == s2;
        return this;
    }

    public EqualsBuilder append(char c, char c2) {
        if (!this.f107462e) {
            return this;
        }
        this.f107462e = c == c2;
        return this;
    }

    public EqualsBuilder append(byte b, byte b2) {
        if (!this.f107462e) {
            return this;
        }
        this.f107462e = b == b2;
        return this;
    }

    public EqualsBuilder append(double d, double d2) {
        return !this.f107462e ? this : append(Double.doubleToLongBits(d), Double.doubleToLongBits(d2));
    }

    public EqualsBuilder append(float f, float f2) {
        return !this.f107462e ? this : append(Float.floatToIntBits(f), Float.floatToIntBits(f2));
    }

    public EqualsBuilder append(boolean z, boolean z2) {
        if (!this.f107462e) {
            return this;
        }
        this.f107462e = z == z2;
        return this;
    }

    public EqualsBuilder append(Object[] objArr, Object[] objArr2) {
        if (!this.f107462e || objArr == objArr2) {
            return this;
        }
        if (objArr != null && objArr2 != null) {
            if (objArr.length != objArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < objArr.length && this.f107462e; i++) {
                append(objArr[i], objArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(long[] jArr, long[] jArr2) {
        if (!this.f107462e || jArr == jArr2) {
            return this;
        }
        if (jArr != null && jArr2 != null) {
            if (jArr.length != jArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < jArr.length && this.f107462e; i++) {
                append(jArr[i], jArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(int[] iArr, int[] iArr2) {
        if (!this.f107462e || iArr == iArr2) {
            return this;
        }
        if (iArr != null && iArr2 != null) {
            if (iArr.length != iArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < iArr.length && this.f107462e; i++) {
                append(iArr[i], iArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(short[] sArr, short[] sArr2) {
        if (!this.f107462e || sArr == sArr2) {
            return this;
        }
        if (sArr != null && sArr2 != null) {
            if (sArr.length != sArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < sArr.length && this.f107462e; i++) {
                append(sArr[i], sArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(char[] cArr, char[] cArr2) {
        if (!this.f107462e || cArr == cArr2) {
            return this;
        }
        if (cArr != null && cArr2 != null) {
            if (cArr.length != cArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < cArr.length && this.f107462e; i++) {
                append(cArr[i], cArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(byte[] bArr, byte[] bArr2) {
        if (!this.f107462e || bArr == bArr2) {
            return this;
        }
        if (bArr != null && bArr2 != null) {
            if (bArr.length != bArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < bArr.length && this.f107462e; i++) {
                append(bArr[i], bArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(double[] dArr, double[] dArr2) {
        if (!this.f107462e || dArr == dArr2) {
            return this;
        }
        if (dArr != null && dArr2 != null) {
            if (dArr.length != dArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < dArr.length && this.f107462e; i++) {
                append(dArr[i], dArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(float[] fArr, float[] fArr2) {
        if (!this.f107462e || fArr == fArr2) {
            return this;
        }
        if (fArr != null && fArr2 != null) {
            if (fArr.length != fArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < fArr.length && this.f107462e; i++) {
                append(fArr[i], fArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }

    public EqualsBuilder append(boolean[] zArr, boolean[] zArr2) {
        if (!this.f107462e || zArr == zArr2) {
            return this;
        }
        if (zArr != null && zArr2 != null) {
            if (zArr.length != zArr2.length) {
                setEquals(false);
                return this;
            }
            for (int i = 0; i < zArr.length && this.f107462e; i++) {
                append(zArr[i], zArr2[i]);
            }
            return this;
        }
        setEquals(false);
        return this;
    }
}
