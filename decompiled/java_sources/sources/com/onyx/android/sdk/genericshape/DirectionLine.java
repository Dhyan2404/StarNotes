package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J,\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016J\b\u0010,\u001a\u00020-H\u0016J\b\u0010.\u001a\u00020/H\u0016J\u000e\u00100\u001a\b\u0012\u0004\u0012\u00020201H\u0016J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0016J\u0016\u00107\u001a\u00020$2\f\u00108\u001a\b\u0012\u0004\u0012\u00020201H\u0016R.\u0010\u0006\u001a\u0014\u0012\b\u0012\u00060\bj\u0002`\t\u0018\u00010\u0007j\u0004\u0018\u0001`\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\u001eX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/DirectionLine;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "drawStartArrow", "", "drawEndArrow", "(ZZ)V", "coordinates", "", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "getCoordinates", "()[[F", "setCoordinates", "([[F)V", "[[F", "getDrawEndArrow", Constants.BOOLEAN_VALUE_SIG, "setDrawEndArrow", "(Z)V", "getDrawStartArrow", "setDrawStartArrow", "lineWidth", "", "getLineWidth", "()Ljava/lang/Float;", "setLineWidth", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "draw", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "strokePaint", "Landroid/graphics/Paint;", "fillPaint", "getBoundingRect", "Landroid/graphics/RectF;", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class DirectionLine extends Geometry {

    @Nullable
    private float[][] coordinates;
    private boolean drawEndArrow;
    private boolean drawStartArrow;

    @Nullable
    private Float lineWidth;

    @NotNull
    private String type;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DirectionLine() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.DirectionLine.<init>():void");
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull Canvas canvas, @Nullable Matrix matrix, @NotNull Paint strokePaint, @Nullable Paint fillPaint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
        super.draw(canvas, matrix, strokePaint, fillPaint);
        Float f = this.lineWidth;
        GeoJsonKt.drawArrowPath(this, canvas, matrix, strokePaint, loadRenderPath(), f != null ? f.floatValue() : 2.0f, this.drawStartArrow, this.drawEndArrow);
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public RectF getBoundingRect() {
        List listOf;
        Path loadRenderPath = loadRenderPath();
        RectF computeBounds$default = PathKt.computeBounds$default(loadRenderPath, false, 1, null);
        Float f = this.lineWidth;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new RectF[]{computeBounds$default, PathKt.computeBounds$default(GeoJsonKt.loadArrowPath(this, loadRenderPath, f != null ? f.floatValue() : 2.0f, this.drawStartArrow, this.drawEndArrow), false, 1, null)});
        return RectFKt.boundingRectF(listOf);
    }

    @Nullable
    public final float[][] getCoordinates() {
        return this.coordinates;
    }

    public final boolean getDrawEndArrow() {
        return this.drawEndArrow;
    }

    public final boolean getDrawStartArrow() {
        return this.drawStartArrow;
    }

    @Nullable
    public final Float getLineWidth() {
        return this.lineWidth;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Object first;
        Object last;
        Path path = new Path();
        float[][] fArr = this.coordinates;
        if (fArr == null || fArr.length != 2) {
            return path;
        }
        first = ArraysKt___ArraysKt.first(fArr);
        float[] fArr2 = (float[]) first;
        TouchPoint touchPoint = new TouchPoint(fArr2[0], fArr2[1]);
        last = ArraysKt___ArraysKt.last(fArr);
        float[] fArr3 = (float[]) last;
        TouchPoint touchPoint2 = new TouchPoint(fArr3[0], fArr3[1]);
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        path.lineTo(touchPoint2.getX(), touchPoint2.getY());
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        return LineString.INSTANCE.loadSelectionPoints(this.coordinates);
    }

    public final void setCoordinates(@Nullable float[][] fArr) {
        this.coordinates = fArr;
    }

    public final void setDrawEndArrow(boolean z) {
        this.drawEndArrow = z;
    }

    public final void setDrawStartArrow(boolean z) {
        this.drawStartArrow = z;
    }

    public final void setLineWidth(@Nullable Float f) {
        this.lineWidth = f;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.coordinates = LineString.INSTANCE.updateBySelectionPoints(this.coordinates, list);
    }

    public /* synthetic */ DirectionLine(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? true : z2);
    }

    public DirectionLine(boolean z, boolean z2) {
        this.drawStartArrow = z;
        this.drawEndArrow = z2;
        this.type = GeoConstant.DirectionLine;
    }
}
