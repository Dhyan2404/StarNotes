package com.onyx.harfbuzz.sfnt;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.Disposable;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.internal.Constants;
import com.onyx.harfbuzz.internal.JniBridge;
import com.onyx.harfbuzz.internal.sfnt.SfntTag;
import com.onyx.harfbuzz.utils.Preconditions;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes9.dex */
public class ShapingEngine implements Disposable {

    /* renamed from: a */
    public final C13000b f62862a;

    /* renamed from: b */
    public long f62863b;

    /* renamed from: com.onyx.harfbuzz.sfnt.ShapingEngine$b */
    /* loaded from: classes9.dex */
    public static class C13000b {

        /* renamed from: a */
        public HBTypeface f62864a;

        /* renamed from: b */
        public Set<OpenTypeFeature> f62865b;

        public C13000b() {
            this.f62864a = null;
            this.f62865b = Collections.emptySet();
        }
    }

    /* renamed from: com.onyx.harfbuzz.sfnt.ShapingEngine$c */
    /* loaded from: classes9.dex */
    public static final class C13001c extends ShapingEngine {
        public C13001c(@NonNull ShapingEngine shapingEngine) {
            super(shapingEngine);
        }

        @Override // com.onyx.harfbuzz.sfnt.ShapingEngine, com.onyx.harfbuzz.Disposable
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

    public ShapingEngine() {
        this.f62862a = new C13000b();
        this.f62863b = nCreate();
    }

    @NonNull
    public static ShapingEngine finalizable(@NonNull ShapingEngine shapingEngine) {
        if (shapingEngine.getClass() == ShapingEngine.class) {
            return new C13001c(shapingEngine);
        }
        if (shapingEngine.getClass() == C13001c.class) {
            return shapingEngine;
        }
        throw new IllegalArgumentException(Constants.EXCEPTION_SUBCLASS_NOT_SUPPORTED);
    }

    public static WritingDirection getScriptDirection(int i) {
        return WritingDirection.valueOf(nGetScriptDefaultDirection(i));
    }

    public static boolean isFinalizable(@NonNull ShapingEngine shapingEngine) {
        return shapingEngine.getClass() == C13001c.class;
    }

    private static native long nCreate();

    private static native void nDispose(long j);

    private static native float nGetExAscent(long j);

    private static native float nGetExDescent(long j);

    private static native float nGetExLeading(long j);

    private static native int nGetLanguageTag(long j);

    private static native int nGetScriptDefaultDirection(int i);

    private static native int nGetScriptTag(long j);

    private static native int nGetShapingOrder(long j);

    private static native float nGetTypeSize(long j);

    private static native int nGetWritingDirection(long j);

    private static native void nSetLanguageTag(long j, int i);

    private static native void nSetOpenTypeFeatures(long j, int[] iArr, short[] sArr);

    private static native void nSetScriptTag(long j, int i);

    private static native void nSetShapingOrder(long j, int i);

    private static native void nSetTypeSize(long j, float f);

    private static native void nSetTypeface(long j, HBTypeface hBTypeface);

    private static native void nSetWritingDirection(long j, int i);

    private static native void nShapeText(long j, long j2, String str, int i, int i2);

    @Override // com.onyx.harfbuzz.Disposable
    public void dispose() {
        nDispose(this.f62863b);
    }

    public float getExAscent() {
        return nGetExAscent(this.f62863b);
    }

    public float getExDescent() {
        return nGetExDescent(this.f62863b);
    }

    public float getExLeading() {
        return nGetExLeading(this.f62863b);
    }

    public int getLanguageTag() {
        return nGetLanguageTag(this.f62863b);
    }

    @NonNull
    public Set<OpenTypeFeature> getOpenTypeFeatures() {
        return Collections.unmodifiableSet(this.f62862a.f62865b);
    }

    public int getScriptTag() {
        return nGetScriptTag(this.f62863b);
    }

    @NonNull
    public ShapingOrder getShapingOrder() {
        return ShapingOrder.valueOf(nGetShapingOrder(this.f62863b));
    }

    public float getTypeSize() {
        return nGetTypeSize(this.f62863b);
    }

    public HBTypeface getTypeface() {
        return this.f62862a.f62864a;
    }

    @NonNull
    public WritingDirection getWritingDirection() {
        return WritingDirection.valueOf(nGetWritingDirection(this.f62863b));
    }

    public void setLanguageTag(int i) {
        nSetLanguageTag(this.f62863b, i);
    }

    public void setOpenTypeFeatures(@NonNull Set<OpenTypeFeature> set) {
        Preconditions.checkNotNull(set);
        this.f62862a.f62865b = new LinkedHashSet(set);
        int size = set.size();
        int[] iArr = new int[size];
        short[] sArr = new short[size];
        int i = 0;
        for (OpenTypeFeature openTypeFeature : set) {
            iArr[i] = openTypeFeature.tag();
            sArr[i] = (short) openTypeFeature.value();
            i++;
        }
        nSetOpenTypeFeatures(this.f62863b, iArr, sArr);
    }

    public void setScriptTag(int i) {
        nSetScriptTag(this.f62863b, i);
    }

    public void setShapingOrder(@NonNull ShapingOrder shapingOrder) {
        nSetShapingOrder(this.f62863b, shapingOrder.value);
    }

    public void setTypeSize(float f) {
        Preconditions.checkArgument(f >= 0.0f, "The value of font size is negative");
        nSetTypeSize(this.f62863b, f);
    }

    public void setTypeface(HBTypeface hBTypeface) {
        this.f62862a.f62864a = hBTypeface;
        nSetTypeface(this.f62863b, hBTypeface);
    }

    public void setWritingDirection(@NonNull WritingDirection writingDirection) {
        nSetWritingDirection(this.f62863b, writingDirection.value);
    }

    @NonNull
    public ShapingResult shapeText(@NonNull String str, int i, int i2) {
        if (this.f62862a.f62864a == null) {
            throw new IllegalStateException("Typeface has not been set");
        }
        Preconditions.checkNotNull(str, "text");
        Preconditions.checkArgument(i >= 0, "From Index: " + i);
        Preconditions.checkArgument(i2 <= str.length(), "To Index: " + i2 + ", Text Length: " + str.length());
        Preconditions.checkArgument(i2 >= i, "Bad Range: [" + i + ", " + i2 + ')');
        ShapingResult shapingResult = new ShapingResult();
        nShapeText(this.f62863b, shapingResult.f62866a, str, i, i2);
        return shapingResult;
    }

    public String toString() {
        return "ShapingEngine{typeface=" + getTypeface().toString() + ", typeSize=" + String.valueOf(getTypeSize()) + ", scriptTag=" + SfntTag.toString(getScriptTag()) + ", languageTag=" + SfntTag.toString(getLanguageTag()) + ", openTypeFeatures=" + getOpenTypeFeatures().toString() + ", writingDirection=" + getWritingDirection().toString() + ", shapingOrder=" + getShapingOrder().toString() + '}';
    }

    public ShapingEngine(@NonNull ShapingEngine shapingEngine) {
        this.f62862a = shapingEngine.f62862a;
        this.f62863b = shapingEngine.f62863b;
    }
}
