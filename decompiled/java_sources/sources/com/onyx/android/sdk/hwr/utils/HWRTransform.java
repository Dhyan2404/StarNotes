package com.onyx.android.sdk.hwr.utils;

import android.graphics.RectF;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRBoundBox;
import com.onyx.android.sdk.hwr.data.bean.HWRPoint;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u001f\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b1\u00102B9\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u0015\u0012\u0006\u0010 \u001a\u00020\u0015\u0012\u0006\u0010$\u001a\u00020\u0015\u0012\u0006\u0010(\u001a\u00020\u0015\u0012\u0006\u0010,\u001a\u00020\u0015\u0012\u0006\u00100\u001a\u00020\u0015¢\u0006\u0004\b1\u00103J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001b\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\u0005\u0010\bJ+\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\u0005\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0016R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010 \u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0017\u001a\u0004\b\u001e\u0010\u0019\"\u0004\b\u001f\u0010\u001bR\"\u0010$\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010\u0019\"\u0004\b#\u0010\u001bR\"\u0010(\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0017\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001bR\"\u0010,\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u0017\u001a\u0004\b*\u0010\u0019\"\u0004\b+\u0010\u001bR\"\u00100\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0017\u001a\u0004\b.\u0010\u0019\"\u0004\b/\u0010\u001b¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/HWRTransform;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPoint;", "p", "", Constants.ELEMNAME_TRANSFORM_STRING, "", PointConstant.POINT_FILE_END, "([Lcom/onyx/android/sdk/hwr/data/bean/HWRPoint;)V", "", TypedValues.CycleType.S_WAVE_OFFSET, "count", "([Lcom/onyx/android/sdk/hwr/data/bean/HWRPoint;II)V", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "boundBox", "Landroid/graphics/RectF;", "rectF", "hwrPoint", "transformRadius", "", "toString", "", "a", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getXx", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.DOUBLE_VALUE_SIG, "setXx", "(D)V", "xx", "b", "getYx", "setYx", "yx", "c", "getTx", "setTx", "tx", "d", "getXy", "setXy", "xy", "e", "getYy", "setYy", "yy", C6997f.f39671c, "getTy", "setTy", "ty", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "(DDDDDD)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRTransform {

    /* renamed from: a, reason: from kotlin metadata */
    public double xx;

    /* renamed from: b, reason: from kotlin metadata */
    public double yx;

    /* renamed from: c, reason: from kotlin metadata */
    public double tx;

    /* renamed from: d, reason: from kotlin metadata */
    public double xy;

    /* renamed from: e, reason: from kotlin metadata */
    public double yy;

    /* renamed from: f, reason: from kotlin metadata */
    public double ty;

    public HWRTransform() {
    }

    public final double getTx() {
        return this.tx;
    }

    public final double getTy() {
        return this.ty;
    }

    public final double getXx() {
        return this.xx;
    }

    public final double getXy() {
        return this.xy;
    }

    public final double getYx() {
        return this.yx;
    }

    public final double getYy() {
        return this.yy;
    }

    public final void setTx(double d) {
        this.tx = d;
    }

    public final void setTy(double d) {
        this.ty = d;
    }

    public final void setXx(double d) {
        this.xx = d;
    }

    public final void setXy(double d) {
        this.xy = d;
    }

    public final void setYx(double d) {
        this.yx = d;
    }

    public final void setYy(double d) {
        this.yy = d;
    }

    @NotNull
    public String toString() {
        return JSONUtils.INSTANCE.toPrettyJson(this);
    }

    public final void transform(@NotNull HWRPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        float x = (float) ((p.getX() * this.xx) + (p.getY() * this.yx) + this.tx);
        float x2 = (float) ((p.getX() * this.xy) + (p.getY() * this.yy) + this.ty);
        p.setX(x);
        p.setY(x2);
    }

    public final void transformRadius(@NotNull HWRPoint hwrPoint) {
        Intrinsics.checkNotNullParameter(hwrPoint, "hwrPoint");
        hwrPoint.setX(hwrPoint.getX() * ((float) this.xx));
        hwrPoint.setY(hwrPoint.getY() * ((float) this.yy));
    }

    public HWRTransform(double d, double d2, double d3, double d4, double d5, double d6) {
        this.xx = d;
        this.yx = d2;
        this.tx = d3;
        this.xy = d4;
        this.yy = d5;
        this.ty = d6;
    }

    public final void transform(@NotNull HWRPoint[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        transform(points, 0, points.length);
    }

    public final void transform(@NotNull HWRPoint[] points, int offset, int count) {
        Intrinsics.checkNotNullParameter(points, "points");
        for (int i = 0; i < count; i++) {
            transform(points[offset + i]);
        }
    }

    public final void transform(@NotNull HWRBoundBox boundBox) {
        Intrinsics.checkNotNullParameter(boundBox, "boundBox");
        RectF rectF = new RectF(boundBox.getX(), boundBox.getY(), boundBox.getX() + boundBox.getWidth(), boundBox.getY() + boundBox.getHeight());
        transform(rectF);
        boundBox.setX(rectF.left);
        boundBox.setY(rectF.top);
        boundBox.setWidth(rectF.width());
        boundBox.setHeight(rectF.height());
    }

    public final void transform(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        HWRPoint hWRPoint = new HWRPoint(rectF.left, rectF.top);
        HWRPoint hWRPoint2 = new HWRPoint(rectF.right, rectF.bottom);
        transform(hWRPoint);
        transform(hWRPoint2);
        rectF.set(hWRPoint.getX(), hWRPoint.getY(), hWRPoint2.getX(), hWRPoint2.getY());
    }
}
