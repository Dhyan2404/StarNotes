package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.shadow.ShadowRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public class ShapePath {
    protected static final float ANGLE_LEFT = 180.0f;

    /* renamed from: d */
    public static final float f32302d = 270.0f;

    /* renamed from: a */
    public final List<PathOperation> f32303a = new ArrayList();

    /* renamed from: b */
    public final List<AbstractC5377e> f32304b = new ArrayList();

    /* renamed from: c */
    public boolean f32305c;

    @Deprecated
    public float currentShadowAngle;

    @Deprecated
    public float endShadowAngle;

    @Deprecated
    public float endX;

    @Deprecated
    public float endY;

    @Deprecated
    public float startX;

    @Deprecated
    public float startY;

    /* loaded from: classes6.dex */
    public static class PathArcOperation extends PathOperation {

        /* renamed from: a */
        public static final RectF f32306a = new RectF();

        @Deprecated
        public float bottom;

        @Deprecated
        public float left;

        @Deprecated
        public float right;

        @Deprecated
        public float startAngle;

        @Deprecated
        public float sweepAngle;

        @Deprecated
        public float top;

        public PathArcOperation(float f, float f2, float f3, float f4) {
            m24796p(f);
            m24800t(f2);
            m24797q(f3);
            m24795o(f4);
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f32306a;
            rectF.set(m24790j(), m24794n(), m24791k(), m24789i());
            path.arcTo(rectF, m24792l(), m24793m(), false);
            path.transform(matrix);
        }

        /* renamed from: i */
        public final float m24789i() {
            return this.bottom;
        }

        /* renamed from: j */
        public final float m24790j() {
            return this.left;
        }

        /* renamed from: k */
        public final float m24791k() {
            return this.right;
        }

        /* renamed from: l */
        public final float m24792l() {
            return this.startAngle;
        }

        /* renamed from: m */
        public final float m24793m() {
            return this.sweepAngle;
        }

        /* renamed from: n */
        public final float m24794n() {
            return this.top;
        }

        /* renamed from: o */
        public final void m24795o(float f) {
            this.bottom = f;
        }

        /* renamed from: p */
        public final void m24796p(float f) {
            this.left = f;
        }

        /* renamed from: q */
        public final void m24797q(float f) {
            this.right = f;
        }

        /* renamed from: r */
        public final void m24798r(float f) {
            this.startAngle = f;
        }

        /* renamed from: s */
        public final void m24799s(float f) {
            this.sweepAngle = f;
        }

        /* renamed from: t */
        public final void m24800t(float f) {
            this.top = f;
        }
    }

    /* loaded from: classes6.dex */
    public static class PathCubicOperation extends PathOperation {

        /* renamed from: a */
        public float f32307a;

        /* renamed from: b */
        public float f32308b;

        /* renamed from: c */
        public float f32309c;

        /* renamed from: d */
        public float f32310d;

        /* renamed from: e */
        public float f32311e;

        /* renamed from: f */
        public float f32312f;

        public PathCubicOperation(float f, float f2, float f3, float f4, float f5, float f6) {
            m24807g(f);
            m24809i(f2);
            m24808h(f3);
            m24810j(f4);
            m24811k(f5);
            m24812l(f6);
        }

        /* renamed from: a */
        public final float m24801a() {
            return this.f32307a;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(this.f32307a, this.f32308b, this.f32309c, this.f32310d, this.f32311e, this.f32312f);
            path.transform(matrix);
        }

        /* renamed from: b */
        public final float m24802b() {
            return this.f32309c;
        }

        /* renamed from: c */
        public final float m24803c() {
            return this.f32308b;
        }

        /* renamed from: d */
        public final float m24804d() {
            return this.f32308b;
        }

        /* renamed from: e */
        public final float m24805e() {
            return this.f32311e;
        }

        /* renamed from: f */
        public final float m24806f() {
            return this.f32312f;
        }

        /* renamed from: g */
        public final void m24807g(float f) {
            this.f32307a = f;
        }

        /* renamed from: h */
        public final void m24808h(float f) {
            this.f32309c = f;
        }

        /* renamed from: i */
        public final void m24809i(float f) {
            this.f32308b = f;
        }

        /* renamed from: j */
        public final void m24810j(float f) {
            this.f32310d = f;
        }

        /* renamed from: k */
        public final void m24811k(float f) {
            this.f32311e = f;
        }

        /* renamed from: l */
        public final void m24812l(float f) {
            this.f32312f = f;
        }
    }

    /* loaded from: classes6.dex */
    public static class PathLineOperation extends PathOperation {

        /* renamed from: a */
        public float f32313a;

        /* renamed from: b */
        public float f32314b;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f32313a, this.f32314b);
            path.transform(matrix);
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class PathOperation {
        protected final Matrix matrix = new Matrix();

        public abstract void applyToPath(Matrix matrix, Path path);
    }

    /* loaded from: classes6.dex */
    public static class PathQuadOperation extends PathOperation {

        @Deprecated
        public float controlX;

        @Deprecated
        public float controlY;

        @Deprecated
        public float endX;

        @Deprecated
        public float endY;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(m24821e(), m24822f(), m24823g(), m24824h());
            path.transform(matrix);
        }

        /* renamed from: e */
        public final float m24821e() {
            return this.controlX;
        }

        /* renamed from: f */
        public final float m24822f() {
            return this.controlY;
        }

        /* renamed from: g */
        public final float m24823g() {
            return this.endX;
        }

        /* renamed from: h */
        public final float m24824h() {
            return this.endY;
        }

        /* renamed from: i */
        public final void m24825i(float f) {
            this.controlX = f;
        }

        /* renamed from: j */
        public final void m24826j(float f) {
            this.controlY = f;
        }

        /* renamed from: k */
        public final void m24827k(float f) {
            this.endX = f;
        }

        /* renamed from: l */
        public final void m24828l(float f) {
            this.endY = f;
        }
    }

    /* renamed from: com.google.android.material.shape.ShapePath$a */
    /* loaded from: classes6.dex */
    public class C5373a extends AbstractC5377e {

        /* renamed from: c */
        public final /* synthetic */ List f32315c;

        /* renamed from: d */
        public final /* synthetic */ Matrix f32316d;

        public C5373a(List list, Matrix matrix) {
            this.f32315c = list;
            this.f32316d = matrix;
        }

        @Override // com.google.android.material.shape.ShapePath.AbstractC5377e
        /* renamed from: a */
        public void mo24829a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            Iterator it2 = this.f32315c.iterator();
            while (it2.hasNext()) {
                ((AbstractC5377e) it2.next()).mo24829a(this.f32316d, shadowRenderer, i, canvas);
            }
        }
    }

    /* renamed from: com.google.android.material.shape.ShapePath$b */
    /* loaded from: classes6.dex */
    public static class C5374b extends AbstractC5377e {

        /* renamed from: c */
        public final PathArcOperation f32318c;

        public C5374b(PathArcOperation pathArcOperation) {
            this.f32318c = pathArcOperation;
        }

        @Override // com.google.android.material.shape.ShapePath.AbstractC5377e
        /* renamed from: a */
        public void mo24829a(Matrix matrix, @NonNull ShadowRenderer shadowRenderer, int i, @NonNull Canvas canvas) {
            shadowRenderer.drawCornerShadow(canvas, matrix, new RectF(this.f32318c.m24790j(), this.f32318c.m24794n(), this.f32318c.m24791k(), this.f32318c.m24789i()), i, this.f32318c.m24792l(), this.f32318c.m24793m());
        }
    }

    /* renamed from: com.google.android.material.shape.ShapePath$c */
    /* loaded from: classes6.dex */
    public static class C5375c extends AbstractC5377e {

        /* renamed from: c */
        public final PathLineOperation f32319c;

        /* renamed from: d */
        public final PathLineOperation f32320d;

        /* renamed from: e */
        public final float f32321e;

        /* renamed from: f */
        public final float f32322f;

        public C5375c(PathLineOperation pathLineOperation, PathLineOperation pathLineOperation2, float f, float f2) {
            this.f32319c = pathLineOperation;
            this.f32320d = pathLineOperation2;
            this.f32321e = f;
            this.f32322f = f2;
        }

        @Override // com.google.android.material.shape.ShapePath.AbstractC5377e
        /* renamed from: a */
        public void mo24829a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            ShadowRenderer shadowRenderer2;
            float m24832e = m24832e();
            if (m24832e > 0.0f) {
                return;
            }
            double hypot = Math.hypot(this.f32319c.f32313a - this.f32321e, this.f32319c.f32314b - this.f32322f);
            double hypot2 = Math.hypot(this.f32320d.f32313a - this.f32319c.f32313a, this.f32320d.f32314b - this.f32319c.f32314b);
            float min = (float) Math.min(i, Math.min(hypot, hypot2));
            double d = min;
            double tan = Math.tan(Math.toRadians((-m24832e) / 2.0f)) * d;
            if (hypot > tan) {
                RectF rectF = new RectF(0.0f, 0.0f, (float) (hypot - tan), 0.0f);
                this.f32327a.set(matrix);
                this.f32327a.preTranslate(this.f32321e, this.f32322f);
                this.f32327a.preRotate(m24831d());
                shadowRenderer2 = shadowRenderer;
                shadowRenderer2.drawEdgeShadow(canvas, this.f32327a, rectF, i);
            } else {
                shadowRenderer2 = shadowRenderer;
            }
            float f = 2.0f * min;
            RectF rectF2 = new RectF(0.0f, 0.0f, f, f);
            this.f32327a.set(matrix);
            this.f32327a.preTranslate(this.f32319c.f32313a, this.f32319c.f32314b);
            this.f32327a.preRotate(m24831d());
            this.f32327a.preTranslate((float) ((-tan) - d), (-2.0f) * min);
            shadowRenderer.drawInnerCornerShadow(canvas, this.f32327a, rectF2, (int) min, 450.0f, m24832e, new float[]{(float) (d + tan), f});
            if (hypot2 > tan) {
                RectF rectF3 = new RectF(0.0f, 0.0f, (float) (hypot2 - tan), 0.0f);
                this.f32327a.set(matrix);
                this.f32327a.preTranslate(this.f32319c.f32313a, this.f32319c.f32314b);
                this.f32327a.preRotate(m24830c());
                this.f32327a.preTranslate((float) tan, 0.0f);
                shadowRenderer2.drawEdgeShadow(canvas, this.f32327a, rectF3, i);
            }
        }

        /* renamed from: c */
        public float m24830c() {
            return (float) Math.toDegrees(Math.atan((this.f32320d.f32314b - this.f32319c.f32314b) / (this.f32320d.f32313a - this.f32319c.f32313a)));
        }

        /* renamed from: d */
        public float m24831d() {
            return (float) Math.toDegrees(Math.atan((this.f32319c.f32314b - this.f32322f) / (this.f32319c.f32313a - this.f32321e)));
        }

        /* renamed from: e */
        public float m24832e() {
            float m24830c = ((m24830c() - m24831d()) + 360.0f) % 360.0f;
            return m24830c <= 180.0f ? m24830c : m24830c - 360.0f;
        }
    }

    /* renamed from: com.google.android.material.shape.ShapePath$d */
    /* loaded from: classes6.dex */
    public static class C5376d extends AbstractC5377e {

        /* renamed from: c */
        public final PathLineOperation f32323c;

        /* renamed from: d */
        public final float f32324d;

        /* renamed from: e */
        public final float f32325e;

        public C5376d(PathLineOperation pathLineOperation, float f, float f2) {
            this.f32323c = pathLineOperation;
            this.f32324d = f;
            this.f32325e = f2;
        }

        @Override // com.google.android.material.shape.ShapePath.AbstractC5377e
        /* renamed from: a */
        public void mo24829a(Matrix matrix, @NonNull ShadowRenderer shadowRenderer, int i, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f32323c.f32314b - this.f32325e, this.f32323c.f32313a - this.f32324d), 0.0f);
            this.f32327a.set(matrix);
            this.f32327a.preTranslate(this.f32324d, this.f32325e);
            this.f32327a.preRotate(m24833c());
            shadowRenderer.drawEdgeShadow(canvas, this.f32327a, rectF, i);
        }

        /* renamed from: c */
        public float m24833c() {
            return (float) Math.toDegrees(Math.atan((this.f32323c.f32314b - this.f32325e) / (this.f32323c.f32313a - this.f32324d)));
        }
    }

    /* renamed from: com.google.android.material.shape.ShapePath$e */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5377e {

        /* renamed from: b */
        public static final Matrix f32326b = new Matrix();

        /* renamed from: a */
        public final Matrix f32327a = new Matrix();

        /* renamed from: a */
        public abstract void mo24829a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas);

        /* renamed from: b */
        public final void m24834b(ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            mo24829a(f32326b, shadowRenderer, i, canvas);
        }
    }

    public ShapePath() {
        reset(0.0f, 0.0f);
    }

    /* renamed from: a */
    public final void m24765a(float f) {
        if (m24769e() == f) {
            return;
        }
        float m24769e = ((f - m24769e()) + 360.0f) % 360.0f;
        if (m24769e > 180.0f) {
            return;
        }
        PathArcOperation pathArcOperation = new PathArcOperation(m24771g(), m24772h(), m24771g(), m24772h());
        pathArcOperation.m24798r(m24769e());
        pathArcOperation.m24799s(m24769e);
        this.f32304b.add(new C5374b(pathArcOperation));
        m24775k(f);
    }

    public void addArc(float f, float f2, float f3, float f4, float f5, float f6) {
        PathArcOperation pathArcOperation = new PathArcOperation(f, f2, f3, f4);
        pathArcOperation.m24798r(f5);
        pathArcOperation.m24799s(f6);
        this.f32303a.add(pathArcOperation);
        C5374b c5374b = new C5374b(pathArcOperation);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        if (z) {
            f5 = (f5 + 180.0f) % 360.0f;
        }
        m24766b(c5374b, f5, z ? (180.0f + f7) % 360.0f : f7);
        double d = f7;
        m24777m(((f + f3) * 0.5f) + (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))));
        m24778n(((f2 + f4) * 0.5f) + (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))));
    }

    public void applyToPath(Matrix matrix, Path path) {
        int size = this.f32303a.size();
        for (int i = 0; i < size; i++) {
            this.f32303a.get(i).applyToPath(matrix, path);
        }
    }

    /* renamed from: b */
    public final void m24766b(AbstractC5377e abstractC5377e, float f, float f2) {
        m24765a(f);
        this.f32304b.add(abstractC5377e);
        m24775k(f2);
    }

    /* renamed from: c */
    public boolean m24767c() {
        return this.f32305c;
    }

    @RequiresApi(21)
    public void cubicToPoint(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f32303a.add(new PathCubicOperation(f, f2, f3, f4, f5, f6));
        this.f32305c = true;
        m24777m(f5);
        m24778n(f6);
    }

    @NonNull
    /* renamed from: d */
    public AbstractC5377e m24768d(Matrix matrix) {
        m24765a(m24770f());
        return new C5373a(new ArrayList(this.f32304b), new Matrix(matrix));
    }

    /* renamed from: e */
    public final float m24769e() {
        return this.currentShadowAngle;
    }

    /* renamed from: f */
    public final float m24770f() {
        return this.endShadowAngle;
    }

    /* renamed from: g */
    public float m24771g() {
        return this.endX;
    }

    /* renamed from: h */
    public float m24772h() {
        return this.endY;
    }

    /* renamed from: i */
    public float m24773i() {
        return this.startX;
    }

    /* renamed from: j */
    public float m24774j() {
        return this.startY;
    }

    /* renamed from: k */
    public final void m24775k(float f) {
        this.currentShadowAngle = f;
    }

    /* renamed from: l */
    public final void m24776l(float f) {
        this.endShadowAngle = f;
    }

    public void lineTo(float f, float f2) {
        PathLineOperation pathLineOperation = new PathLineOperation();
        pathLineOperation.f32313a = f;
        pathLineOperation.f32314b = f2;
        this.f32303a.add(pathLineOperation);
        C5376d c5376d = new C5376d(pathLineOperation, m24771g(), m24772h());
        m24766b(c5376d, c5376d.m24833c() + 270.0f, c5376d.m24833c() + 270.0f);
        m24777m(f);
        m24778n(f2);
    }

    /* renamed from: m */
    public final void m24777m(float f) {
        this.endX = f;
    }

    /* renamed from: n */
    public final void m24778n(float f) {
        this.endY = f;
    }

    /* renamed from: o */
    public final void m24779o(float f) {
        this.startX = f;
    }

    /* renamed from: p */
    public final void m24780p(float f) {
        this.startY = f;
    }

    @RequiresApi(21)
    public void quadToPoint(float f, float f2, float f3, float f4) {
        PathQuadOperation pathQuadOperation = new PathQuadOperation();
        pathQuadOperation.m24825i(f);
        pathQuadOperation.m24826j(f2);
        pathQuadOperation.m24827k(f3);
        pathQuadOperation.m24828l(f4);
        this.f32303a.add(pathQuadOperation);
        this.f32305c = true;
        m24777m(f3);
        m24778n(f4);
    }

    public void reset(float f, float f2) {
        reset(f, f2, 270.0f, 0.0f);
    }

    public void reset(float f, float f2, float f3, float f4) {
        m24779o(f);
        m24780p(f2);
        m24777m(f);
        m24778n(f2);
        m24775k(f3);
        m24776l((f3 + f4) % 360.0f);
        this.f32303a.clear();
        this.f32304b.clear();
        this.f32305c = false;
    }

    public ShapePath(float f, float f2) {
        reset(f, f2);
    }

    public void lineTo(float f, float f2, float f3, float f4) {
        if ((Math.abs(f - m24771g()) < 0.001f && Math.abs(f2 - m24772h()) < 0.001f) || (Math.abs(f - f3) < 0.001f && Math.abs(f2 - f4) < 0.001f)) {
            lineTo(f3, f4);
            return;
        }
        PathLineOperation pathLineOperation = new PathLineOperation();
        pathLineOperation.f32313a = f;
        pathLineOperation.f32314b = f2;
        this.f32303a.add(pathLineOperation);
        PathLineOperation pathLineOperation2 = new PathLineOperation();
        pathLineOperation2.f32313a = f3;
        pathLineOperation2.f32314b = f4;
        this.f32303a.add(pathLineOperation2);
        C5375c c5375c = new C5375c(pathLineOperation, pathLineOperation2, m24771g(), m24772h());
        if (c5375c.m24832e() > 0.0f) {
            lineTo(f, f2);
            lineTo(f3, f4);
        } else {
            m24766b(c5375c, c5375c.m24831d() + 270.0f, c5375c.m24830c() + 270.0f);
            m24777m(f3);
            m24778n(f4);
        }
    }
}
