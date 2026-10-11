package com.onyx.android.sdk.pen;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.base.lite.extension.PathKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.pennative.PenInk;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0007\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 +2\u00020\u0001:\u0001+B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00012\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0016J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016R\u001a\u0010\u0016\u001a\u00020\u00118\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenPathResult;", "Lcom/onyx/android/sdk/pen/PenResult;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "clearCache", "add", RequestParameters.SUBRESOURCE_APPEND, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "draw", "", "getPointsCount", "Landroid/graphics/Path;", "b", "Landroid/graphics/Path;", "getPath$sdk_pen_release", "()Landroid/graphics/Path;", "path", "", "c", "[F", "getPoints", "()[F", "setPoints", "([F)V", PointConstant.POINT_FILE_END, "", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TYPES_INDEX_SIG, "getPointSizeArray", "()[I", "setPointSizeArray", "([I)V", "pointSizeArray", "Landroid/graphics/RectF;", "rect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Path;Landroid/graphics/RectF;)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class PenPathResult extends PenResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    @NotNull
    public static final float[] f44287e = new float[0];

    /* renamed from: f */
    @NotNull
    public static final int[] f44288f = new int[0];

    /* renamed from: g */
    public static final boolean f44289g = false;

    /* renamed from: h */
    public static int f44290h;

    /* renamed from: i */
    public static int f44291i;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Path path;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public float[] points;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public int[] pointSizeArray;

    @Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J:\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0002R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenPathResult$Companion;", "", "", "resetCount", "dumpCount", "Lcom/onyx/android/sdk/pennative/PenInk;", "ink", "Lcom/onyx/android/sdk/pen/PenPathResult;", "buildFromInkArray", "Landroid/graphics/Path;", "path", "", PointConstant.POINT_FILE_END, "", gon.f71290o0, "end", "Lkotlin/Triple;", "Landroid/graphics/RectF;", "a", "", "DUMP_POINTS", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "EMPTY_FLOAT_ARRAY", "[F", "", "EMPTY_INT_ARRAY", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.TYPES_INDEX_SIG, "pathCount", "I", "pointCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Triple<Path, RectF, float[]> m34458a(Path path, float[] points, int start, int end) {
            IntRange until;
            IntProgression step;
            float[] floatArray;
            RectF rectF = new RectF();
            ArrayList arrayList = new ArrayList();
            until = RangesKt___RangesKt.until(start, end);
            step = RangesKt___RangesKt.step(until, 2);
            int first = step.getFirst();
            int last = step.getLast();
            int step2 = step.getStep();
            if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                while (true) {
                    if (PenPathResult.f44289g) {
                        PenPathResult.f44291i++;
                    }
                    float f = points[first];
                    float f2 = points[first + 1];
                    if (first == start) {
                        path.moveTo(f, f2);
                        rectF = new RectF(f, f2, f, f2);
                    } else {
                        path.lineTo(f, f2);
                        rectF.union(f, f2);
                    }
                    arrayList.add(Float.valueOf(f));
                    arrayList.add(Float.valueOf(f2));
                    if (first == last) {
                        break;
                    }
                    first += step2;
                }
            }
            path.close();
            floatArray = CollectionsKt___CollectionsKt.toFloatArray(arrayList);
            return new Triple<>(path, rectF, floatArray);
        }

        @Nullable
        public final PenPathResult buildFromInkArray(@Nullable PenInk ink) {
            if (ink == null) {
                return null;
            }
            Path path = new Path();
            ArrayList arrayList = new ArrayList();
            path.incReserve(ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().length / 2);
            int length = ink.getPointSizeArray().length;
            int i = 0;
            RectF rectF = null;
            int i2 = 0;
            int i3 = 0;
            while (i < length) {
                if (PenPathResult.f44289g) {
                    PenPathResult.f44290h++;
                }
                i3 += ink.getPointSizeArray()[i];
                Triple<Path, RectF, float[]> m34458a = m34458a(path, ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String(), i2, i3);
                arrayList.add(m34458a.getThird());
                if (rectF == null) {
                    rectF = new RectF(m34458a.getSecond());
                }
                rectF.union(m34458a.getSecond());
                i++;
                i2 = i3;
            }
            if (rectF == null) {
                return null;
            }
            PenPathResult penPathResult = new PenPathResult(path, rectF);
            penPathResult.setPoints(ink.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String());
            penPathResult.setPointSizeArray(ink.getPointSizeArray());
            return penPathResult;
        }

        public final void dumpCount() {
            Debug.INSTANCE.m32052i(Companion.class, "path count: " + PenPathResult.f44290h + ", point count: " + PenPathResult.f44291i, new Object[0]);
        }

        public final void resetCount() {
            PenPathResult.f44290h = 0;
            PenPathResult.f44291i = 0;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenPathResult(@NotNull Path path, @NotNull RectF rect) {
        super(rect);
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.path = path;
        this.points = new float[0];
        this.pointSizeArray = new int[0];
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    @NotNull
    public PenResult append(@Nullable PenResult add) {
        if (add == null) {
            return this;
        }
        PenPathResult penPathResult = (PenPathResult) add;
        final Path copy = PathKt.copy(this.path);
        copy.addPath(penPathResult.path);
        final RectF copy2 = RectFKt.copy(getRect());
        copy2.union(penPathResult.getRect());
        final int f44295j = getF44295j() + penPathResult.getF44295j();
        return new PenPathResult(copy, copy2) { // from class: com.onyx.android.sdk.pen.PenPathResult$append$1
            @Override // com.onyx.android.sdk.pen.PenPathResult, com.onyx.android.sdk.pen.PenResult
            /* renamed from: getPointsCount, reason: from getter */
            public int getF44295j() {
                return f44295j;
            }
        };
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    public void clearCache() {
        this.points = f44287e;
        this.pointSizeArray = f44288f;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    public void draw(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        canvas.drawPath(this.path, paint);
    }

    public boolean equals(@Nullable Object other) {
        if (other == null || !(other instanceof PenPathResult)) {
            return false;
        }
        float[] fArr = this.points;
        PenPathResult penPathResult = (PenPathResult) other;
        if (fArr.length != penPathResult.points.length) {
            return false;
        }
        int length = fArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                return true;
            }
            if (!(this.points[i] == penPathResult.points[i])) {
                return false;
            }
            i++;
        }
    }

    @NotNull
    /* renamed from: getPath$sdk_pen_release, reason: from getter */
    public final Path getPath() {
        return this.path;
    }

    @NotNull
    public final int[] getPointSizeArray() {
        return this.pointSizeArray;
    }

    @NotNull
    public final float[] getPoints() {
        return this.points;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    /* renamed from: getPointsCount */
    public int getF44295j() {
        return this.points.length;
    }

    public final void setPointSizeArray(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.pointSizeArray = iArr;
    }

    public final void setPoints(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<set-?>");
        this.points = fArr;
    }
}
