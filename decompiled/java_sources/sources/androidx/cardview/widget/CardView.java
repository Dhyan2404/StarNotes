package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.cardview.C0370R;
import com.sunia.HTREnginev2.ond;
import com.sunia.HTREnginev2.qnd;
import com.sunia.HTREnginev2.rnd;

/* loaded from: classes3.dex */
public class CardView extends FrameLayout {

    /* renamed from: l */
    public static final int[] f2472l = {R.attr.colorBackground};

    /* renamed from: m */
    public static final rnd f2473m;

    /* renamed from: e */
    public boolean f2474e;

    /* renamed from: f */
    public boolean f2475f;

    /* renamed from: g */
    public int f2476g;

    /* renamed from: h */
    public int f2477h;

    /* renamed from: i */
    public final Rect f2478i;

    /* renamed from: j */
    public final Rect f2479j;

    /* renamed from: k */
    public final qnd f2480k;

    /* renamed from: androidx.cardview.widget.CardView$a */
    /* loaded from: classes3.dex */
    public class C0371a implements qnd {

        /* renamed from: a */
        public Drawable f2481a;

        public C0371a() {
        }

        @Override // com.sunia.HTREnginev2.qnd
        /* renamed from: a */
        public void mo1297a(int i, int i2) {
            CardView cardView = CardView.this;
            if (i > cardView.f2476g) {
                CardView.super.setMinimumWidth(i);
            }
            CardView cardView2 = CardView.this;
            if (i2 > cardView2.f2477h) {
                CardView.super.setMinimumHeight(i2);
            }
        }

        @Override // com.sunia.HTREnginev2.qnd
        /* renamed from: b */
        public void mo1298b(Drawable drawable) {
            this.f2481a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // com.sunia.HTREnginev2.qnd
        /* renamed from: c */
        public Drawable mo1299c() {
            return this.f2481a;
        }

        @Override // com.sunia.HTREnginev2.qnd
        /* renamed from: d */
        public boolean mo1300d() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // com.sunia.HTREnginev2.qnd
        /* renamed from: e */
        public View mo1301e() {
            return CardView.this;
        }

        @Override // com.sunia.HTREnginev2.qnd
        /* renamed from: f */
        public boolean mo1302f() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // com.sunia.HTREnginev2.qnd
        public void setShadowPadding(int i, int i2, int i3, int i4) {
            CardView.this.f2479j.set(i, i2, i3, i4);
            CardView cardView = CardView.this;
            Rect rect = cardView.f2478i;
            CardView.super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
        }
    }

    static {
        ond ondVar = new ond();
        f2473m = ondVar;
        ondVar.mo55770j();
    }

    public CardView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return f2473m.mo56121n(this.f2480k);
    }

    public float getCardElevation() {
        return f2473m.mo56120m(this.f2480k);
    }

    @Px
    public int getContentPaddingBottom() {
        return this.f2478i.bottom;
    }

    @Px
    public int getContentPaddingLeft() {
        return this.f2478i.left;
    }

    @Px
    public int getContentPaddingRight() {
        return this.f2478i.right;
    }

    @Px
    public int getContentPaddingTop() {
        return this.f2478i.top;
    }

    public float getMaxCardElevation() {
        return f2473m.mo56110b(this.f2480k);
    }

    public boolean getPreventCornerOverlap() {
        return this.f2475f;
    }

    public float getRadius() {
        return f2473m.mo56109a(this.f2480k);
    }

    public boolean getUseCompatPadding() {
        return this.f2474e;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (f2473m instanceof ond) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.mo56111c(this.f2480k)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.mo56114f(this.f2480k)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(@ColorInt int i) {
        f2473m.mo56115g(this.f2480k, ColorStateList.valueOf(i));
    }

    public void setCardElevation(float f) {
        f2473m.mo56112d(this.f2480k, f);
    }

    public void setContentPadding(@Px int i, @Px int i2, @Px int i3, @Px int i4) {
        this.f2478i.set(i, i2, i3, i4);
        f2473m.mo56116h(this.f2480k);
    }

    public void setMaxCardElevation(float f) {
        f2473m.mo56122o(this.f2480k, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f2477h = i;
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        this.f2476g = i;
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f2475f) {
            this.f2475f = z;
            f2473m.mo56113e(this.f2480k);
        }
    }

    public void setRadius(float f) {
        f2473m.mo56118k(this.f2480k, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f2474e != z) {
            this.f2474e = z;
            f2473m.mo56117i(this.f2480k);
        }
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0370R.attr.cardViewStyle);
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        f2473m.mo56115g(this.f2480k, colorStateList);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int color;
        ColorStateList valueOf;
        Rect rect = new Rect();
        this.f2478i = rect;
        this.f2479j = new Rect();
        C0371a c0371a = new C0371a();
        this.f2480k = c0371a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0370R.styleable.CardView, i, C0370R.style.CardView);
        if (obtainStyledAttributes.hasValue(C0370R.styleable.CardView_cardBackgroundColor)) {
            valueOf = obtainStyledAttributes.getColorStateList(C0370R.styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f2472l);
            int color2 = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(C0370R.color.cardview_light_background);
            } else {
                color = getResources().getColor(C0370R.color.cardview_dark_background);
            }
            valueOf = ColorStateList.valueOf(color);
        }
        ColorStateList colorStateList = valueOf;
        float dimension = obtainStyledAttributes.getDimension(C0370R.styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(C0370R.styleable.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(C0370R.styleable.CardView_cardMaxElevation, 0.0f);
        this.f2474e = obtainStyledAttributes.getBoolean(C0370R.styleable.CardView_cardUseCompatPadding, false);
        this.f2475f = obtainStyledAttributes.getBoolean(C0370R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0370R.styleable.CardView_contentPadding, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(C0370R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(C0370R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(C0370R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(C0370R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        float f = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f2476g = obtainStyledAttributes.getDimensionPixelSize(C0370R.styleable.CardView_android_minWidth, 0);
        this.f2477h = obtainStyledAttributes.getDimensionPixelSize(C0370R.styleable.CardView_android_minHeight, 0);
        obtainStyledAttributes.recycle();
        f2473m.mo56119l(c0371a, context, colorStateList, dimension, dimension2, f);
    }
}
