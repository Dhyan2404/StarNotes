package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.textfield.TextInputLayout;
import com.sunia.HTREnginev2.buj;
import com.sunia.HTREnginev2.cgi;
import com.sunia.HTREnginev2.czk;
import com.sunia.HTREnginev2.joe;
import com.sunia.HTREnginev2.qqf;
import com.sunia.HTREnginev2.rjf;
import com.sunia.HTREnginev2.xud;
import java.util.Iterator;
import java.util.LinkedHashSet;

@SuppressLint({"ViewConstructor"})
/* renamed from: com.google.android.material.textfield.a */
/* loaded from: classes6.dex */
public class C5426a extends LinearLayout {

    /* renamed from: J */
    public final TextInputLayout.OnEditTextAttachedListener f32810J;

    /* renamed from: e */
    public final TextInputLayout f32811e;

    /* renamed from: f */
    @NonNull
    public final FrameLayout f32812f;

    /* renamed from: g */
    @NonNull
    public final CheckableImageButton f32813g;

    /* renamed from: h */
    public ColorStateList f32814h;

    /* renamed from: i */
    public PorterDuff.Mode f32815i;

    /* renamed from: j */
    public View.OnLongClickListener f32816j;

    /* renamed from: k */
    @NonNull
    public final CheckableImageButton f32817k;

    /* renamed from: l */
    public final d f32818l;

    /* renamed from: m */
    public int f32819m;

    /* renamed from: n */
    public final LinkedHashSet<TextInputLayout.OnEndIconChangedListener> f32820n;

    /* renamed from: o */
    public ColorStateList f32821o;

    /* renamed from: p */
    public PorterDuff.Mode f32822p;

    /* renamed from: q */
    public int f32823q;

    /* renamed from: r */
    @NonNull
    public ImageView.ScaleType f32824r;

    /* renamed from: s */
    public View.OnLongClickListener f32825s;

    /* renamed from: t */
    @Nullable
    public CharSequence f32826t;

    /* renamed from: u */
    @NonNull
    public final TextView f32827u;

    /* renamed from: v */
    public boolean f32828v;

    /* renamed from: w */
    public EditText f32829w;

    /* renamed from: x */
    @Nullable
    public final AccessibilityManager f32830x;

    /* renamed from: y */
    @Nullable
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener f32831y;

    /* renamed from: z */
    public final TextWatcher f32832z;

    /* renamed from: com.google.android.material.textfield.a$a */
    /* loaded from: classes6.dex */
    public class a extends TextWatcherAdapter {
        public a() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C5426a.this.m25328o().mo56749a(editable);
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C5426a.this.m25328o().mo53552b(charSequence, i, i2, i3);
        }
    }

    /* renamed from: com.google.android.material.textfield.a$b */
    /* loaded from: classes6.dex */
    public class b implements TextInputLayout.OnEditTextAttachedListener {
        public b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
        public void onEditTextAttached(@NonNull TextInputLayout textInputLayout) {
            if (C5426a.this.f32829w == textInputLayout.getEditText()) {
                return;
            }
            if (C5426a.this.f32829w != null) {
                C5426a.this.f32829w.removeTextChangedListener(C5426a.this.f32832z);
                if (C5426a.this.f32829w.getOnFocusChangeListener() == C5426a.this.m25328o().mo56750e()) {
                    C5426a.this.f32829w.setOnFocusChangeListener(null);
                }
            }
            C5426a.this.f32829w = textInputLayout.getEditText();
            if (C5426a.this.f32829w != null) {
                C5426a.this.f32829w.addTextChangedListener(C5426a.this.f32832z);
            }
            C5426a.this.m25328o().mo53558n(C5426a.this.f32829w);
            C5426a c5426a = C5426a.this;
            c5426a.m25325m0(c5426a.m25328o());
        }
    }

    /* renamed from: com.google.android.material.textfield.a$c */
    /* loaded from: classes6.dex */
    public class c implements View.OnAttachStateChangeListener {
        public c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            C5426a.this.m25314h();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            C5426a.this.m25297R();
        }
    }

    /* renamed from: com.google.android.material.textfield.a$d */
    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a */
        public final SparseArray<qqf> f32836a = new SparseArray<>();

        /* renamed from: b */
        public final C5426a f32837b;

        /* renamed from: c */
        public final int f32838c;

        /* renamed from: d */
        public final int f32839d;

        public d(C5426a c5426a, TintTypedArray tintTypedArray) {
            this.f32837b = c5426a;
            this.f32838c = tintTypedArray.getResourceId(C5139R.styleable.TextInputLayout_endIconDrawable, 0);
            this.f32839d = tintTypedArray.getResourceId(C5139R.styleable.TextInputLayout_passwordToggleDrawable, 0);
        }

        /* renamed from: b */
        public final qqf m25353b(int i) {
            if (i == -1) {
                return new joe(this.f32837b);
            }
            if (i == 0) {
                return new buj(this.f32837b);
            }
            if (i == 1) {
                return new czk(this.f32837b, this.f32839d);
            }
            if (i == 2) {
                return new xud(this.f32837b);
            }
            if (i == 3) {
                return new rjf(this.f32837b);
            }
            throw new IllegalArgumentException("Invalid end icon mode: " + i);
        }

        /* renamed from: c */
        public qqf m25354c(int i) {
            qqf qqfVar = this.f32836a.get(i);
            if (qqfVar != null) {
                return qqfVar;
            }
            qqf m25353b = m25353b(i);
            this.f32836a.append(i, m25353b);
            return m25353b;
        }
    }

    public C5426a(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.f32819m = 0;
        this.f32820n = new LinkedHashSet<>();
        this.f32832z = new a();
        b bVar = new b();
        this.f32810J = bVar;
        this.f32830x = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f32811e = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f32812f = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton m25320k = m25320k(this, from, C5139R.id.text_input_error_icon);
        this.f32813g = m25320k;
        CheckableImageButton m25320k2 = m25320k(frameLayout, from, C5139R.id.text_input_end_icon);
        this.f32817k = m25320k2;
        this.f32818l = new d(this, tintTypedArray);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f32827u = appCompatTextView;
        m25283E(tintTypedArray);
        m25281D(tintTypedArray);
        m25285F(tintTypedArray);
        frameLayout.addView(m25320k2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(m25320k);
        textInputLayout.addOnEditTextAttachedListener(bVar);
        addOnAttachStateChangeListener(new c());
    }

    /* renamed from: A */
    public int m25275A() {
        return ViewCompat.getPaddingEnd(this) + ViewCompat.getPaddingEnd(this.f32827u) + ((m25288I() || m25289J()) ? this.f32817k.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) this.f32817k.getLayoutParams()) : 0);
    }

    /* renamed from: A0 */
    public void m25276A0(boolean z) {
        if (this.f32819m == 1) {
            this.f32817k.performClick();
            if (z) {
                this.f32817k.jumpDrawablesToCurrentState();
            }
        }
    }

    /* renamed from: B */
    public TextView m25277B() {
        return this.f32827u;
    }

    /* renamed from: B0 */
    public final void m25278B0() {
        this.f32812f.setVisibility((this.f32817k.getVisibility() != 0 || m25289J()) ? 8 : 0);
        setVisibility(m25288I() || m25289J() || !((this.f32826t == null || this.f32828v) ? 8 : false) ? 0 : 8);
    }

    /* renamed from: C */
    public boolean m25279C() {
        return this.f32819m != 0;
    }

    /* renamed from: C0 */
    public final void m25280C0() {
        this.f32813g.setVisibility(m25340u() != null && this.f32811e.isErrorEnabled() && this.f32811e.m25225Z() ? 0 : 8);
        m25278B0();
        m25282D0();
        if (m25279C()) {
            return;
        }
        this.f32811e.m25238k0();
    }

    /* renamed from: D */
    public final void m25281D(TintTypedArray tintTypedArray) {
        if (!tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_endIconTint)) {
                this.f32821o = MaterialResources.getColorStateList(getContext(), tintTypedArray, C5139R.styleable.TextInputLayout_endIconTint);
            }
            if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_endIconTintMode)) {
                this.f32822p = ViewUtils.parseTintMode(tintTypedArray.getInt(C5139R.styleable.TextInputLayout_endIconTintMode, -1), null);
            }
        }
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_endIconMode)) {
            m25305Z(tintTypedArray.getInt(C5139R.styleable.TextInputLayout_endIconMode, 0));
            if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_endIconContentDescription)) {
                m25301V(tintTypedArray.getText(C5139R.styleable.TextInputLayout_endIconContentDescription));
            }
            m25299T(tintTypedArray.getBoolean(C5139R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_passwordToggleTint)) {
                this.f32821o = MaterialResources.getColorStateList(getContext(), tintTypedArray, C5139R.styleable.TextInputLayout_passwordToggleTint);
            }
            if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_passwordToggleTintMode)) {
                this.f32822p = ViewUtils.parseTintMode(tintTypedArray.getInt(C5139R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
            }
            m25305Z(tintTypedArray.getBoolean(C5139R.styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            m25301V(tintTypedArray.getText(C5139R.styleable.TextInputLayout_passwordToggleContentDescription));
        }
        m25304Y(tintTypedArray.getDimensionPixelSize(C5139R.styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(C5139R.dimen.mtrl_min_touch_target_size)));
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_endIconScaleType)) {
            m25308c0(cgi.m53447b(tintTypedArray.getInt(C5139R.styleable.TextInputLayout_endIconScaleType, -1)));
        }
    }

    /* renamed from: D0 */
    public void m25282D0() {
        if (this.f32811e.f32766h == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f32827u, getContext().getResources().getDimensionPixelSize(C5139R.dimen.material_input_text_to_prefix_suffix_padding), this.f32811e.f32766h.getPaddingTop(), (m25288I() || m25289J()) ? 0 : ViewCompat.getPaddingEnd(this.f32811e.f32766h), this.f32811e.f32766h.getPaddingBottom());
    }

    /* renamed from: E */
    public final void m25283E(TintTypedArray tintTypedArray) {
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_errorIconTint)) {
            this.f32814h = MaterialResources.getColorStateList(getContext(), tintTypedArray, C5139R.styleable.TextInputLayout_errorIconTint);
        }
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_errorIconTintMode)) {
            this.f32815i = ViewUtils.parseTintMode(tintTypedArray.getInt(C5139R.styleable.TextInputLayout_errorIconTintMode, -1), null);
        }
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_errorIconDrawable)) {
            m25315h0(tintTypedArray.getDrawable(C5139R.styleable.TextInputLayout_errorIconDrawable));
        }
        this.f32813g.setContentDescription(getResources().getText(C5139R.string.error_icon_content_description));
        ViewCompat.setImportantForAccessibility(this.f32813g, 2);
        this.f32813g.setClickable(false);
        this.f32813g.setPressable(false);
        this.f32813g.setFocusable(false);
    }

    /* renamed from: E0 */
    public final void m25284E0() {
        int visibility = this.f32827u.getVisibility();
        int i = (this.f32826t == null || this.f32828v) ? 8 : 0;
        if (visibility != i) {
            m25328o().mo56758q(i == 0);
        }
        m25278B0();
        this.f32827u.setVisibility(i);
        this.f32811e.m25238k0();
    }

    /* renamed from: F */
    public final void m25285F(TintTypedArray tintTypedArray) {
        this.f32827u.setVisibility(8);
        this.f32827u.setId(C5139R.id.textinput_suffix_text);
        this.f32827u.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        ViewCompat.setAccessibilityLiveRegion(this.f32827u, 1);
        m25343v0(tintTypedArray.getResourceId(C5139R.styleable.TextInputLayout_suffixTextAppearance, 0));
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_suffixTextColor)) {
            m25345w0(tintTypedArray.getColorStateList(C5139R.styleable.TextInputLayout_suffixTextColor));
        }
        m25341u0(tintTypedArray.getText(C5139R.styleable.TextInputLayout_suffixText));
    }

    /* renamed from: G */
    public boolean m25286G() {
        return this.f32817k.isCheckable();
    }

    /* renamed from: H */
    public boolean m25287H() {
        return m25279C() && this.f32817k.isChecked();
    }

    /* renamed from: I */
    public boolean m25288I() {
        return this.f32812f.getVisibility() == 0 && this.f32817k.getVisibility() == 0;
    }

    /* renamed from: J */
    public boolean m25289J() {
        return this.f32813g.getVisibility() == 0;
    }

    /* renamed from: K */
    public boolean m25290K() {
        return this.f32819m == 1;
    }

    /* renamed from: L */
    public void m25291L(boolean z) {
        this.f32828v = z;
        m25284E0();
    }

    /* renamed from: M */
    public void m25292M() {
        m25280C0();
        m25294O();
        m25293N();
        if (m25328o().mo56760t()) {
            m25351z0(this.f32811e.m25225Z());
        }
    }

    /* renamed from: N */
    public void m25293N() {
        cgi.m53449d(this.f32811e, this.f32817k, this.f32821o);
    }

    /* renamed from: O */
    public void m25294O() {
        cgi.m53449d(this.f32811e, this.f32813g, this.f32814h);
    }

    /* renamed from: P */
    public void m25295P(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean isChecked;
        qqf m25328o = m25328o();
        boolean z3 = true;
        if (!m25328o.mo53556l() || (isChecked = this.f32817k.isChecked()) == m25328o.mo53557m()) {
            z2 = false;
        } else {
            this.f32817k.setChecked(!isChecked);
            z2 = true;
        }
        if (!m25328o.mo56754j() || (isActivated = this.f32817k.isActivated()) == m25328o.mo56755k()) {
            z3 = z2;
        } else {
            m25298S(!isActivated);
        }
        if (z || z3) {
            m25293N();
        }
    }

    /* renamed from: Q */
    public void m25296Q(@NonNull TextInputLayout.OnEndIconChangedListener onEndIconChangedListener) {
        this.f32820n.remove(onEndIconChangedListener);
    }

    /* renamed from: R */
    public final void m25297R() {
        AccessibilityManager accessibilityManager;
        AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.f32831y;
        if (touchExplorationStateChangeListener == null || (accessibilityManager = this.f32830x) == null) {
            return;
        }
        AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, touchExplorationStateChangeListener);
    }

    /* renamed from: S */
    public void m25298S(boolean z) {
        this.f32817k.setActivated(z);
    }

    /* renamed from: T */
    public void m25299T(boolean z) {
        this.f32817k.setCheckable(z);
    }

    /* renamed from: U */
    public void m25300U(@StringRes int i) {
        m25301V(i != 0 ? getResources().getText(i) : null);
    }

    /* renamed from: V */
    public void m25301V(@Nullable CharSequence charSequence) {
        if (m25326n() != charSequence) {
            this.f32817k.setContentDescription(charSequence);
        }
    }

    /* renamed from: W */
    public void m25302W(@DrawableRes int i) {
        m25303X(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    /* renamed from: X */
    public void m25303X(@Nullable Drawable drawable) {
        this.f32817k.setImageDrawable(drawable);
        if (drawable != null) {
            cgi.m53446a(this.f32811e, this.f32817k, this.f32821o, this.f32822p);
            m25293N();
        }
    }

    /* renamed from: Y */
    public void m25304Y(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i != this.f32823q) {
            this.f32823q = i;
            cgi.m53452g(this.f32817k, i);
            cgi.m53452g(this.f32813g, i);
        }
    }

    /* renamed from: Z */
    public void m25305Z(int i) {
        if (this.f32819m == i) {
            return;
        }
        m25349y0(m25328o());
        int i2 = this.f32819m;
        this.f32819m = i;
        m25322l(i2);
        m25311f0(i != 0);
        qqf m25328o = m25328o();
        m25302W(m25342v(m25328o));
        m25300U(m25328o.mo53553c());
        m25299T(m25328o.mo53556l());
        if (!m25328o.mo56753i(this.f32811e.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + this.f32811e.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        m25347x0(m25328o);
        m25306a0(m25328o.mo53555f());
        EditText editText = this.f32829w;
        if (editText != null) {
            m25328o.mo53558n(editText);
            m25325m0(m25328o);
        }
        cgi.m53446a(this.f32811e, this.f32817k, this.f32821o, this.f32822p);
        m25295P(true);
    }

    /* renamed from: a0 */
    public void m25306a0(@Nullable View.OnClickListener onClickListener) {
        cgi.m53453h(this.f32817k, onClickListener, this.f32825s);
    }

    /* renamed from: b0 */
    public void m25307b0(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32825s = onLongClickListener;
        cgi.m53454i(this.f32817k, onLongClickListener);
    }

    /* renamed from: c0 */
    public void m25308c0(@NonNull ImageView.ScaleType scaleType) {
        this.f32824r = scaleType;
        cgi.m53455j(this.f32817k, scaleType);
        cgi.m53455j(this.f32813g, scaleType);
    }

    /* renamed from: d0 */
    public void m25309d0(@Nullable ColorStateList colorStateList) {
        if (this.f32821o != colorStateList) {
            this.f32821o = colorStateList;
            cgi.m53446a(this.f32811e, this.f32817k, colorStateList, this.f32822p);
        }
    }

    /* renamed from: e0 */
    public void m25310e0(@Nullable PorterDuff.Mode mode) {
        if (this.f32822p != mode) {
            this.f32822p = mode;
            cgi.m53446a(this.f32811e, this.f32817k, this.f32821o, mode);
        }
    }

    /* renamed from: f0 */
    public void m25311f0(boolean z) {
        if (m25288I() != z) {
            this.f32817k.setVisibility(z ? 0 : 8);
            m25278B0();
            m25282D0();
            this.f32811e.m25238k0();
        }
    }

    /* renamed from: g */
    public void m25312g(@NonNull TextInputLayout.OnEndIconChangedListener onEndIconChangedListener) {
        this.f32820n.add(onEndIconChangedListener);
    }

    /* renamed from: g0 */
    public void m25313g0(@DrawableRes int i) {
        m25315h0(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
        m25294O();
    }

    /* renamed from: h */
    public final void m25314h() {
        if (this.f32831y == null || this.f32830x == null || !ViewCompat.isAttachedToWindow(this)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f32830x, this.f32831y);
    }

    /* renamed from: h0 */
    public void m25315h0(@Nullable Drawable drawable) {
        this.f32813g.setImageDrawable(drawable);
        m25280C0();
        cgi.m53446a(this.f32811e, this.f32813g, this.f32814h, this.f32815i);
    }

    /* renamed from: i */
    public void m25316i() {
        this.f32817k.performClick();
        this.f32817k.jumpDrawablesToCurrentState();
    }

    /* renamed from: i0 */
    public void m25317i0(@Nullable View.OnClickListener onClickListener) {
        cgi.m53453h(this.f32813g, onClickListener, this.f32816j);
    }

    /* renamed from: j */
    public void m25318j() {
        this.f32820n.clear();
    }

    /* renamed from: j0 */
    public void m25319j0(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32816j = onLongClickListener;
        cgi.m53454i(this.f32813g, onLongClickListener);
    }

    /* renamed from: k */
    public final CheckableImageButton m25320k(ViewGroup viewGroup, LayoutInflater layoutInflater, @IdRes int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(C5139R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i);
        cgi.m53450e(checkableImageButton);
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    /* renamed from: k0 */
    public void m25321k0(@Nullable ColorStateList colorStateList) {
        if (this.f32814h != colorStateList) {
            this.f32814h = colorStateList;
            cgi.m53446a(this.f32811e, this.f32813g, colorStateList, this.f32815i);
        }
    }

    /* renamed from: l */
    public final void m25322l(int i) {
        Iterator<TextInputLayout.OnEndIconChangedListener> it2 = this.f32820n.iterator();
        while (it2.hasNext()) {
            it2.next().onEndIconChanged(this.f32811e, i);
        }
    }

    /* renamed from: l0 */
    public void m25323l0(@Nullable PorterDuff.Mode mode) {
        if (this.f32815i != mode) {
            this.f32815i = mode;
            cgi.m53446a(this.f32811e, this.f32813g, this.f32814h, mode);
        }
    }

    @Nullable
    /* renamed from: m */
    public CheckableImageButton m25324m() {
        if (m25289J()) {
            return this.f32813g;
        }
        if (m25279C() && m25288I()) {
            return this.f32817k;
        }
        return null;
    }

    /* renamed from: m0 */
    public final void m25325m0(qqf qqfVar) {
        if (this.f32829w == null) {
            return;
        }
        if (qqfVar.mo56750e() != null) {
            this.f32829w.setOnFocusChangeListener(qqfVar.mo56750e());
        }
        if (qqfVar.mo56751g() != null) {
            this.f32817k.setOnFocusChangeListener(qqfVar.mo56751g());
        }
    }

    @Nullable
    /* renamed from: n */
    public CharSequence m25326n() {
        return this.f32817k.getContentDescription();
    }

    /* renamed from: n0 */
    public void m25327n0(@StringRes int i) {
        m25329o0(i != 0 ? getResources().getText(i) : null);
    }

    /* renamed from: o */
    public qqf m25328o() {
        return this.f32818l.m25354c(this.f32819m);
    }

    /* renamed from: o0 */
    public void m25329o0(@Nullable CharSequence charSequence) {
        this.f32817k.setContentDescription(charSequence);
    }

    @Nullable
    /* renamed from: p */
    public Drawable m25330p() {
        return this.f32817k.getDrawable();
    }

    /* renamed from: p0 */
    public void m25331p0(@DrawableRes int i) {
        m25333q0(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    /* renamed from: q */
    public int m25332q() {
        return this.f32823q;
    }

    /* renamed from: q0 */
    public void m25333q0(@Nullable Drawable drawable) {
        this.f32817k.setImageDrawable(drawable);
    }

    /* renamed from: r */
    public int m25334r() {
        return this.f32819m;
    }

    /* renamed from: r0 */
    public void m25335r0(boolean z) {
        if (z && this.f32819m != 1) {
            m25305Z(1);
        } else {
            if (z) {
                return;
            }
            m25305Z(0);
        }
    }

    @NonNull
    /* renamed from: s */
    public ImageView.ScaleType m25336s() {
        return this.f32824r;
    }

    /* renamed from: s0 */
    public void m25337s0(@Nullable ColorStateList colorStateList) {
        this.f32821o = colorStateList;
        cgi.m53446a(this.f32811e, this.f32817k, colorStateList, this.f32822p);
    }

    /* renamed from: t */
    public CheckableImageButton m25338t() {
        return this.f32817k;
    }

    /* renamed from: t0 */
    public void m25339t0(@Nullable PorterDuff.Mode mode) {
        this.f32822p = mode;
        cgi.m53446a(this.f32811e, this.f32817k, this.f32821o, mode);
    }

    /* renamed from: u */
    public Drawable m25340u() {
        return this.f32813g.getDrawable();
    }

    /* renamed from: u0 */
    public void m25341u0(@Nullable CharSequence charSequence) {
        this.f32826t = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f32827u.setText(charSequence);
        m25284E0();
    }

    /* renamed from: v */
    public final int m25342v(qqf qqfVar) {
        int i = this.f32818l.f32838c;
        return i == 0 ? qqfVar.mo53554d() : i;
    }

    /* renamed from: v0 */
    public void m25343v0(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f32827u, i);
    }

    @Nullable
    /* renamed from: w */
    public CharSequence m25344w() {
        return this.f32817k.getContentDescription();
    }

    /* renamed from: w0 */
    public void m25345w0(@NonNull ColorStateList colorStateList) {
        this.f32827u.setTextColor(colorStateList);
    }

    @Nullable
    /* renamed from: x */
    public Drawable m25346x() {
        return this.f32817k.getDrawable();
    }

    /* renamed from: x0 */
    public final void m25347x0(@NonNull qqf qqfVar) {
        qqfVar.mo53559s();
        this.f32831y = qqfVar.mo56752h();
        m25314h();
    }

    @Nullable
    /* renamed from: y */
    public CharSequence m25348y() {
        return this.f32826t;
    }

    /* renamed from: y0 */
    public final void m25349y0(@NonNull qqf qqfVar) {
        m25297R();
        this.f32831y = null;
        qqfVar.mo53560u();
    }

    @Nullable
    /* renamed from: z */
    public ColorStateList m25350z() {
        return this.f32827u.getTextColors();
    }

    /* renamed from: z0 */
    public final void m25351z0(boolean z) {
        if (!z || m25330p() == null) {
            cgi.m53446a(this.f32811e, this.f32817k, this.f32821o, this.f32822p);
            return;
        }
        Drawable mutate = DrawableCompat.wrap(m25330p()).mutate();
        DrawableCompat.setTint(mutate, this.f32811e.getErrorCurrentTextColors());
        this.f32817k.setImageDrawable(mutate);
    }
}
