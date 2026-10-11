package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.jnd;
import com.sunia.HTREnginev2.r2h;
import com.sunia.HTREnginev2.w4o;

@SuppressLint({"ViewConstructor"})
/* renamed from: androidx.transition.b */
/* loaded from: classes3.dex */
public class C1512b extends ViewGroup implements r2h {

    /* renamed from: e */
    public ViewGroup f10749e;

    /* renamed from: f */
    public View f10750f;

    /* renamed from: g */
    public final View f10751g;

    /* renamed from: h */
    public int f10752h;

    /* renamed from: i */
    @Nullable
    public Matrix f10753i;

    /* renamed from: j */
    public final ViewTreeObserver.OnPreDrawListener f10754j;

    /* renamed from: androidx.transition.b$a */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnPreDrawListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            View view;
            C1512b.this.postInvalidateOnAnimation();
            C1512b c1512b = C1512b.this;
            ViewGroup viewGroup = c1512b.f10749e;
            if (viewGroup == null || (view = c1512b.f10750f) == null) {
                return true;
            }
            viewGroup.endViewTransition(view);
            C1512b.this.f10749e.postInvalidateOnAnimation();
            C1512b c1512b2 = C1512b.this;
            c1512b2.f10749e = null;
            c1512b2.f10750f = null;
            return true;
        }
    }

    public C1512b(View view) {
        super(view.getContext());
        this.f10754j = new a();
        this.f10751g = view;
        setWillNotDraw(false);
        setClipChildren(false);
        setLayerType(2, null);
    }

    /* renamed from: b */
    public static C1512b m6656b(View view, ViewGroup viewGroup, Matrix matrix) {
        int i;
        C1511a c1511a;
        if (!(view.getParent() instanceof ViewGroup)) {
            throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
        }
        C1511a m6648b = C1511a.m6648b(viewGroup);
        C1512b m6659e = m6659e(view);
        if (m6659e == null || (c1511a = (C1511a) m6659e.getParent()) == m6648b) {
            i = 0;
        } else {
            i = m6659e.f10752h;
            c1511a.removeView(m6659e);
            m6659e = null;
        }
        if (m6659e == null) {
            if (matrix == null) {
                matrix = new Matrix();
                m6657c(view, viewGroup, matrix);
            }
            m6659e = new C1512b(view);
            m6659e.m6663h(matrix);
            if (m6648b == null) {
                m6648b = new C1511a(viewGroup);
            } else {
                m6648b.m6654g();
            }
            m6658d(viewGroup, m6648b);
            m6658d(viewGroup, m6659e);
            m6648b.m6652a(m6659e);
            m6659e.f10752h = i;
        } else if (matrix != null) {
            m6659e.m6663h(matrix);
        }
        m6659e.f10752h++;
        return m6659e;
    }

    /* renamed from: c */
    public static void m6657c(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        w4o.m57935h(viewGroup2, matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        w4o.m57936i(viewGroup, matrix);
    }

    /* renamed from: d */
    public static void m6658d(View view, View view2) {
        w4o.m57932e(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    /* renamed from: e */
    public static C1512b m6659e(View view) {
        return (C1512b) view.getTag(C1486R.id.ghost_view);
    }

    /* renamed from: f */
    public static void m6660f(View view) {
        C1512b m6659e = m6659e(view);
        if (m6659e != null) {
            int i = m6659e.f10752h - 1;
            m6659e.f10752h = i;
            if (i <= 0) {
                ((C1511a) m6659e.getParent()).removeView(m6659e);
            }
        }
    }

    /* renamed from: g */
    public static void m6661g(@NonNull View view, @Nullable C1512b c1512b) {
        view.setTag(C1486R.id.ghost_view, c1512b);
    }

    @Override // com.sunia.HTREnginev2.r2h
    /* renamed from: a */
    public void mo6662a(ViewGroup viewGroup, View view) {
        this.f10749e = viewGroup;
        this.f10750f = view;
    }

    /* renamed from: h */
    public void m6663h(@NonNull Matrix matrix) {
        this.f10753i = matrix;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m6661g(this.f10751g, this);
        this.f10751g.getViewTreeObserver().addOnPreDrawListener(this.f10754j);
        w4o.m57934g(this.f10751g, 4);
        if (this.f10751g.getParent() != null) {
            ((View) this.f10751g.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f10751g.getViewTreeObserver().removeOnPreDrawListener(this.f10754j);
        w4o.m57934g(this.f10751g, 0);
        m6661g(this.f10751g, null);
        if (this.f10751g.getParent() != null) {
            ((View) this.f10751g.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        jnd.m54979a(canvas, true);
        canvas.setMatrix(this.f10753i);
        w4o.m57934g(this.f10751g, 0);
        this.f10751g.invalidate();
        w4o.m57934g(this.f10751g, 4);
        drawChild(canvas, this.f10751g, getDrawingTime());
        jnd.m54979a(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View, com.sunia.HTREnginev2.r2h
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (m6659e(this.f10751g) == this) {
            w4o.m57934g(this.f10751g, i == 0 ? 4 : 0);
        }
    }
}
