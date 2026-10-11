package org.apache.commons.lang3.builder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class DiffBuilder implements Builder<DiffResult> {

    /* renamed from: e */
    public final List<Diff<?>> f107451e;

    /* renamed from: f */
    public final boolean f107452f;

    /* renamed from: g */
    public final Object f107453g;

    /* renamed from: h */
    public final Object f107454h;

    /* renamed from: i */
    public final ToStringStyle f107455i;

    public DiffBuilder(Object obj, Object obj2, ToStringStyle toStringStyle, boolean z) {
        boolean z2 = true;
        Validate.isTrue(obj != null, "lhs cannot be null", new Object[0]);
        Validate.isTrue(obj2 != null, "rhs cannot be null", new Object[0]);
        this.f107451e = new ArrayList();
        this.f107453g = obj;
        this.f107454h = obj2;
        this.f107455i = toStringStyle;
        if (!z || (obj != obj2 && !obj.equals(obj2))) {
            z2 = false;
        }
        this.f107452f = z2;
    }

    /* renamed from: a */
    public final void m67269a(String str) {
        Validate.isTrue(str != null, "Field name cannot be null", new Object[0]);
    }

    public DiffBuilder append(String str, final boolean z, final boolean z2) {
        m67269a(str);
        if (!this.f107452f && z != z2) {
            this.f107451e.add(new Diff<Boolean>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.1
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Boolean getLeft() {
                    return Boolean.valueOf(z);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Boolean getRight() {
                    return Boolean.valueOf(z2);
                }
            });
        }
        return this;
    }

    @Override // org.apache.commons.lang3.builder.Builder
    public DiffResult build() {
        return new DiffResult(this.f107453g, this.f107454h, this.f107451e, this.f107455i);
    }

    public DiffBuilder append(String str, final boolean[] zArr, final boolean[] zArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(zArr, zArr2)) {
            this.f107451e.add(new Diff<Boolean[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.2
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Boolean[] getLeft() {
                    return ArrayUtils.toObject(zArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Boolean[] getRight() {
                    return ArrayUtils.toObject(zArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final byte b, final byte b2) {
        m67269a(str);
        if (!this.f107452f && b != b2) {
            this.f107451e.add(new Diff<Byte>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.3
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Byte getLeft() {
                    return Byte.valueOf(b);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Byte getRight() {
                    return Byte.valueOf(b2);
                }
            });
        }
        return this;
    }

    public DiffBuilder(Object obj, Object obj2, ToStringStyle toStringStyle) {
        this(obj, obj2, toStringStyle, true);
    }

    public DiffBuilder append(String str, final byte[] bArr, final byte[] bArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(bArr, bArr2)) {
            this.f107451e.add(new Diff<Byte[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.4
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Byte[] getLeft() {
                    return ArrayUtils.toObject(bArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Byte[] getRight() {
                    return ArrayUtils.toObject(bArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final char c, final char c2) {
        m67269a(str);
        if (!this.f107452f && c != c2) {
            this.f107451e.add(new Diff<Character>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.5
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Character getLeft() {
                    return Character.valueOf(c);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Character getRight() {
                    return Character.valueOf(c2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final char[] cArr, final char[] cArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(cArr, cArr2)) {
            this.f107451e.add(new Diff<Character[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.6
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Character[] getLeft() {
                    return ArrayUtils.toObject(cArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Character[] getRight() {
                    return ArrayUtils.toObject(cArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final double d, final double d2) {
        m67269a(str);
        if (!this.f107452f && Double.doubleToLongBits(d) != Double.doubleToLongBits(d2)) {
            this.f107451e.add(new Diff<Double>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.7
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Double getLeft() {
                    return Double.valueOf(d);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Double getRight() {
                    return Double.valueOf(d2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final double[] dArr, final double[] dArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(dArr, dArr2)) {
            this.f107451e.add(new Diff<Double[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.8
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Double[] getLeft() {
                    return ArrayUtils.toObject(dArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Double[] getRight() {
                    return ArrayUtils.toObject(dArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final float f, final float f2) {
        m67269a(str);
        if (!this.f107452f && Float.floatToIntBits(f) != Float.floatToIntBits(f2)) {
            this.f107451e.add(new Diff<Float>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.9
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Float getLeft() {
                    return Float.valueOf(f);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Float getRight() {
                    return Float.valueOf(f2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final float[] fArr, final float[] fArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(fArr, fArr2)) {
            this.f107451e.add(new Diff<Float[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.10
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Float[] getLeft() {
                    return ArrayUtils.toObject(fArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Float[] getRight() {
                    return ArrayUtils.toObject(fArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final int i, final int i2) {
        m67269a(str);
        if (!this.f107452f && i != i2) {
            this.f107451e.add(new Diff<Integer>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.11
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Integer getLeft() {
                    return Integer.valueOf(i);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Integer getRight() {
                    return Integer.valueOf(i2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final int[] iArr, final int[] iArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(iArr, iArr2)) {
            this.f107451e.add(new Diff<Integer[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.12
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Integer[] getLeft() {
                    return ArrayUtils.toObject(iArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Integer[] getRight() {
                    return ArrayUtils.toObject(iArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final long j, final long j2) {
        m67269a(str);
        if (!this.f107452f && j != j2) {
            this.f107451e.add(new Diff<Long>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.13
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Long getLeft() {
                    return Long.valueOf(j);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Long getRight() {
                    return Long.valueOf(j2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final long[] jArr, final long[] jArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(jArr, jArr2)) {
            this.f107451e.add(new Diff<Long[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.14
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Long[] getLeft() {
                    return ArrayUtils.toObject(jArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Long[] getRight() {
                    return ArrayUtils.toObject(jArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final short s, final short s2) {
        m67269a(str);
        if (!this.f107452f && s != s2) {
            this.f107451e.add(new Diff<Short>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.15
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Short getLeft() {
                    return Short.valueOf(s);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Short getRight() {
                    return Short.valueOf(s2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final short[] sArr, final short[] sArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(sArr, sArr2)) {
            this.f107451e.add(new Diff<Short[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.16
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Short[] getLeft() {
                    return ArrayUtils.toObject(sArr);
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Short[] getRight() {
                    return ArrayUtils.toObject(sArr2);
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, final Object obj, final Object obj2) {
        m67269a(str);
        if (this.f107452f || obj == obj2) {
            return this;
        }
        Object obj3 = obj != null ? obj : obj2;
        if (obj3.getClass().isArray()) {
            if (obj3 instanceof boolean[]) {
                return append(str, (boolean[]) obj, (boolean[]) obj2);
            }
            if (obj3 instanceof byte[]) {
                return append(str, (byte[]) obj, (byte[]) obj2);
            }
            if (obj3 instanceof char[]) {
                return append(str, (char[]) obj, (char[]) obj2);
            }
            if (obj3 instanceof double[]) {
                return append(str, (double[]) obj, (double[]) obj2);
            }
            if (obj3 instanceof float[]) {
                return append(str, (float[]) obj, (float[]) obj2);
            }
            if (obj3 instanceof int[]) {
                return append(str, (int[]) obj, (int[]) obj2);
            }
            if (obj3 instanceof long[]) {
                return append(str, (long[]) obj, (long[]) obj2);
            }
            if (obj3 instanceof short[]) {
                return append(str, (short[]) obj, (short[]) obj2);
            }
            return append(str, (Object[]) obj, (Object[]) obj2);
        }
        if (obj != null && obj.equals(obj2)) {
            return this;
        }
        this.f107451e.add(new Diff<Object>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.17
            private static final long serialVersionUID = 1;

            @Override // org.apache.commons.lang3.tuple.Pair
            public Object getLeft() {
                return obj;
            }

            @Override // org.apache.commons.lang3.tuple.Pair
            public Object getRight() {
                return obj2;
            }
        });
        return this;
    }

    public DiffBuilder append(String str, final Object[] objArr, final Object[] objArr2) {
        m67269a(str);
        if (!this.f107452f && !Arrays.equals(objArr, objArr2)) {
            this.f107451e.add(new Diff<Object[]>(str) { // from class: org.apache.commons.lang3.builder.DiffBuilder.18
                private static final long serialVersionUID = 1;

                @Override // org.apache.commons.lang3.tuple.Pair
                public Object[] getLeft() {
                    return objArr;
                }

                @Override // org.apache.commons.lang3.tuple.Pair
                public Object[] getRight() {
                    return objArr2;
                }
            });
        }
        return this;
    }

    public DiffBuilder append(String str, DiffResult diffResult) {
        m67269a(str);
        Validate.isTrue(diffResult != null, "Diff result cannot be null", new Object[0]);
        if (this.f107452f) {
            return this;
        }
        for (Diff<?> diff : diffResult.getDiffs()) {
            append(str + "." + diff.getFieldName(), diff.getLeft(), diff.getRight());
        }
        return this;
    }
}
