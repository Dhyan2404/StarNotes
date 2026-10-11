package com.onyx.harfbuzz.sfnt;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.Disposable;
import com.onyx.harfbuzz.collections.FloatList;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.collections.PointList;
import com.onyx.harfbuzz.internal.Constants;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.internal.Raw;
import com.onyx.harfbuzz.internal.layout.CaretEdgesBuilder;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class ShapingResult implements Disposable {

    /* renamed from: a */
    public long f62866a;

    /* renamed from: com.onyx.harfbuzz.sfnt.ShapingResult$a */
    /* loaded from: classes9.dex */
    public static class C13002a extends IntList {

        /* renamed from: a */
        @Nullable
        public final Object f62867a;

        /* renamed from: b */
        public final long f62868b;

        /* renamed from: c */
        public final int f62869c;

        public C13002a(@Nullable Object obj, long j, int i) {
            this.f62867a = obj;
            this.f62868b = j;
            this.f62869c = i;
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        public void copyTo(@NonNull int[] iArr, int i) {
            Preconditions.checkNotNull(iArr);
            for (int i2 = 0; i2 < this.f62869c; i2++) {
                iArr[i2 + i] = Raw.getInt32Value(this.f62868b + (i2 * 4));
            }
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        public int get(int i) {
            Preconditions.checkElementIndex(i, this.f62869c);
            return Raw.getInt32Value(this.f62868b + (i * 4));
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        public int size() {
            return this.f62869c;
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        @NonNull
        public IntList subList(int i, int i2) {
            Preconditions.checkIndexRange(i, i2, this.f62869c);
            return new C13002a(this.f62867a, this.f62868b + (i * 4), i2 - i);
        }
    }

    /* renamed from: com.onyx.harfbuzz.sfnt.ShapingResult$b */
    /* loaded from: classes9.dex */
    public static final class C13003b extends ShapingResult {
        public C13003b(@NonNull ShapingResult shapingResult) {
            super(shapingResult);
        }

        @Override // com.onyx.harfbuzz.sfnt.ShapingResult, com.onyx.harfbuzz.Disposable
        public void dispose() {
            throw new UnsupportedOperationException(Constants.EXCEPTION_FINALIZABLE_OBJECT);
        }

        public void finalize() throws Throwable {
            try {
                super.dispose();
            } finally {
                super.finalize();
            }
        }
    }

    static {
        JniBridge.loadLibrary();
    }

    public ShapingResult() {
        this.f62866a = nCreate();
    }

    @NonNull
    public static ShapingResult finalizable(@NonNull ShapingResult shapingResult) {
        if (shapingResult.getClass() == ShapingResult.class) {
            return new C13003b(shapingResult);
        }
        if (shapingResult.getClass() == C13003b.class) {
            return shapingResult;
        }
        throw new IllegalArgumentException(Constants.EXCEPTION_SUBCLASS_NOT_SUPPORTED);
    }

    public static boolean isFinalizable(@NonNull ShapingResult shapingResult) {
        return shapingResult.getClass() == C13003b.class;
    }

    private static native void nCopyGlyphAdvances(long j, int i, int i2, @NonNull float[] fArr, int i3);

    private static native void nCopyGlyphIds(long j, int i, int i2, @NonNull int[] iArr, int i3);

    private static native void nCopyGlyphOffsets(long j, int i, int i2, @NonNull float[] fArr, int i3);

    private static native long nCreate();

    private static native void nDispose(long j);

    private static native int nGetCharCount(long j);

    private static native int nGetCharEnd(long j);

    private static native int nGetCharStart(long j);

    private static native long nGetClusterMapPtr(long j);

    private static native float nGetGlyphAdvance(long j, int i);

    private static native int nGetGlyphCount(long j);

    private static native int nGetGlyphId(long j, int i);

    private static native float nGetGlyphXOffset(long j, int i);

    private static native float nGetGlyphYOffset(long j, int i);

    private static native float nGetSizeByEm(long j);

    private static native boolean nIsBackward(long j);

    private static native boolean nIsRTL(long j);

    @Override // com.onyx.harfbuzz.Disposable
    public void dispose() {
        nDispose(this.f62866a);
    }

    @NonNull
    public FloatList getCaretEdges() {
        return getCaretEdges(null);
    }

    public int getCharEnd() {
        return nGetCharEnd(this.f62866a);
    }

    public int getCharStart() {
        return nGetCharStart(this.f62866a);
    }

    @NonNull
    public IntList getClusterMap() {
        long nGetClusterMapPtr = nGetClusterMapPtr(this.f62866a);
        return new C13002a(this, nGetClusterMapPtr, nGetClusterMapPtr != 0 ? nGetCharCount(this.f62866a) : 0);
    }

    @NonNull
    public FloatList getGlyphAdvances() {
        return new C13004c();
    }

    public int getGlyphCount() {
        return nGetGlyphCount(this.f62866a);
    }

    @NonNull
    public IntList getGlyphIds() {
        return new C13005d();
    }

    @NonNull
    public PointList getGlyphOffsets() {
        return new C13006e();
    }

    /* renamed from: h */
    public final void m52094h(int i, int i2, @NonNull float[] fArr, int i3) {
        nCopyGlyphAdvances(this.f62866a, i, i2, fArr, i3);
    }

    /* renamed from: i */
    public final void m52095i(int i, int i2, @NonNull int[] iArr, int i3) {
        nCopyGlyphIds(this.f62866a, i, i2, iArr, i3);
    }

    public boolean isBackward() {
        return nIsBackward(this.f62866a);
    }

    /* renamed from: j */
    public final void m52096j(int i, int i2, @NonNull float[] fArr, int i3) {
        nCopyGlyphOffsets(this.f62866a, i, i2, fArr, i3);
    }

    /* renamed from: k */
    public final int m52097k() {
        return nGetCharCount(this.f62866a);
    }

    /* renamed from: l */
    public final float m52098l(int i) {
        return nGetGlyphAdvance(this.f62866a, i);
    }

    /* renamed from: m */
    public final int m52099m(int i) {
        return nGetGlyphId(this.f62866a, i);
    }

    /* renamed from: n */
    public final float m52100n(int i) {
        return nGetGlyphXOffset(this.f62866a, i);
    }

    /* renamed from: o */
    public final float m52101o(int i) {
        return nGetGlyphYOffset(this.f62866a, i);
    }

    /* renamed from: p */
    public final boolean m52102p() {
        return nIsRTL(this.f62866a);
    }

    public String toString() {
        return "ShapingResult{isBackward=" + Boolean.toString(isBackward()) + ", charStart=" + getCharStart() + ", charEnd=" + getCharEnd() + ", glyphCount=" + getGlyphCount() + ", glyphIds=" + getGlyphIds().toString() + ", glyphOffsets=" + getGlyphOffsets().toString() + ", glyphAdvances=" + getGlyphAdvances().toString() + ", clusterMap=" + getClusterMap().toString() + "}";
    }

    @NonNull
    public FloatList getCaretEdges(@Nullable boolean[] zArr) {
        int m52097k = m52097k();
        if (zArr != null && zArr.length < m52097k) {
            throw new IllegalArgumentException("The length of caret stops array must be at least the represented character count");
        }
        return new CaretEdgesBuilder().setBackward(isBackward()).setRTL(m52102p()).setGlyphAdvances(getGlyphAdvances()).setClusterMap(getClusterMap()).setCaretStops(zArr).build();
    }

    /* renamed from: com.onyx.harfbuzz.sfnt.ShapingResult$c */
    /* loaded from: classes9.dex */
    public class C13004c extends FloatList {

        /* renamed from: a */
        public final int f62870a;

        /* renamed from: b */
        public final int f62871b;

        public C13004c() {
            this.f62870a = 0;
            this.f62871b = ShapingResult.this.getGlyphCount();
        }

        @Override // com.onyx.harfbuzz.collections.FloatList
        public void copyTo(@NonNull float[] fArr, int i) {
            Preconditions.checkNotNull(fArr);
            Preconditions.checkArrayBounds(fArr, i, this.f62871b);
            ShapingResult.this.m52094h(this.f62870a, this.f62871b, fArr, i);
        }

        @Override // com.onyx.harfbuzz.collections.FloatList
        public float get(int i) {
            Preconditions.checkElementIndex(i, this.f62871b);
            return ShapingResult.this.m52098l(i + this.f62870a);
        }

        @Override // com.onyx.harfbuzz.collections.FloatList
        public int size() {
            return this.f62871b;
        }

        @Override // com.onyx.harfbuzz.collections.FloatList
        @NonNull
        public FloatList subList(int i, int i2) {
            Preconditions.checkIndexRange(i, i2, this.f62871b);
            return new C13004c(this.f62870a + i, i2 - i);
        }

        public C13004c(int i, int i2) {
            this.f62870a = i;
            this.f62871b = i2;
        }
    }

    /* renamed from: com.onyx.harfbuzz.sfnt.ShapingResult$d */
    /* loaded from: classes9.dex */
    public class C13005d extends IntList {

        /* renamed from: a */
        public final int f62873a;

        /* renamed from: b */
        public final int f62874b;

        public C13005d() {
            this.f62873a = 0;
            this.f62874b = ShapingResult.this.getGlyphCount();
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        public void copyTo(@NonNull int[] iArr, int i) {
            Preconditions.checkNotNull(iArr);
            Preconditions.checkArrayBounds(iArr, i, this.f62874b);
            ShapingResult.this.m52095i(this.f62873a, this.f62874b, iArr, i);
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        public int get(int i) {
            Preconditions.checkElementIndex(i, this.f62874b);
            return ShapingResult.this.m52099m(i + this.f62873a);
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        public int size() {
            return this.f62874b;
        }

        @Override // com.onyx.harfbuzz.collections.IntList
        @NonNull
        public IntList subList(int i, int i2) {
            Preconditions.checkIndexRange(i, i2, this.f62874b);
            return new C13005d(this.f62873a + i, i2 - i);
        }

        public C13005d(int i, int i2) {
            this.f62873a = i;
            this.f62874b = i2;
        }
    }

    /* renamed from: com.onyx.harfbuzz.sfnt.ShapingResult$e */
    /* loaded from: classes9.dex */
    public class C13006e extends PointList {

        /* renamed from: a */
        public final int f62876a;

        /* renamed from: b */
        public final int f62877b;

        public C13006e() {
            this.f62876a = 0;
            this.f62877b = ShapingResult.this.getGlyphCount();
        }

        @Override // com.onyx.harfbuzz.collections.PointList
        public void copyTo(@NonNull float[] fArr, int i) {
            Preconditions.checkNotNull(fArr);
            Preconditions.checkArrayBounds(fArr, i, this.f62877b * 2);
            ShapingResult.this.m52096j(this.f62876a, this.f62877b, fArr, i);
        }

        @Override // com.onyx.harfbuzz.collections.PointList
        public float getX(int i) {
            Preconditions.checkElementIndex(i, this.f62877b);
            return ShapingResult.this.m52100n(i + this.f62876a);
        }

        @Override // com.onyx.harfbuzz.collections.PointList
        public float getY(int i) {
            Preconditions.checkElementIndex(i, this.f62877b);
            return ShapingResult.this.m52101o(i + this.f62876a);
        }

        @Override // com.onyx.harfbuzz.collections.PointList
        public int size() {
            return this.f62877b;
        }

        @Override // com.onyx.harfbuzz.collections.PointList
        @NonNull
        public PointList subList(int i, int i2) {
            Preconditions.checkIndexRange(i, i2, this.f62877b);
            return new C13006e(this.f62876a + i, i2 - i);
        }

        public C13006e(int i, int i2) {
            this.f62876a = i;
            this.f62877b = i2;
        }
    }

    public ShapingResult(@NonNull ShapingResult shapingResult) {
        this.f62866a = shapingResult.f62866a;
    }
}
