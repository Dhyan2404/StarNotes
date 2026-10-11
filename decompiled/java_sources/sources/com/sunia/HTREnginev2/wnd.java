package com.sunia.HTREnginev2;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes6.dex */
public abstract class wnd {

    /* renamed from: a */
    public final int f88795a;

    /* renamed from: com.sunia.HTREnginev2.wnd$a */
    /* loaded from: classes6.dex */
    public class C14611a extends wnd {

        /* renamed from: b */
        public final /* synthetic */ CarouselLayoutManager f88796b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14611a(int i, CarouselLayoutManager carouselLayoutManager) {
            super(i, null);
            this.f88796b = carouselLayoutManager;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: a */
        public void mo58097a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f = rectF2.top;
            float f2 = rectF3.top;
            if (f < f2 && rectF2.bottom > f2) {
                float f3 = f2 - f;
                rectF.top += f3;
                rectF3.top += f3;
            }
            float f4 = rectF2.bottom;
            float f5 = rectF3.bottom;
            if (f4 <= f5 || rectF2.top >= f5) {
                return;
            }
            float f6 = f4 - f5;
            rectF.bottom = Math.max(rectF.bottom - f6, rectF.top);
            rectF2.bottom = Math.max(rectF2.bottom - f6, rectF2.top);
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: e */
        public int mo58098e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f88796b.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: f */
        public float mo58099f(RecyclerView.LayoutParams layoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: g */
        public RectF mo58100g(float f, float f2, float f3, float f4) {
            return new RectF(0.0f, f3, f2, f - f3);
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: h */
        public int mo58101h() {
            return this.f88796b.getHeight();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: i */
        public int mo58102i() {
            return mo58101h();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: j */
        public int mo58103j() {
            return this.f88796b.getPaddingLeft();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: k */
        public int mo58104k() {
            return this.f88796b.getWidth() - this.f88796b.getPaddingRight();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: l */
        public int mo58105l() {
            return mo58106m();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: m */
        public int mo58106m() {
            return 0;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: n */
        public void mo58107n(View view, int i, int i2) {
            int mo58103j = mo58103j();
            this.f88796b.layoutDecoratedWithMargins(view, mo58103j, i, mo58103j + mo58098e(view), i2);
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: o */
        public void mo58108o(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.bottom <= rectF3.top) {
                float floor = ((float) Math.floor(rectF.bottom)) - 1.0f;
                rectF.bottom = floor;
                rectF.top = Math.min(rectF.top, floor);
            }
            if (rectF2.top >= rectF3.bottom) {
                float ceil = ((float) Math.ceil(rectF.top)) + 1.0f;
                rectF.top = ceil;
                rectF.bottom = Math.max(ceil, rectF.bottom);
            }
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: p */
        public void mo58109p(View view, Rect rect, float f, float f2) {
            view.offsetTopAndBottom((int) (f2 - (rect.top + f)));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.wnd$b */
    /* loaded from: classes6.dex */
    public class C14612b extends wnd {

        /* renamed from: b */
        public final /* synthetic */ CarouselLayoutManager f88797b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14612b(int i, CarouselLayoutManager carouselLayoutManager) {
            super(i, null);
            this.f88797b = carouselLayoutManager;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: a */
        public void mo58097a(RectF rectF, RectF rectF2, RectF rectF3) {
            float f = rectF2.left;
            float f2 = rectF3.left;
            if (f < f2 && rectF2.right > f2) {
                float f3 = f2 - f;
                rectF.left += f3;
                rectF2.left += f3;
            }
            float f4 = rectF2.right;
            float f5 = rectF3.right;
            if (f4 <= f5 || rectF2.left >= f5) {
                return;
            }
            float f6 = f4 - f5;
            rectF.right = Math.max(rectF.right - f6, rectF.left);
            rectF2.right = Math.max(rectF2.right - f6, rectF2.left);
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: e */
        public int mo58098e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f88797b.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: f */
        public float mo58099f(RecyclerView.LayoutParams layoutParams) {
            return ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: g */
        public RectF mo58100g(float f, float f2, float f3, float f4) {
            return new RectF(f4, 0.0f, f2 - f4, f);
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: h */
        public int mo58101h() {
            return this.f88797b.getHeight() - this.f88797b.getPaddingBottom();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: i */
        public int mo58102i() {
            return this.f88797b.m23323m0() ? mo58103j() : mo58104k();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: j */
        public int mo58103j() {
            return 0;
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: k */
        public int mo58104k() {
            return this.f88797b.getWidth();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: l */
        public int mo58105l() {
            return this.f88797b.m23323m0() ? mo58104k() : mo58103j();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: m */
        public int mo58106m() {
            return this.f88797b.getPaddingTop();
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: n */
        public void mo58107n(View view, int i, int i2) {
            int mo58106m = mo58106m();
            this.f88797b.layoutDecoratedWithMargins(view, i, mo58106m, i2, mo58106m + mo58098e(view));
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: o */
        public void mo58108o(RectF rectF, RectF rectF2, RectF rectF3) {
            if (rectF2.right <= rectF3.left) {
                float floor = ((float) Math.floor(rectF.right)) - 1.0f;
                rectF.right = floor;
                rectF.left = Math.min(rectF.left, floor);
            }
            if (rectF2.left >= rectF3.right) {
                float ceil = ((float) Math.ceil(rectF.left)) + 1.0f;
                rectF.left = ceil;
                rectF.right = Math.max(ceil, rectF.right);
            }
        }

        @Override // com.sunia.HTREnginev2.wnd
        /* renamed from: p */
        public void mo58109p(View view, Rect rect, float f, float f2) {
            view.offsetLeftAndRight((int) (f2 - (rect.left + f)));
        }
    }

    public /* synthetic */ wnd(int i, C14611a c14611a) {
        this(i);
    }

    /* renamed from: b */
    public static wnd m58094b(CarouselLayoutManager carouselLayoutManager) {
        return new C14612b(0, carouselLayoutManager);
    }

    /* renamed from: c */
    public static wnd m58095c(CarouselLayoutManager carouselLayoutManager, int i) {
        if (i == 0) {
            return m58094b(carouselLayoutManager);
        }
        if (i == 1) {
            return m58096d(carouselLayoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* renamed from: d */
    public static wnd m58096d(CarouselLayoutManager carouselLayoutManager) {
        return new C14611a(1, carouselLayoutManager);
    }

    /* renamed from: a */
    public abstract void mo58097a(RectF rectF, RectF rectF2, RectF rectF3);

    /* renamed from: e */
    public abstract int mo58098e(View view);

    /* renamed from: f */
    public abstract float mo58099f(RecyclerView.LayoutParams layoutParams);

    /* renamed from: g */
    public abstract RectF mo58100g(float f, float f2, float f3, float f4);

    /* renamed from: h */
    public abstract int mo58101h();

    /* renamed from: i */
    public abstract int mo58102i();

    /* renamed from: j */
    public abstract int mo58103j();

    /* renamed from: k */
    public abstract int mo58104k();

    /* renamed from: l */
    public abstract int mo58105l();

    /* renamed from: m */
    public abstract int mo58106m();

    /* renamed from: n */
    public abstract void mo58107n(View view, int i, int i2);

    /* renamed from: o */
    public abstract void mo58108o(RectF rectF, RectF rectF2, RectF rectF3);

    /* renamed from: p */
    public abstract void mo58109p(View view, Rect rect, float f, float f2);

    public wnd(int i) {
        this.f88795a = i;
    }
}
