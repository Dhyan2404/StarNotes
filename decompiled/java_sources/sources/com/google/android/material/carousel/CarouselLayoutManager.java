package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.carousel.C5201b;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.sunia.HTREnginev2.e9j;
import com.sunia.HTREnginev2.tnd;
import com.sunia.HTREnginev2.wnd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements tnd, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final int ALIGNMENT_CENTER = 1;
    public static final int ALIGNMENT_START = 0;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;

    /* renamed from: y0 */
    public static final String f30618y0 = "CarouselLayoutManager";

    /* renamed from: J */
    public final C5196c f30619J;

    /* renamed from: O */
    @NonNull
    public CarouselStrategy f30620O;

    /* renamed from: Q */
    @Nullable
    public C5202c f30621Q;

    /* renamed from: Z */
    @Nullable
    public C5201b f30622Z;

    /* renamed from: k0 */
    public int f30623k0;

    /* renamed from: q0 */
    @Nullable
    public Map<Integer, C5201b> f30624q0;

    /* renamed from: t0 */
    public wnd f30625t0;

    /* renamed from: u0 */
    public final View.OnLayoutChangeListener f30626u0;

    /* renamed from: v0 */
    public int f30627v0;

    /* renamed from: w */
    @VisibleForTesting
    public int f30628w;

    /* renamed from: w0 */
    public int f30629w0;

    /* renamed from: x */
    @VisibleForTesting
    public int f30630x;

    /* renamed from: x0 */
    public int f30631x0;

    /* renamed from: y */
    @VisibleForTesting
    public int f30632y;

    /* renamed from: z */
    public boolean f30633z;

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$a */
    /* loaded from: classes6.dex */
    public class C5194a extends LinearSmoothScroller {
        public C5194a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDxToMakeVisible(View view, int i) {
            if (CarouselLayoutManager.this.f30621Q == null || !CarouselLayoutManager.this.isHorizontal()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.m23300N(carouselLayoutManager.getPosition(view));
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDyToMakeVisible(View view, int i) {
            if (CarouselLayoutManager.this.f30621Q == null || CarouselLayoutManager.this.isHorizontal()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.m23300N(carouselLayoutManager.getPosition(view));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        @Nullable
        public PointF computeScrollVectorForPosition(int i) {
            return CarouselLayoutManager.this.computeScrollVectorForPosition(i);
        }
    }

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$b */
    /* loaded from: classes6.dex */
    public static final class C5195b {

        /* renamed from: a */
        public final View f30635a;

        /* renamed from: b */
        public final float f30636b;

        /* renamed from: c */
        public final float f30637c;

        /* renamed from: d */
        public final C5197d f30638d;

        public C5195b(View view, float f, float f2, C5197d c5197d) {
            this.f30635a = view;
            this.f30636b = f;
            this.f30637c = f2;
            this.f30638d = c5197d;
        }
    }

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$c */
    /* loaded from: classes6.dex */
    public static class C5196c extends RecyclerView.ItemDecoration {

        /* renamed from: a */
        public final Paint f30639a;

        /* renamed from: b */
        public List<C5201b.c> f30640b;

        public C5196c() {
            Paint paint = new Paint();
            this.f30639a = paint;
            this.f30640b = Collections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        /* renamed from: a */
        public void m23336a(List<C5201b.c> list) {
            this.f30640b = Collections.unmodifiableList(list);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            super.onDrawOver(canvas, recyclerView, state);
            this.f30639a.setStrokeWidth(recyclerView.getResources().getDimension(C5139R.dimen.m3_carousel_debug_keyline_width));
            for (C5201b.c cVar : this.f30640b) {
                this.f30639a.setColor(ColorUtils.blendARGB(-65281, -16776961, cVar.f30685c));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).isHorizontal()) {
                    canvas.drawLine(cVar.f30684b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).m23319h0(), cVar.f30684b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).m23314c0(), this.f30639a);
                } else {
                    canvas.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).m23316e0(), cVar.f30684b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).m23317f0(), cVar.f30684b, this.f30639a);
                }
            }
        }
    }

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$d */
    /* loaded from: classes6.dex */
    public static class C5197d {

        /* renamed from: a */
        public final C5201b.c f30641a;

        /* renamed from: b */
        public final C5201b.c f30642b;

        public C5197d(C5201b.c cVar, C5201b.c cVar2) {
            Preconditions.checkArgument(cVar.f30683a <= cVar2.f30683a);
            this.f30641a = cVar;
            this.f30642b = cVar2;
        }
    }

    /* renamed from: com.google.android.material.carousel.CarouselLayoutManager$e */
    /* loaded from: classes6.dex */
    public static class C5198e {

        /* renamed from: a */
        public static final int f30643a = -1;

        /* renamed from: b */
        public static final int f30644b = 1;

        /* renamed from: c */
        public static final int f30645c = Integer.MIN_VALUE;
    }

    public CarouselLayoutManager() {
        this(new MultiBrowseCarouselStrategy());
    }

    /* renamed from: O */
    public static int m23282O(int i, int i2, int i3, int i4) {
        int i5 = i2 + i;
        return i5 < i3 ? i3 - i2 : i5 > i4 ? i4 - i2 : i;
    }

    /* renamed from: l0 */
    public static C5197d m23283l0(List<C5201b.c> list, float f, boolean z) {
        float f2 = Float.MAX_VALUE;
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        float f3 = -3.4028235E38f;
        float f4 = Float.MAX_VALUE;
        float f5 = Float.MAX_VALUE;
        for (int i5 = 0; i5 < list.size(); i5++) {
            C5201b.c cVar = list.get(i5);
            float f6 = z ? cVar.f30684b : cVar.f30683a;
            float abs = Math.abs(f6 - f);
            if (f6 <= f && abs <= f2) {
                i = i5;
                f2 = abs;
            }
            if (f6 > f && abs <= f4) {
                i3 = i5;
                f4 = abs;
            }
            if (f6 <= f5) {
                i2 = i5;
                f5 = f6;
            }
            if (f6 > f3) {
                i4 = i5;
                f3 = f6;
            }
        }
        if (i == -1) {
            i = i2;
        }
        if (i3 == -1) {
            i3 = i4;
        }
        return new C5197d(list.get(i), list.get(i3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m23284p0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        view.post(new Runnable() { // from class: com.sunia.HTREnginev2.und
            @Override // java.lang.Runnable
            public final void run() {
                CarouselLayoutManager.this.m23330u0();
            }
        });
    }

    /* renamed from: A0 */
    public final void m23288A0(@NonNull C5202c c5202c) {
        int i = this.f30632y;
        int i2 = this.f30630x;
        if (i <= i2) {
            this.f30622Z = m23323m0() ? c5202c.m23412h() : c5202c.m23416l();
        } else {
            this.f30622Z = c5202c.m23414j(this.f30628w, i2, i);
        }
        this.f30619J.m23336a(this.f30622Z.m23378g());
    }

    /* renamed from: B0 */
    public final void m23289B0() {
        int itemCount = getItemCount();
        int i = this.f30627v0;
        if (itemCount == i || this.f30621Q == null) {
            return;
        }
        if (this.f30620O.mo23349f(this, i)) {
            m23330u0();
        }
        this.f30627v0 = itemCount;
    }

    /* renamed from: C0 */
    public final void m23290C0() {
        if (!this.f30633z || getChildCount() < 1) {
            return;
        }
        int i = 0;
        while (i < getChildCount() - 1) {
            int position = getPosition(getChildAt(i));
            int i2 = i + 1;
            int position2 = getPosition(getChildAt(i2));
            if (position > position2) {
                m23326q0();
                throw new IllegalStateException("Detected invalid child order. Child at index [" + i + "] had adapter position [" + position + "] and child at index [" + i2 + "] had adapter position [" + position2 + "].");
            }
            i = i2;
        }
    }

    /* renamed from: E */
    public final void m23291E(View view, int i, C5195b c5195b) {
        float m23377f = this.f30622Z.m23377f() / 2.0f;
        addView(view, i);
        float f = c5195b.f30637c;
        this.f30625t0.mo58107n(view, (int) (f - m23377f), (int) (f + m23377f));
        m23335z0(view, c5195b.f30636b, c5195b.f30638d);
    }

    /* renamed from: F */
    public final float m23292F(float f, float f2) {
        return m23323m0() ? f - f2 : f + f2;
    }

    /* renamed from: G */
    public final float m23293G(float f, float f2) {
        return m23323m0() ? f + f2 : f - f2;
    }

    /* renamed from: H */
    public final void m23294H(@NonNull RecyclerView.Recycler recycler, int i, int i2) {
        if (i < 0 || i >= getItemCount()) {
            return;
        }
        C5195b m23327r0 = m23327r0(recycler, m23298L(i), i);
        m23291E(m23327r0.f30635a, i2, m23327r0);
    }

    /* renamed from: I */
    public final void m23295I(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        float m23298L = m23298L(i);
        while (i < state.getItemCount()) {
            C5195b m23327r0 = m23327r0(recycler, m23298L, i);
            if (m23324n0(m23327r0.f30637c, m23327r0.f30638d)) {
                return;
            }
            m23298L = m23292F(m23298L, this.f30622Z.m23377f());
            if (!m23325o0(m23327r0.f30637c, m23327r0.f30638d)) {
                m23291E(m23327r0.f30635a, -1, m23327r0);
            }
            i++;
        }
    }

    /* renamed from: J */
    public final void m23296J(RecyclerView.Recycler recycler, int i) {
        float m23298L = m23298L(i);
        while (i >= 0) {
            C5195b m23327r0 = m23327r0(recycler, m23298L, i);
            if (m23325o0(m23327r0.f30637c, m23327r0.f30638d)) {
                return;
            }
            m23298L = m23293G(m23298L, this.f30622Z.m23377f());
            if (!m23324n0(m23327r0.f30637c, m23327r0.f30638d)) {
                m23291E(m23327r0.f30635a, 0, m23327r0);
            }
            i--;
        }
    }

    /* renamed from: K */
    public final float m23297K(View view, float f, C5197d c5197d) {
        C5201b.c cVar = c5197d.f30641a;
        float f2 = cVar.f30684b;
        C5201b.c cVar2 = c5197d.f30642b;
        float lerp = AnimationUtils.lerp(f2, cVar2.f30684b, cVar.f30683a, cVar2.f30683a, f);
        if (c5197d.f30642b != this.f30622Z.m23374c() && c5197d.f30641a != this.f30622Z.m23381j()) {
            return lerp;
        }
        float mo58099f = this.f30625t0.mo58099f((RecyclerView.LayoutParams) view.getLayoutParams()) / this.f30622Z.m23377f();
        C5201b.c cVar3 = c5197d.f30642b;
        return lerp + ((f - cVar3.f30683a) * ((1.0f - cVar3.f30685c) + mo58099f));
    }

    /* renamed from: L */
    public final float m23298L(int i) {
        return m23292F(m23318g0() - this.f30628w, this.f30622Z.m23377f() * i);
    }

    /* renamed from: M */
    public final int m23299M(RecyclerView.State state, C5202c c5202c) {
        boolean m23323m0 = m23323m0();
        C5201b m23416l = m23323m0 ? c5202c.m23416l() : c5202c.m23412h();
        C5201b.c m23372a = m23323m0 ? m23416l.m23372a() : m23416l.m23379h();
        int itemCount = (int) (((((state.getItemCount() - 1) * m23416l.m23377f()) * (m23323m0 ? -1.0f : 1.0f)) - (m23372a.f30683a - m23318g0())) + (m23315d0() - m23372a.f30683a) + (m23323m0 ? -m23372a.f30689g : m23372a.f30690h));
        return m23323m0 ? Math.min(0, itemCount) : Math.max(0, itemCount);
    }

    /* renamed from: N */
    public int m23300N(int i) {
        return (int) (this.f30628w - m23321j0(i, m23309X(i)));
    }

    /* renamed from: P */
    public final int m23301P(@NonNull C5202c c5202c) {
        boolean m23323m0 = m23323m0();
        C5201b m23412h = m23323m0 ? c5202c.m23412h() : c5202c.m23416l();
        return (int) (m23318g0() - m23293G((m23323m0 ? m23412h.m23379h() : m23412h.m23372a()).f30683a, m23412h.m23377f() / 2.0f));
    }

    /* renamed from: Q */
    public final int m23302Q(int i) {
        int orientation = getOrientation();
        if (i == 1) {
            return -1;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 17) {
            if (orientation == 0) {
                return m23323m0() ? 1 : -1;
            }
            return Integer.MIN_VALUE;
        }
        if (i == 33) {
            return orientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 66) {
            if (orientation == 0) {
                return m23323m0() ? -1 : 1;
            }
            return Integer.MIN_VALUE;
        }
        if (i == 130) {
            return orientation == 1 ? 1 : Integer.MIN_VALUE;
        }
        Log.d(f30618y0, "Unknown focus request:" + i);
        return Integer.MIN_VALUE;
    }

    /* renamed from: R */
    public final void m23303R(RecyclerView.Recycler recycler, RecyclerView.State state) {
        m23331v0(recycler);
        if (getChildCount() == 0) {
            m23296J(recycler, this.f30623k0 - 1);
            m23295I(recycler, state, this.f30623k0);
        } else {
            int position = getPosition(getChildAt(0));
            int position2 = getPosition(getChildAt(getChildCount() - 1));
            m23296J(recycler, position - 1);
            m23295I(recycler, state, position2 + 1);
        }
        m23290C0();
    }

    /* renamed from: S */
    public final View m23304S() {
        return getChildAt(m23323m0() ? 0 : getChildCount() - 1);
    }

    /* renamed from: T */
    public final View m23305T() {
        return getChildAt(m23323m0() ? getChildCount() - 1 : 0);
    }

    /* renamed from: U */
    public final int m23306U() {
        return isHorizontal() ? getContainerWidth() : getContainerHeight();
    }

    /* renamed from: V */
    public final float m23307V(View view) {
        super.getDecoratedBoundsWithMargins(view, new Rect());
        return isHorizontal() ? r0.centerX() : r0.centerY();
    }

    /* renamed from: W */
    public final int m23308W() {
        int i;
        int i2;
        if (getChildCount() <= 0) {
            return 0;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) getChildAt(0).getLayoutParams();
        if (this.f30625t0.f88795a == 0) {
            i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        } else {
            i = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            i2 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i + i2;
    }

    /* renamed from: X */
    public final C5201b m23309X(int i) {
        C5201b c5201b;
        Map<Integer, C5201b> map = this.f30624q0;
        return (map == null || (c5201b = map.get(Integer.valueOf(MathUtils.clamp(i, 0, Math.max(0, getItemCount() + (-1)))))) == null) ? this.f30621Q.m23411g() : c5201b;
    }

    /* renamed from: Y */
    public final int m23310Y() {
        if (getClipToPadding() || !this.f30620O.mo23347d()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingTop() : getPaddingLeft();
    }

    /* renamed from: Z */
    public final float m23311Z(float f, C5197d c5197d) {
        C5201b.c cVar = c5197d.f30641a;
        float f2 = cVar.f30686d;
        C5201b.c cVar2 = c5197d.f30642b;
        return AnimationUtils.lerp(f2, cVar2.f30686d, cVar.f30684b, cVar2.f30684b, f);
    }

    /* renamed from: a0 */
    public int m23312a0(int i, @NonNull C5201b c5201b) {
        return m23321j0(i, c5201b) - this.f30628w;
    }

    /* renamed from: b0 */
    public int m23313b0(int i, boolean z) {
        int m23312a0 = m23312a0(i, this.f30621Q.m23415k(this.f30628w, this.f30630x, this.f30632y, true));
        int m23312a02 = this.f30624q0 != null ? m23312a0(i, m23309X(i)) : m23312a0;
        return (!z || Math.abs(m23312a02) >= Math.abs(m23312a0)) ? m23312a0 : m23312a02;
    }

    /* renamed from: c0 */
    public final int m23314c0() {
        return this.f30625t0.mo58101h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return isHorizontal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return !isHorizontal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        if (getChildCount() == 0 || this.f30621Q == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getWidth() * (this.f30621Q.m23411g().m23377f() / computeHorizontalScrollRange(state)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return this.f30628w;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return this.f30632y - this.f30630x;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    @Nullable
    public PointF computeScrollVectorForPosition(int i) {
        if (this.f30621Q == null) {
            return null;
        }
        int m23312a0 = m23312a0(i, m23309X(i));
        return isHorizontal() ? new PointF(m23312a0, 0.0f) : new PointF(0.0f, m23312a0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        if (getChildCount() == 0 || this.f30621Q == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getHeight() * (this.f30621Q.m23411g().m23377f() / computeVerticalScrollRange(state)));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return this.f30628w;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return this.f30632y - this.f30630x;
    }

    /* renamed from: d0 */
    public final int m23315d0() {
        return this.f30625t0.mo58102i();
    }

    /* renamed from: e0 */
    public final int m23316e0() {
        return this.f30625t0.mo58103j();
    }

    /* renamed from: f0 */
    public final int m23317f0() {
        return this.f30625t0.mo58104k();
    }

    /* renamed from: g0 */
    public final int m23318g0() {
        return this.f30625t0.mo58105l();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // com.sunia.HTREnginev2.tnd
    public int getCarouselAlignment() {
        return this.f30631x0;
    }

    @Override // com.sunia.HTREnginev2.tnd
    public int getContainerHeight() {
        return getHeight();
    }

    @Override // com.sunia.HTREnginev2.tnd
    public int getContainerWidth() {
        return getWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        float centerY = rect.centerY();
        if (isHorizontal()) {
            centerY = rect.centerX();
        }
        float m23311Z = m23311Z(centerY, m23283l0(this.f30622Z.m23378g(), centerY, true));
        float width = isHorizontal() ? (rect.width() - m23311Z) / 2.0f : 0.0f;
        float height = isHorizontal() ? 0.0f : (rect.height() - m23311Z) / 2.0f;
        rect.set((int) (rect.left + width), (int) (rect.top + height), (int) (rect.right - width), (int) (rect.bottom - height));
    }

    public int getOrientation() {
        return this.f30625t0.f88795a;
    }

    /* renamed from: h0 */
    public final int m23319h0() {
        return this.f30625t0.mo58106m();
    }

    /* renamed from: i0 */
    public final int m23320i0() {
        if (getClipToPadding() || !this.f30620O.mo23347d()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingBottom() : getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // com.sunia.HTREnginev2.tnd
    public boolean isHorizontal() {
        return this.f30625t0.f88795a == 0;
    }

    /* renamed from: j0 */
    public final int m23321j0(int i, C5201b c5201b) {
        return (int) (m23323m0() ? ((m23306U() - c5201b.m23379h().f30683a) - (i * c5201b.m23377f())) - (c5201b.m23377f() / 2.0f) : ((i * c5201b.m23377f()) - c5201b.m23372a().f30683a) + (c5201b.m23377f() / 2.0f));
    }

    /* renamed from: k0 */
    public final int m23322k0(int i, @NonNull C5201b c5201b) {
        int i2 = Integer.MAX_VALUE;
        for (C5201b.c cVar : c5201b.m23376e()) {
            float m23377f = (i * c5201b.m23377f()) + (c5201b.m23377f() / 2.0f);
            int m23306U = (m23323m0() ? (int) ((m23306U() - cVar.f30683a) - m23377f) : (int) (m23377f - cVar.f30683a)) - this.f30628w;
            if (Math.abs(i2) > Math.abs(m23306U)) {
                i2 = m23306U;
            }
        }
        return i2;
    }

    /* renamed from: m0 */
    public boolean m23323m0() {
        return isHorizontal() && getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void measureChildWithMargins(@NonNull View view, int i, int i2) {
        if (!(view instanceof e9j)) {
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        Rect rect = new Rect();
        calculateItemDecorationsForChild(view, rect);
        int i3 = i + rect.left + rect.right;
        int i4 = i2 + rect.top + rect.bottom;
        C5202c c5202c = this.f30621Q;
        float m23377f = (c5202c == null || this.f30625t0.f88795a != 0) ? ((ViewGroup.MarginLayoutParams) layoutParams).width : c5202c.m23411g().m23377f();
        C5202c c5202c2 = this.f30621Q;
        view.measure(RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i3, (int) m23377f, canScrollHorizontally()), RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i4, (int) ((c5202c2 == null || this.f30625t0.f88795a != 1) ? ((ViewGroup.MarginLayoutParams) layoutParams).height : c5202c2.m23411g().m23377f()), canScrollVertically()));
    }

    /* renamed from: n0 */
    public final boolean m23324n0(float f, C5197d c5197d) {
        float m23293G = m23293G(f, m23311Z(f, c5197d) / 2.0f);
        if (m23323m0()) {
            if (m23293G < 0.0f) {
                return true;
            }
        } else if (m23293G > m23306U()) {
            return true;
        }
        return false;
    }

    /* renamed from: o0 */
    public final boolean m23325o0(float f, C5197d c5197d) {
        float m23292F = m23292F(f, m23311Z(f, c5197d) / 2.0f);
        if (m23323m0()) {
            if (m23292F > m23306U()) {
                return true;
            }
        } else if (m23292F < 0.0f) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f30620O.m23346c(recyclerView.getContext());
        m23330u0();
        recyclerView.addOnLayoutChangeListener(this.f30626u0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        recyclerView.removeOnLayoutChangeListener(this.f30626u0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public View onFocusSearchFailed(@NonNull View view, int i, @NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state) {
        int m23302Q;
        if (getChildCount() == 0 || (m23302Q = m23302Q(i)) == Integer.MIN_VALUE) {
            return null;
        }
        if (m23302Q == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            m23294H(recycler, getPosition(getChildAt(0)) - 1, 0);
            return m23305T();
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        m23294H(recycler, getPosition(getChildAt(getChildCount() - 1)) + 1, -1);
        return m23304S();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        m23289B0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        m23289B0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() <= 0 || m23306U() <= 0.0f) {
            removeAndRecycleAllViews(recycler);
            this.f30623k0 = 0;
            return;
        }
        boolean m23323m0 = m23323m0();
        boolean z = this.f30621Q == null;
        if (z) {
            m23329t0(recycler);
        }
        int m23301P = m23301P(this.f30621Q);
        int m23299M = m23299M(state, this.f30621Q);
        this.f30630x = m23323m0 ? m23299M : m23301P;
        if (m23323m0) {
            m23299M = m23301P;
        }
        this.f30632y = m23299M;
        if (z) {
            this.f30628w = m23301P;
            this.f30624q0 = this.f30621Q.m23413i(getItemCount(), this.f30630x, this.f30632y, m23323m0());
            int i = this.f30629w0;
            if (i != -1) {
                this.f30628w = m23321j0(i, m23309X(i));
            }
        }
        int i2 = this.f30628w;
        this.f30628w = i2 + m23282O(0, i2, this.f30630x, this.f30632y);
        this.f30623k0 = MathUtils.clamp(this.f30623k0, 0, state.getItemCount());
        m23288A0(this.f30621Q);
        detachAndScrapAttachedViews(recycler);
        m23303R(recycler, state);
        this.f30627v0 = getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        if (getChildCount() == 0) {
            this.f30623k0 = 0;
        } else {
            this.f30623k0 = getPosition(getChildAt(0));
        }
        m23290C0();
    }

    /* renamed from: q0 */
    public final void m23326q0() {
        if (this.f30633z && Log.isLoggable(f30618y0, 3)) {
            Log.d(f30618y0, "internal representation of views on the screen");
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                Log.d(f30618y0, "item position " + getPosition(childAt) + ", center:" + m23307V(childAt) + ", child index:" + i);
            }
            Log.d(f30618y0, "==============");
        }
    }

    /* renamed from: r0 */
    public final C5195b m23327r0(RecyclerView.Recycler recycler, float f, int i) {
        View viewForPosition = recycler.getViewForPosition(i);
        measureChildWithMargins(viewForPosition, 0, 0);
        float m23292F = m23292F(f, this.f30622Z.m23377f() / 2.0f);
        C5197d m23283l0 = m23283l0(this.f30622Z.m23378g(), m23292F, false);
        return new C5195b(viewForPosition, m23292F, m23297K(viewForPosition, m23292F, m23283l0), m23283l0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
        int m23322k0;
        if (this.f30621Q == null || (m23322k0 = m23322k0(getPosition(view), m23309X(getPosition(view)))) == 0) {
            return false;
        }
        m23333x0(recyclerView, m23322k0(getPosition(view), this.f30621Q.m23414j(this.f30628w + m23282O(m23322k0, this.f30628w, this.f30630x, this.f30632y), this.f30630x, this.f30632y)));
        return true;
    }

    /* renamed from: s0 */
    public final float m23328s0(View view, float f, float f2, Rect rect) {
        float m23292F = m23292F(f, f2);
        C5197d m23283l0 = m23283l0(this.f30622Z.m23378g(), m23292F, false);
        float m23297K = m23297K(view, m23292F, m23283l0);
        super.getDecoratedBoundsWithMargins(view, rect);
        m23335z0(view, m23292F, m23283l0);
        this.f30625t0.mo58109p(view, rect, f2, m23297K);
        return m23297K;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (canScrollHorizontally()) {
            return m23332w0(i, recycler, state);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.f30629w0 = i;
        if (this.f30621Q == null) {
            return;
        }
        this.f30628w = m23321j0(i, m23309X(i));
        this.f30623k0 = MathUtils.clamp(i, 0, Math.max(0, getItemCount() - 1));
        m23288A0(this.f30621Q);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (canScrollVertically()) {
            return m23332w0(i, recycler, state);
        }
        return 0;
    }

    public void setCarouselAlignment(int i) {
        this.f30631x0 = i;
        m23330u0();
    }

    public void setCarouselStrategy(@NonNull CarouselStrategy carouselStrategy) {
        this.f30620O = carouselStrategy;
        m23330u0();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setDebuggingEnabled(@NonNull RecyclerView recyclerView, boolean z) {
        this.f30633z = z;
        recyclerView.removeItemDecoration(this.f30619J);
        if (z) {
            recyclerView.addItemDecoration(this.f30619J);
        }
        recyclerView.invalidateItemDecorations();
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        wnd wndVar = this.f30625t0;
        if (wndVar == null || i != wndVar.f88795a) {
            this.f30625t0 = wnd.m58095c(this, i);
            m23330u0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        C5194a c5194a = new C5194a(recyclerView.getContext());
        c5194a.setTargetPosition(i);
        startSmoothScroll(c5194a);
    }

    /* renamed from: t0 */
    public final void m23329t0(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(0);
        measureChildWithMargins(viewForPosition, 0, 0);
        C5201b mo23348e = this.f30620O.mo23348e(this, viewForPosition);
        if (m23323m0()) {
            mo23348e = C5201b.m23371n(mo23348e, m23306U());
        }
        this.f30621Q = C5202c.m23399f(this, mo23348e, m23308W(), m23310Y(), m23320i0());
    }

    /* renamed from: u0 */
    public final void m23330u0() {
        this.f30621Q = null;
        requestLayout();
    }

    /* renamed from: v0 */
    public final void m23331v0(RecyclerView.Recycler recycler) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            float m23307V = m23307V(childAt);
            if (!m23325o0(m23307V, m23283l0(this.f30622Z.m23378g(), m23307V, true))) {
                break;
            } else {
                removeAndRecycleView(childAt, recycler);
            }
        }
        while (getChildCount() - 1 >= 0) {
            View childAt2 = getChildAt(getChildCount() - 1);
            float m23307V2 = m23307V(childAt2);
            if (!m23324n0(m23307V2, m23283l0(this.f30622Z.m23378g(), m23307V2, true))) {
                return;
            } else {
                removeAndRecycleView(childAt2, recycler);
            }
        }
    }

    /* renamed from: w0 */
    public final int m23332w0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        if (this.f30621Q == null) {
            m23329t0(recycler);
        }
        int m23282O = m23282O(i, this.f30628w, this.f30630x, this.f30632y);
        this.f30628w += m23282O;
        m23288A0(this.f30621Q);
        float m23377f = this.f30622Z.m23377f() / 2.0f;
        float m23298L = m23298L(getPosition(getChildAt(0)));
        Rect rect = new Rect();
        float f = m23323m0() ? this.f30622Z.m23379h().f30684b : this.f30622Z.m23372a().f30684b;
        float f2 = Float.MAX_VALUE;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            float abs = Math.abs(f - m23328s0(childAt, m23298L, m23377f, rect));
            if (childAt != null && abs < f2) {
                this.f30629w0 = getPosition(childAt);
                f2 = abs;
            }
            m23298L = m23292F(m23298L, this.f30622Z.m23377f());
        }
        m23303R(recycler, state);
        return m23282O;
    }

    /* renamed from: x0 */
    public final void m23333x0(RecyclerView recyclerView, int i) {
        if (isHorizontal()) {
            recyclerView.scrollBy(i, 0);
        } else {
            recyclerView.scrollBy(0, i);
        }
    }

    /* renamed from: y0 */
    public final void m23334y0(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.Carousel);
            setCarouselAlignment(obtainStyledAttributes.getInt(C5139R.styleable.Carousel_carousel_alignment, 0));
            setOrientation(obtainStyledAttributes.getInt(C5139R.styleable.RecyclerView_android_orientation, 0));
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: z0 */
    public final void m23335z0(View view, float f, C5197d c5197d) {
        if (view instanceof e9j) {
            C5201b.c cVar = c5197d.f30641a;
            float f2 = cVar.f30685c;
            C5201b.c cVar2 = c5197d.f30642b;
            float lerp = AnimationUtils.lerp(f2, cVar2.f30685c, cVar.f30683a, cVar2.f30683a, f);
            float height = view.getHeight();
            float width = view.getWidth();
            RectF mo58100g = this.f30625t0.mo58100g(height, width, AnimationUtils.lerp(0.0f, height / 2.0f, 0.0f, 1.0f, lerp), AnimationUtils.lerp(0.0f, width / 2.0f, 0.0f, 1.0f, lerp));
            float m23297K = m23297K(view, f, c5197d);
            RectF rectF = new RectF(m23297K - (mo58100g.width() / 2.0f), m23297K - (mo58100g.height() / 2.0f), m23297K + (mo58100g.width() / 2.0f), (mo58100g.height() / 2.0f) + m23297K);
            RectF rectF2 = new RectF(m23316e0(), m23319h0(), m23317f0(), m23314c0());
            if (this.f30620O.mo23347d()) {
                this.f30625t0.mo58097a(mo58100g, rectF, rectF2);
            }
            this.f30625t0.mo58108o(mo58100g, rectF, rectF2);
            ((e9j) view).setMaskRectF(mo58100g);
        }
    }

    public CarouselLayoutManager(@NonNull CarouselStrategy carouselStrategy) {
        this(carouselStrategy, 0);
    }

    public CarouselLayoutManager(@NonNull CarouselStrategy carouselStrategy, int i) {
        this.f30633z = false;
        this.f30619J = new C5196c();
        this.f30623k0 = 0;
        this.f30626u0 = new View.OnLayoutChangeListener() { // from class: com.sunia.HTREnginev2.vnd
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                CarouselLayoutManager.this.m23284p0(view, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        };
        this.f30629w0 = -1;
        this.f30631x0 = 0;
        setCarouselStrategy(carouselStrategy);
        setOrientation(i);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f30633z = false;
        this.f30619J = new C5196c();
        this.f30623k0 = 0;
        this.f30626u0 = new View.OnLayoutChangeListener() { // from class: com.sunia.HTREnginev2.vnd
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i22, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                CarouselLayoutManager.this.m23284p0(view, i22, i3, i4, i5, i6, i7, i8, i9);
            }
        };
        this.f30629w0 = -1;
        this.f30631x0 = 0;
        setCarouselStrategy(new MultiBrowseCarouselStrategy());
        m23334y0(context, attributeSet);
    }
}
