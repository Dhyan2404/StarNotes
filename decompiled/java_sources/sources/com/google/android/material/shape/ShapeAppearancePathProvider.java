package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

/* loaded from: classes6.dex */
public class ShapeAppearancePathProvider {

    /* renamed from: a */
    public final ShapePath[] f32284a = new ShapePath[4];

    /* renamed from: b */
    public final Matrix[] f32285b = new Matrix[4];

    /* renamed from: c */
    public final Matrix[] f32286c = new Matrix[4];

    /* renamed from: d */
    public final PointF f32287d = new PointF();

    /* renamed from: e */
    public final Path f32288e = new Path();

    /* renamed from: f */
    public final Path f32289f = new Path();

    /* renamed from: g */
    public final ShapePath f32290g = new ShapePath();

    /* renamed from: h */
    public final float[] f32291h = new float[2];

    /* renamed from: i */
    public final float[] f32292i = new float[2];

    /* renamed from: j */
    public final Path f32293j = new Path();

    /* renamed from: k */
    public final Path f32294k = new Path();

    /* renamed from: l */
    public boolean f32295l = true;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public interface PathListener {
        void onCornerPathCreated(ShapePath shapePath, Matrix matrix, int i);

        void onEdgePathCreated(ShapePath shapePath, Matrix matrix, int i);
    }

    /* renamed from: com.google.android.material.shape.ShapeAppearancePathProvider$a */
    /* loaded from: classes6.dex */
    public static class C5371a {

        /* renamed from: a */
        public static final ShapeAppearancePathProvider f32296a = new ShapeAppearancePathProvider();
    }

    /* renamed from: com.google.android.material.shape.ShapeAppearancePathProvider$b */
    /* loaded from: classes6.dex */
    public static final class C5372b {

        /* renamed from: a */
        @NonNull
        public final ShapeAppearanceModel f32297a;

        /* renamed from: b */
        @NonNull
        public final Path f32298b;

        /* renamed from: c */
        @NonNull
        public final RectF f32299c;

        /* renamed from: d */
        @Nullable
        public final PathListener f32300d;

        /* renamed from: e */
        public final float f32301e;

        public C5372b(@NonNull ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @Nullable PathListener pathListener, Path path) {
            this.f32300d = pathListener;
            this.f32297a = shapeAppearanceModel;
            this.f32301e = f;
            this.f32299c = rectF;
            this.f32298b = path;
        }
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.f32284a[i] = new ShapePath();
            this.f32285b[i] = new Matrix();
            this.f32286c[i] = new Matrix();
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static ShapeAppearancePathProvider getInstance() {
        return C5371a.f32296a;
    }

    /* renamed from: a */
    public final float m24753a(int i) {
        return ((i + 1) % 4) * 90;
    }

    /* renamed from: b */
    public final void m24754b(@NonNull C5372b c5372b, int i) {
        this.f32291h[0] = this.f32284a[i].m24773i();
        this.f32291h[1] = this.f32284a[i].m24774j();
        this.f32285b[i].mapPoints(this.f32291h);
        if (i == 0) {
            Path path = c5372b.f32298b;
            float[] fArr = this.f32291h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = c5372b.f32298b;
            float[] fArr2 = this.f32291h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f32284a[i].applyToPath(this.f32285b[i], c5372b.f32298b);
        PathListener pathListener = c5372b.f32300d;
        if (pathListener != null) {
            pathListener.onCornerPathCreated(this.f32284a[i], this.f32285b[i], i);
        }
    }

    /* renamed from: c */
    public final void m24755c(@NonNull C5372b c5372b, int i) {
        int i2 = (i + 1) % 4;
        this.f32291h[0] = this.f32284a[i].m24771g();
        this.f32291h[1] = this.f32284a[i].m24772h();
        this.f32285b[i].mapPoints(this.f32291h);
        this.f32292i[0] = this.f32284a[i2].m24773i();
        this.f32292i[1] = this.f32284a[i2].m24774j();
        this.f32285b[i2].mapPoints(this.f32292i);
        float f = this.f32291h[0];
        float[] fArr = this.f32292i;
        float max = Math.max(((float) Math.hypot(f - fArr[0], r1[1] - fArr[1])) - 0.001f, 0.0f);
        float m24759g = m24759g(c5372b.f32299c, i);
        this.f32290g.reset(0.0f, 0.0f);
        EdgeTreatment m24760h = m24760h(i, c5372b.f32297a);
        m24760h.getEdgePath(max, m24759g, c5372b.f32301e, this.f32290g);
        this.f32293j.reset();
        this.f32290g.applyToPath(this.f32286c[i], this.f32293j);
        if (this.f32295l && (m24760h.mo24708a() || m24761i(this.f32293j, i) || m24761i(this.f32293j, i2))) {
            Path path = this.f32293j;
            path.op(path, this.f32289f, Path.Op.DIFFERENCE);
            this.f32291h[0] = this.f32290g.m24773i();
            this.f32291h[1] = this.f32290g.m24774j();
            this.f32286c[i].mapPoints(this.f32291h);
            Path path2 = this.f32288e;
            float[] fArr2 = this.f32291h;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.f32290g.applyToPath(this.f32286c[i], this.f32288e);
        } else {
            this.f32290g.applyToPath(this.f32286c[i], c5372b.f32298b);
        }
        PathListener pathListener = c5372b.f32300d;
        if (pathListener != null) {
            pathListener.onEdgePathCreated(this.f32290g, this.f32286c[i], i);
        }
    }

    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @NonNull Path path) {
        calculatePath(shapeAppearanceModel, f, rectF, null, path);
    }

    /* renamed from: d */
    public final void m24756d(int i, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    /* renamed from: e */
    public final CornerSize m24757e(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.getTopRightCornerSize() : shapeAppearanceModel.getTopLeftCornerSize() : shapeAppearanceModel.getBottomLeftCornerSize() : shapeAppearanceModel.getBottomRightCornerSize();
    }

    /* renamed from: f */
    public final CornerTreatment m24758f(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.getTopRightCorner() : shapeAppearanceModel.getTopLeftCorner() : shapeAppearanceModel.getBottomLeftCorner() : shapeAppearanceModel.getBottomRightCorner();
    }

    /* renamed from: g */
    public final float m24759g(@NonNull RectF rectF, int i) {
        float[] fArr = this.f32291h;
        ShapePath shapePath = this.f32284a[i];
        fArr[0] = shapePath.endX;
        fArr[1] = shapePath.endY;
        this.f32285b[i].mapPoints(fArr);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.f32291h[0]) : Math.abs(rectF.centerY() - this.f32291h[1]);
    }

    /* renamed from: h */
    public final EdgeTreatment m24760h(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.getRightEdge() : shapeAppearanceModel.getTopEdge() : shapeAppearanceModel.getLeftEdge() : shapeAppearanceModel.getBottomEdge();
    }

    @RequiresApi(19)
    /* renamed from: i */
    public final boolean m24761i(Path path, int i) {
        this.f32294k.reset();
        this.f32284a[i].applyToPath(this.f32285b[i], this.f32294k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f32294k.computeBounds(rectF, true);
        path.op(this.f32294k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    /* renamed from: j */
    public final void m24762j(@NonNull C5372b c5372b, int i) {
        m24758f(i, c5372b.f32297a).getCornerPath(this.f32284a[i], 90.0f, c5372b.f32301e, c5372b.f32299c, m24757e(i, c5372b.f32297a));
        float m24753a = m24753a(i);
        this.f32285b[i].reset();
        m24756d(i, c5372b.f32299c, this.f32287d);
        Matrix matrix = this.f32285b[i];
        PointF pointF = this.f32287d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f32285b[i].preRotate(m24753a);
    }

    /* renamed from: k */
    public void m24763k(boolean z) {
        this.f32295l = z;
    }

    /* renamed from: l */
    public final void m24764l(int i) {
        this.f32291h[0] = this.f32284a[i].m24771g();
        this.f32291h[1] = this.f32284a[i].m24772h();
        this.f32285b[i].mapPoints(this.f32291h);
        float m24753a = m24753a(i);
        this.f32286c[i].reset();
        Matrix matrix = this.f32286c[i];
        float[] fArr = this.f32291h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f32286c[i].preRotate(m24753a);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, @NonNull Path path) {
        path.rewind();
        this.f32288e.rewind();
        this.f32289f.rewind();
        this.f32289f.addRect(rectF, Path.Direction.CW);
        C5372b c5372b = new C5372b(shapeAppearanceModel, f, rectF, pathListener, path);
        for (int i = 0; i < 4; i++) {
            m24762j(c5372b, i);
            m24764l(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            m24754b(c5372b, i2);
            m24755c(c5372b, i2);
        }
        path.close();
        this.f32288e.close();
        if (this.f32288e.isEmpty()) {
            return;
        }
        path.op(this.f32288e, Path.Op.UNION);
    }
}
