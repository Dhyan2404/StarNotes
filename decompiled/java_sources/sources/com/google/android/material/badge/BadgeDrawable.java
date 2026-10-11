package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.Locale;

@OptIn(markerClass = {ExperimentalBadgeUtils.class})
/* loaded from: classes6.dex */
public class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {
    public static final int BADGE_CONTENT_NOT_TRUNCATED = -2;

    @Deprecated
    public static final int BOTTOM_END = 8388693;

    @Deprecated
    public static final int BOTTOM_START = 8388691;
    public static final int TOP_END = 8388661;
    public static final int TOP_START = 8388659;

    /* renamed from: r */
    public static final String f30290r = "Badge";

    /* renamed from: s */
    @StyleRes
    public static final int f30291s = C5139R.style.Widget_MaterialComponents_Badge;

    /* renamed from: t */
    @AttrRes
    public static final int f30292t = C5139R.attr.badgeStyle;

    /* renamed from: u */
    public static final String f30293u = "+";

    /* renamed from: v */
    public static final String f30294v = "…";

    /* renamed from: w */
    public static final int f30295w = 0;

    /* renamed from: x */
    public static final int f30296x = 1;

    /* renamed from: y */
    public static final int f30297y = -1;

    /* renamed from: z */
    public static final float f30298z = 0.3f;

    /* renamed from: e */
    @NonNull
    public final WeakReference<Context> f30299e;

    /* renamed from: f */
    @NonNull
    public final MaterialShapeDrawable f30300f;

    /* renamed from: g */
    @NonNull
    public final TextDrawableHelper f30301g;

    /* renamed from: h */
    @NonNull
    public final Rect f30302h;

    /* renamed from: i */
    @NonNull
    public final BadgeState f30303i;

    /* renamed from: j */
    public float f30304j;

    /* renamed from: k */
    public float f30305k;

    /* renamed from: l */
    public int f30306l;

    /* renamed from: m */
    public float f30307m;

    /* renamed from: n */
    public float f30308n;

    /* renamed from: o */
    public float f30309o;

    /* renamed from: p */
    @Nullable
    public WeakReference<View> f30310p;

    /* renamed from: q */
    @Nullable
    public WeakReference<FrameLayout> f30311q;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface BadgeGravity {
    }

    /* renamed from: com.google.android.material.badge.BadgeDrawable$a */
    /* loaded from: classes6.dex */
    public class RunnableC5147a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ View f30312e;

        /* renamed from: f */
        public final /* synthetic */ FrameLayout f30313f;

        public RunnableC5147a(View view, FrameLayout frameLayout) {
            this.f30312e = view;
            this.f30313f = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            BadgeDrawable.this.updateBadgeCoordinates(this.f30312e, this.f30313f);
        }
    }

    public BadgeDrawable(@NonNull Context context, @XmlRes int i, @AttrRes int i2, @StyleRes int i3, @Nullable BadgeState.State state) {
        this.f30299e = new WeakReference<>(context);
        ThemeEnforcement.checkMaterialTheme(context);
        this.f30302h = new Rect();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f30301g = textDrawableHelper;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
        BadgeState badgeState = new BadgeState(context, i, i2, i3, state);
        this.f30303i = badgeState;
        this.f30300f = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context, m22979t() ? badgeState.m23039o() : badgeState.m23032k(), m22979t() ? badgeState.m23038n() : badgeState.m23030j()).build());
        m22955G();
    }

    /* renamed from: K */
    public static void m22947K(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    @NonNull
    /* renamed from: c */
    public static BadgeDrawable m22948c(@NonNull Context context, @NonNull BadgeState.State state) {
        return new BadgeDrawable(context, 0, f30292t, f30291s, state);
    }

    @NonNull
    public static BadgeDrawable create(@NonNull Context context) {
        return new BadgeDrawable(context, 0, f30292t, f30291s, null);
    }

    @NonNull
    public static BadgeDrawable createFromResource(@NonNull Context context, @XmlRes int i) {
        return new BadgeDrawable(context, i, f30292t, f30291s, null);
    }

    /* renamed from: A */
    public final void m22949A() {
        TextAppearance textAppearance;
        Context context = this.f30299e.get();
        if (context == null || this.f30301g.getTextAppearance() == (textAppearance = new TextAppearance(context, this.f30303i.m22989C()))) {
            return;
        }
        this.f30301g.setTextAppearance(textAppearance, context);
        m22950B();
        m22959L();
        invalidateSelf();
    }

    /* renamed from: B */
    public final void m22950B() {
        this.f30301g.getTextPaint().setColor(this.f30303i.m23034l());
        invalidateSelf();
    }

    /* renamed from: C */
    public final void m22951C() {
        m22960M();
        this.f30301g.setTextSizeDirty(true);
        m22959L();
        invalidateSelf();
    }

    /* renamed from: D */
    public final void m22952D() {
        if (hasText()) {
            return;
        }
        m22983x();
    }

    /* renamed from: E */
    public final void m22953E() {
        m22983x();
    }

    /* renamed from: F */
    public final void m22954F() {
        boolean m22995I = this.f30303i.m22995I();
        setVisible(m22995I, false);
        if (!BadgeUtils.USE_COMPAT_PARENT || getCustomBadgeParent() == null || m22995I) {
            return;
        }
        ((ViewGroup) getCustomBadgeParent().getParent()).invalidate();
    }

    /* renamed from: G */
    public final void m22955G() {
        m22985z();
        m22949A();
        m22951C();
        m22983x();
        m22981v();
        m22982w();
        m22950B();
        m22984y();
        m22959L();
        m22954F();
    }

    /* renamed from: H */
    public void m22956H(int i) {
        this.f30303i.m22996K(i);
        m22959L();
    }

    /* renamed from: I */
    public void m22957I(@Px int i) {
        this.f30303i.m22997L(i);
        m22959L();
    }

    /* renamed from: J */
    public final void m22958J(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != C5139R.id.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.f30311q;
            if (weakReference == null || weakReference.get() != viewGroup) {
                m22947K(view);
                FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(C5139R.id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int indexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(indexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, indexOfChild);
                this.f30311q = new WeakReference<>(frameLayout);
                frameLayout.post(new RunnableC5147a(view, frameLayout));
            }
        }
    }

    /* renamed from: L */
    public final void m22959L() {
        Context context = this.f30299e.get();
        WeakReference<View> weakReference = this.f30310p;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f30302h);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f30311q;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || BadgeUtils.USE_COMPAT_PARENT) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        m22962b(rect2, view);
        BadgeUtils.updateBadgeBounds(this.f30302h, this.f30304j, this.f30305k, this.f30308n, this.f30309o);
        float f = this.f30307m;
        if (f != -1.0f) {
            this.f30300f.setCornerSize(f);
        }
        if (rect.equals(this.f30302h)) {
            return;
        }
        this.f30300f.setBounds(this.f30302h);
    }

    /* renamed from: M */
    public final void m22960M() {
        if (getMaxCharacterCount() != -2) {
            this.f30306l = ((int) Math.pow(10.0d, getMaxCharacterCount() - 1.0d)) - 1;
        } else {
            this.f30306l = getMaxNumber();
        }
    }

    /* renamed from: a */
    public final void m22961a(@NonNull View view) {
        float f;
        float f2;
        View customBadgeParent = getCustomBadgeParent();
        if (customBadgeParent == null) {
            if (!(view.getParent() instanceof View)) {
                return;
            }
            float y = view.getY();
            f2 = view.getX();
            customBadgeParent = (View) view.getParent();
            f = y;
        } else if (!m22980u()) {
            f = 0.0f;
            f2 = 0.0f;
        } else {
            if (!(customBadgeParent.getParent() instanceof View)) {
                return;
            }
            f = customBadgeParent.getY();
            f2 = customBadgeParent.getX();
            customBadgeParent = (View) customBadgeParent.getParent();
        }
        float m22976q = m22976q(customBadgeParent, f);
        float m22969j = m22969j(customBadgeParent, f2);
        float m22967h = m22967h(customBadgeParent, f);
        float m22972m = m22972m(customBadgeParent, f2);
        if (m22976q < 0.0f) {
            this.f30305k += Math.abs(m22976q);
        }
        if (m22969j < 0.0f) {
            this.f30304j += Math.abs(m22969j);
        }
        if (m22967h > 0.0f) {
            this.f30305k -= Math.abs(m22967h);
        }
        if (m22972m > 0.0f) {
            this.f30304j -= Math.abs(m22972m);
        }
    }

    /* renamed from: b */
    public final void m22962b(@NonNull Rect rect, @NonNull View view) {
        float f = m22979t() ? this.f30303i.f30319d : this.f30303i.f30318c;
        this.f30307m = f;
        if (f != -1.0f) {
            this.f30308n = f;
            this.f30309o = f;
        } else {
            this.f30308n = Math.round((m22979t() ? this.f30303i.f30322g : this.f30303i.f30320e) / 2.0f);
            this.f30309o = Math.round((m22979t() ? this.f30303i.f30323h : this.f30303i.f30321f) / 2.0f);
        }
        if (m22979t()) {
            String m22966g = m22966g();
            this.f30308n = Math.max(this.f30308n, (this.f30301g.getTextWidth(m22966g) / 2.0f) + this.f30303i.m23028i());
            float max = Math.max(this.f30309o, (this.f30301g.getTextHeight(m22966g) / 2.0f) + this.f30303i.m23036m());
            this.f30309o = max;
            this.f30308n = Math.max(this.f30308n, max);
        }
        int m22978s = m22978s();
        int m23026h = this.f30303i.m23026h();
        if (m23026h == 8388691 || m23026h == 8388693) {
            this.f30305k = rect.bottom - m22978s;
        } else {
            this.f30305k = rect.top + m22978s;
        }
        int m22977r = m22977r();
        int m23026h2 = this.f30303i.m23026h();
        if (m23026h2 == 8388659 || m23026h2 == 8388691) {
            this.f30304j = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.f30308n) + m22977r : (rect.right + this.f30308n) - m22977r;
        } else {
            this.f30304j = ViewCompat.getLayoutDirection(view) == 0 ? (rect.right + this.f30308n) - m22977r : (rect.left - this.f30308n) + m22977r;
        }
        if (this.f30303i.m22994H()) {
            m22961a(view);
        }
    }

    public void clearNumber() {
        if (this.f30303i.m22992F()) {
            this.f30303i.m23012a();
            m22952D();
        }
    }

    public void clearText() {
        if (this.f30303i.m22993G()) {
            this.f30303i.m23014b();
            m22953E();
        }
    }

    /* renamed from: d */
    public final void m22963d(Canvas canvas) {
        String m22966g = m22966g();
        if (m22966g != null) {
            Rect rect = new Rect();
            this.f30301g.getTextPaint().getTextBounds(m22966g, 0, m22966g.length(), rect);
            float exactCenterY = this.f30305k - rect.exactCenterY();
            canvas.drawText(m22966g, this.f30304j, rect.bottom <= 0 ? (int) exactCenterY : Math.round(exactCenterY), this.f30301g.getTextPaint());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f30300f.draw(canvas);
        if (m22979t()) {
            m22963d(canvas);
        }
    }

    /* renamed from: e */
    public int m22964e() {
        return this.f30303i.m23018d();
    }

    @Px
    /* renamed from: f */
    public int m22965f() {
        return this.f30303i.m23020e();
    }

    @Nullable
    /* renamed from: g */
    public final String m22966g() {
        if (hasText()) {
            return m22974o();
        }
        if (hasNumber()) {
            return m22970k();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f30303i.m23022f();
    }

    @ColorInt
    public int getBackgroundColor() {
        return this.f30300f.getFillColor().getDefaultColor();
    }

    public int getBadgeGravity() {
        return this.f30303i.m23026h();
    }

    @NonNull
    public Locale getBadgeNumberLocale() {
        return this.f30303i.m23050z();
    }

    @ColorInt
    public int getBadgeTextColor() {
        return this.f30301g.getTextPaint().getColor();
    }

    @Nullable
    public CharSequence getContentDescription() {
        if (isVisible()) {
            return hasText() ? m22975p() : hasNumber() ? m22971l() : m22968i();
        }
        return null;
    }

    @Nullable
    public FrameLayout getCustomBadgeParent() {
        WeakReference<FrameLayout> weakReference = this.f30311q;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int getHorizontalOffset() {
        return this.f30303i.m23045u();
    }

    @Px
    public int getHorizontalOffsetWithText() {
        return this.f30303i.m23044t();
    }

    @Px
    public int getHorizontalOffsetWithoutText() {
        return this.f30303i.m23045u();
    }

    @Px
    public int getHorizontalPadding() {
        return this.f30303i.m23028i();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f30302h.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f30302h.width();
    }

    @Px
    public int getLargeFontVerticalOffsetAdjustment() {
        return this.f30303i.m23046v();
    }

    public int getMaxCharacterCount() {
        return this.f30303i.m23047w();
    }

    public int getMaxNumber() {
        return this.f30303i.m23048x();
    }

    public int getNumber() {
        if (this.f30303i.m22992F()) {
            return this.f30303i.m23049y();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Nullable
    public String getText() {
        return this.f30303i.m22988B();
    }

    public int getVerticalOffset() {
        return this.f30303i.m22991E();
    }

    @Px
    public int getVerticalOffsetWithText() {
        return this.f30303i.m22990D();
    }

    @Px
    public int getVerticalOffsetWithoutText() {
        return this.f30303i.m22991E();
    }

    @Px
    public int getVerticalPadding() {
        return this.f30303i.m23036m();
    }

    /* renamed from: h */
    public final float m22967h(View view, float f) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f30305k + this.f30309o) - (((View) view.getParent()).getHeight() - view.getY())) + f;
    }

    public boolean hasNumber() {
        return !this.f30303i.m22993G() && this.f30303i.m22992F();
    }

    public boolean hasText() {
        return this.f30303i.m22993G();
    }

    /* renamed from: i */
    public final CharSequence m22968i() {
        return this.f30303i.m23042r();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    /* renamed from: j */
    public final float m22969j(View view, float f) {
        return (this.f30304j - this.f30308n) + view.getX() + f;
    }

    @NonNull
    /* renamed from: k */
    public final String m22970k() {
        if (this.f30306l == -2 || getNumber() <= this.f30306l) {
            return NumberFormat.getInstance(this.f30303i.m23050z()).format(getNumber());
        }
        Context context = this.f30299e.get();
        return context == null ? "" : String.format(this.f30303i.m23050z(), context.getString(C5139R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f30306l), "+");
    }

    @Nullable
    /* renamed from: l */
    public final String m22971l() {
        Context context;
        if (this.f30303i.m23043s() == 0 || (context = this.f30299e.get()) == null) {
            return null;
        }
        return (this.f30306l == -2 || getNumber() <= this.f30306l) ? context.getResources().getQuantityString(this.f30303i.m23043s(), getNumber(), Integer.valueOf(getNumber())) : context.getString(this.f30303i.m23040p(), Integer.valueOf(this.f30306l));
    }

    /* renamed from: m */
    public final float m22972m(View view, float f) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f30304j + this.f30308n) - (((View) view.getParent()).getWidth() - view.getX())) + f;
    }

    @NonNull
    /* renamed from: n */
    public BadgeState.State m22973n() {
        return this.f30303i.m22987A();
    }

    @Nullable
    /* renamed from: o */
    public final String m22974o() {
        String text = getText();
        int maxCharacterCount = getMaxCharacterCount();
        if (maxCharacterCount == -2 || text == null || text.length() <= maxCharacterCount) {
            return text;
        }
        Context context = this.f30299e.get();
        if (context == null) {
            return "";
        }
        return String.format(context.getString(C5139R.string.m3_exceed_max_badge_text_suffix), text.substring(0, maxCharacterCount - 1), "…");
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onTextSizeChange() {
        invalidateSelf();
    }

    @Nullable
    /* renamed from: p */
    public final CharSequence m22975p() {
        CharSequence m23041q = this.f30303i.m23041q();
        return m23041q != null ? m23041q : getText();
    }

    /* renamed from: q */
    public final float m22976q(View view, float f) {
        return (this.f30305k - this.f30309o) + view.getY() + f;
    }

    /* renamed from: r */
    public final int m22977r() {
        int m23044t = m22979t() ? this.f30303i.m23044t() : this.f30303i.m23045u();
        if (this.f30303i.f30326k == 1) {
            m23044t += m22979t() ? this.f30303i.f30325j : this.f30303i.f30324i;
        }
        return m23044t + this.f30303i.m23018d();
    }

    /* renamed from: s */
    public final int m22978s() {
        int m22991E = this.f30303i.m22991E();
        if (m22979t()) {
            m22991E = this.f30303i.m22990D();
            Context context = this.f30299e.get();
            if (context != null) {
                m22991E = AnimationUtils.lerp(m22991E, m22991E - this.f30303i.m23046v(), AnimationUtils.lerp(0.0f, 1.0f, 0.3f, 1.0f, MaterialResources.getFontScale(context) - 1.0f));
            }
        }
        if (this.f30303i.f30326k == 0) {
            m22991E -= Math.round(this.f30309o);
        }
        return m22991E + this.f30303i.m23020e();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f30303i.m22998M(i);
        m22981v();
    }

    public void setAutoAdjustToWithinGrandparentBounds(boolean z) {
        if (this.f30303i.m22994H() == z) {
            return;
        }
        this.f30303i.m22999N(z);
        WeakReference<View> weakReference = this.f30310p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        m22961a(this.f30310p.get());
    }

    public void setBackgroundColor(@ColorInt int i) {
        this.f30303i.m23000O(i);
        m22982w();
    }

    public void setBadgeGravity(int i) {
        if (i == 8388691 || i == 8388693) {
            Log.w(f30290r, "Bottom badge gravities are deprecated; please use a top gravity instead.");
        }
        if (this.f30303i.m23026h() != i) {
            this.f30303i.m23001P(i);
            m22984y();
        }
    }

    public void setBadgeNumberLocale(@NonNull Locale locale) {
        if (locale.equals(this.f30303i.m23050z())) {
            return;
        }
        this.f30303i.m23027h0(locale);
        invalidateSelf();
    }

    public void setBadgeTextColor(@ColorInt int i) {
        if (this.f30301g.getTextPaint().getColor() != i) {
            this.f30303i.m23005T(i);
            m22950B();
        }
    }

    public void setBadgeWithTextShapeAppearance(@StyleRes int i) {
        this.f30303i.m23008W(i);
        m22985z();
    }

    public void setBadgeWithTextShapeAppearanceOverlay(@StyleRes int i) {
        this.f30303i.m23007V(i);
        m22985z();
    }

    public void setBadgeWithoutTextShapeAppearance(@StyleRes int i) {
        this.f30303i.m23004S(i);
        m22985z();
    }

    public void setBadgeWithoutTextShapeAppearanceOverlay(@StyleRes int i) {
        this.f30303i.m23003R(i);
        m22985z();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setContentDescriptionExceedsMaxBadgeNumberStringResource(@StringRes int i) {
        this.f30303i.m23009X(i);
    }

    public void setContentDescriptionForText(@Nullable CharSequence charSequence) {
        this.f30303i.m23010Y(charSequence);
    }

    public void setContentDescriptionNumberless(CharSequence charSequence) {
        this.f30303i.m23011Z(charSequence);
    }

    public void setContentDescriptionQuantityStringsResource(@PluralsRes int i) {
        this.f30303i.m23013a0(i);
    }

    public void setHorizontalOffset(int i) {
        setHorizontalOffsetWithoutText(i);
        setHorizontalOffsetWithText(i);
    }

    public void setHorizontalOffsetWithText(@Px int i) {
        this.f30303i.m23015b0(i);
        m22959L();
    }

    public void setHorizontalOffsetWithoutText(@Px int i) {
        this.f30303i.m23017c0(i);
        m22959L();
    }

    public void setHorizontalPadding(@Px int i) {
        if (i != this.f30303i.m23028i()) {
            this.f30303i.m23002Q(i);
            m22959L();
        }
    }

    public void setLargeFontVerticalOffsetAdjustment(@Px int i) {
        this.f30303i.m23019d0(i);
        m22959L();
    }

    public void setMaxCharacterCount(int i) {
        if (this.f30303i.m23047w() != i) {
            this.f30303i.m23021e0(i);
            m22951C();
        }
    }

    public void setMaxNumber(int i) {
        if (this.f30303i.m23048x() != i) {
            this.f30303i.m23023f0(i);
            m22951C();
        }
    }

    public void setNumber(int i) {
        int max = Math.max(0, i);
        if (this.f30303i.m23049y() != max) {
            this.f30303i.m23025g0(max);
            m22952D();
        }
    }

    public void setText(@Nullable String str) {
        if (TextUtils.equals(this.f30303i.m22988B(), str)) {
            return;
        }
        this.f30303i.m23029i0(str);
        m22953E();
    }

    public void setTextAppearance(@StyleRes int i) {
        this.f30303i.m23031j0(i);
        m22949A();
    }

    public void setVerticalOffset(int i) {
        setVerticalOffsetWithoutText(i);
        setVerticalOffsetWithText(i);
    }

    public void setVerticalOffsetWithText(@Px int i) {
        this.f30303i.m23033k0(i);
        m22959L();
    }

    public void setVerticalOffsetWithoutText(@Px int i) {
        this.f30303i.m23035l0(i);
        m22959L();
    }

    public void setVerticalPadding(@Px int i) {
        if (i != this.f30303i.m23036m()) {
            this.f30303i.m23006U(i);
            m22959L();
        }
    }

    public void setVisible(boolean z) {
        this.f30303i.m23037m0(z);
        m22954F();
    }

    /* renamed from: t */
    public final boolean m22979t() {
        return hasText() || hasNumber();
    }

    /* renamed from: u */
    public final boolean m22980u() {
        FrameLayout customBadgeParent = getCustomBadgeParent();
        return customBadgeParent != null && customBadgeParent.getId() == C5139R.id.mtrl_anchor_parent;
    }

    @Deprecated
    public void updateBadgeCoordinates(@NonNull View view, @Nullable ViewGroup viewGroup) {
        if (viewGroup instanceof FrameLayout) {
            updateBadgeCoordinates(view, (FrameLayout) viewGroup);
            return;
        }
        throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
    }

    /* renamed from: v */
    public final void m22981v() {
        this.f30301g.getTextPaint().setAlpha(getAlpha());
        invalidateSelf();
    }

    /* renamed from: w */
    public final void m22982w() {
        ColorStateList valueOf = ColorStateList.valueOf(this.f30303i.m23024g());
        if (this.f30300f.getFillColor() != valueOf) {
            this.f30300f.setFillColor(valueOf);
            invalidateSelf();
        }
    }

    /* renamed from: x */
    public final void m22983x() {
        this.f30301g.setTextSizeDirty(true);
        m22985z();
        m22959L();
        invalidateSelf();
    }

    /* renamed from: y */
    public final void m22984y() {
        WeakReference<View> weakReference = this.f30310p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = this.f30310p.get();
        WeakReference<FrameLayout> weakReference2 = this.f30311q;
        updateBadgeCoordinates(view, weakReference2 != null ? weakReference2.get() : null);
    }

    /* renamed from: z */
    public final void m22985z() {
        Context context = this.f30299e.get();
        if (context == null) {
            return;
        }
        this.f30300f.setShapeAppearanceModel(ShapeAppearanceModel.builder(context, m22979t() ? this.f30303i.m23039o() : this.f30303i.m23032k(), m22979t() ? this.f30303i.m23038n() : this.f30303i.m23030j()).build());
        invalidateSelf();
    }

    public void updateBadgeCoordinates(@NonNull View view) {
        updateBadgeCoordinates(view, (FrameLayout) null);
    }

    public void updateBadgeCoordinates(@NonNull View view, @Nullable FrameLayout frameLayout) {
        this.f30310p = new WeakReference<>(view);
        boolean z = BadgeUtils.USE_COMPAT_PARENT;
        if (z && frameLayout == null) {
            m22958J(view);
        } else {
            this.f30311q = new WeakReference<>(frameLayout);
        }
        if (!z) {
            m22947K(view);
        }
        m22959L();
        invalidateSelf();
    }
}
