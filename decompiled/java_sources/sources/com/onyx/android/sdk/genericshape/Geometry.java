package com.onyx.android.sdk.genericshape;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.genericshape.IGeometry;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.pen.NeoPencilPen;
import com.onyx.android.sdk.pen.utils.PenUtils;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J,\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0017J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u0004J\b\u0010\u0017\u001a\u00020\u0018H\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0010\u0010 \u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Geometry;", "Lcom/onyx/android/sdk/genericshape/IGeometry;", "()V", "fromShapeType", "", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "draw", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "strokePaint", "Landroid/graphics/Paint;", "fillPaint", "getFillPath", "Landroid/graphics/Path;", "getFromShapeType", "getRenderPathBoundingRect", "Landroid/graphics/RectF;", "isFromMarkerPen", "", "isFromPencil", "scaleSelectionPoints", "scaleX", "", "scaleY", "setFromShapeType", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeometry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Geometry.kt\ncom/onyx/android/sdk/genericshape/Geometry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1#2:73\n1855#3,2:74\n*S KotlinDebug\n*F\n+ 1 Geometry.kt\ncom/onyx/android/sdk/genericshape/Geometry\n*L\n58#1:74,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class Geometry implements IGeometry {

    @NotNull
    private String type = "";
    private int fromShapeType = -1;

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void applyFillColor(int i) {
        IGeometry.DefaultImpls.applyFillColor(this, i);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeColor(int i) {
        IGeometry.DefaultImpls.applyStrokeColor(this, i);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeWidth(float f) {
        IGeometry.DefaultImpls.applyStrokeWidth(this, f);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull Canvas canvas, @Nullable Matrix matrix) {
        IGeometry.DefaultImpls.draw(this, canvas, matrix);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void enableFillColor(boolean z) {
        IGeometry.DefaultImpls.enableFillColor(this, z);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void erase(@NotNull GeoRenderContext geoRenderContext) {
        IGeometry.DefaultImpls.erase(this, geoRenderContext);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public RectF getBoundingRect() {
        return IGeometry.DefaultImpls.getBoundingRect(this);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path getFillPath() {
        return loadRenderPath();
    }

    public final int getFromShapeType() {
        return this.fromShapeType;
    }

    @NotNull
    public final RectF getRenderPathBoundingRect() {
        RectF computeBounds$default = PathKt.computeBounds$default(loadRenderPath(), false, 1, null);
        return (RectF) AnyKt.getOrElse(RectKt.isNullOrEmpty(computeBounds$default) ^ true ? computeBounds$default : null, new Function0<RectF>() { // from class: com.onyx.android.sdk.genericshape.Geometry$getRenderPathBoundingRect$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RectF invoke() {
                return IGeometry.DefaultImpls.getBoundingRect(Geometry.this);
            }
        });
    }

    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @JSONField(deserialize = false, serialize = false)
    public boolean isEnableFillColor() {
        return IGeometry.DefaultImpls.isEnableFillColor(this);
    }

    public final boolean isFromMarkerPen() {
        return this.fromShapeType == 15;
    }

    public final boolean isFromPencil() {
        return this.fromShapeType == 46;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void scaleSelectionPoints(float scaleX, float scaleY) {
        List<TouchPoint> loadSelectionPoints = loadSelectionPoints();
        Iterator<T> it2 = loadSelectionPoints.iterator();
        while (it2.hasNext()) {
            ((TouchPoint) it2.next()).scale(scaleX, scaleY);
        }
        updateBySelectionPoints(loadSelectionPoints);
    }

    public void setFromShapeType(int type) {
        this.fromShapeType = type;
    }

    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        return IGeometry.DefaultImpls.split(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull DrawContext drawContext) {
        IGeometry.DefaultImpls.draw(this, drawContext);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull GeoRenderContext geoRenderContext) {
        IGeometry.DefaultImpls.draw(this, geoRenderContext);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @SuppressLint({"NewApi"})
    public void draw(@NotNull Canvas canvas, @Nullable Matrix matrix, @NotNull Paint strokePaint, @Nullable Paint fillPaint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
        Path loadRenderPath = loadRenderPath();
        if (matrix != null) {
            loadRenderPath.transform(matrix);
        }
        if (this.fromShapeType != 46) {
            canvas.drawPath(loadRenderPath, strokePaint);
        } else if (strokePaint.getStrokeWidth() < PenUtils.INSTANCE.getLOW_QUALITY_WIDTH()) {
            canvas.drawPath(loadRenderPath, strokePaint);
        } else {
            NeoPencilPen.INSTANCE.drawPath(canvas, loadRenderPath, strokePaint);
        }
    }
}
