package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
import com.sunia.HTREnginev2.cmf;
import com.sunia.HTREnginev2.cpe;
import com.sunia.HTREnginev2.uxm;
import com.sunia.HTREnginev2.xji;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes6.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int BOX_BACKGROUND_FILLED = 1;
    public static final int BOX_BACKGROUND_NONE = 0;
    public static final int BOX_BACKGROUND_OUTLINE = 2;
    public static final int END_ICON_CLEAR_TEXT = 2;
    public static final int END_ICON_CUSTOM = -1;
    public static final int END_ICON_DROPDOWN_MENU = 3;
    public static final int END_ICON_NONE = 0;
    public static final int END_ICON_PASSWORD_TOGGLE = 1;

    /* renamed from: s1 */
    public static final int f32720s1 = 167;

    /* renamed from: t1 */
    public static final int f32721t1 = 87;

    /* renamed from: u1 */
    public static final int f32722u1 = 67;

    /* renamed from: v1 */
    public static final int f32723v1 = -1;

    /* renamed from: w1 */
    public static final int f32724w1 = -1;

    /* renamed from: y1 */
    public static final String f32726y1 = "TextInputLayout";

    /* renamed from: A0 */
    public boolean f32727A0;

    /* renamed from: B0 */
    @Nullable
    public MaterialShapeDrawable f32728B0;

    /* renamed from: C0 */
    @Nullable
    public MaterialShapeDrawable f32729C0;

    /* renamed from: D0 */
    @NonNull
    public ShapeAppearanceModel f32730D0;

    /* renamed from: E0 */
    public boolean f32731E0;

    /* renamed from: F0 */
    public final int f32732F0;

    /* renamed from: G0 */
    public int f32733G0;

    /* renamed from: H0 */
    public int f32734H0;

    /* renamed from: I0 */
    public int f32735I0;

    /* renamed from: J */
    @Nullable
    public Fade f32736J;

    /* renamed from: J0 */
    public int f32737J0;

    /* renamed from: K0 */
    public int f32738K0;

    /* renamed from: L0 */
    @ColorInt
    public int f32739L0;

    /* renamed from: M0 */
    @ColorInt
    public int f32740M0;

    /* renamed from: N0 */
    public final Rect f32741N0;

    /* renamed from: O */
    @Nullable
    public Fade f32742O;

    /* renamed from: O0 */
    public final Rect f32743O0;

    /* renamed from: P0 */
    public final RectF f32744P0;

    /* renamed from: Q */
    @Nullable
    public ColorStateList f32745Q;

    /* renamed from: Q0 */
    public Typeface f32746Q0;

    /* renamed from: R0 */
    @Nullable
    public Drawable f32747R0;

    /* renamed from: S0 */
    public int f32748S0;

    /* renamed from: T0 */
    public final LinkedHashSet<OnEditTextAttachedListener> f32749T0;

    /* renamed from: U0 */
    @Nullable
    public Drawable f32750U0;

    /* renamed from: V0 */
    public int f32751V0;

    /* renamed from: W0 */
    public Drawable f32752W0;

    /* renamed from: X0 */
    public ColorStateList f32753X0;

    /* renamed from: Y0 */
    public ColorStateList f32754Y0;

    /* renamed from: Z0 */
    @ColorInt
    public int f32755Z0;

    /* renamed from: a1 */
    @ColorInt
    public int f32756a1;

    /* renamed from: b1 */
    @ColorInt
    public int f32757b1;

    /* renamed from: c1 */
    public ColorStateList f32758c1;

    /* renamed from: d1 */
    @ColorInt
    public int f32759d1;

    /* renamed from: e */
    @NonNull
    public final FrameLayout f32760e;

    /* renamed from: e1 */
    @ColorInt
    public int f32761e1;

    /* renamed from: f */
    @NonNull
    public final uxm f32762f;

    /* renamed from: f1 */
    @ColorInt
    public int f32763f1;

    /* renamed from: g */
    @NonNull
    public final C5426a f32764g;

    /* renamed from: g1 */
    @ColorInt
    public int f32765g1;

    /* renamed from: h */
    public EditText f32766h;

    /* renamed from: h1 */
    @ColorInt
    public int f32767h1;

    /* renamed from: i */
    public CharSequence f32768i;

    /* renamed from: i1 */
    public int f32769i1;

    /* renamed from: j */
    public int f32770j;

    /* renamed from: j1 */
    public boolean f32771j1;

    /* renamed from: k */
    public int f32772k;

    /* renamed from: k0 */
    @Nullable
    public ColorStateList f32773k0;

    /* renamed from: k1 */
    public final CollapsingTextHelper f32774k1;

    /* renamed from: l */
    public int f32775l;

    /* renamed from: l1 */
    public boolean f32776l1;

    /* renamed from: m */
    public int f32777m;

    /* renamed from: m1 */
    public boolean f32778m1;

    /* renamed from: n */
    public final xji f32779n;

    /* renamed from: n1 */
    public ValueAnimator f32780n1;

    /* renamed from: o */
    public boolean f32781o;

    /* renamed from: o1 */
    public boolean f32782o1;

    /* renamed from: p */
    public int f32783p;

    /* renamed from: p1 */
    public boolean f32784p1;

    /* renamed from: q */
    public boolean f32785q;

    /* renamed from: q0 */
    @Nullable
    public ColorStateList f32786q0;

    /* renamed from: q1 */
    public boolean f32787q1;

    /* renamed from: r */
    @NonNull
    public LengthCounter f32788r;

    /* renamed from: s */
    @Nullable
    public TextView f32789s;

    /* renamed from: t */
    public int f32790t;

    /* renamed from: t0 */
    @Nullable
    public ColorStateList f32791t0;

    /* renamed from: u */
    public int f32792u;

    /* renamed from: u0 */
    public boolean f32793u0;

    /* renamed from: v */
    public CharSequence f32794v;

    /* renamed from: v0 */
    public CharSequence f32795v0;

    /* renamed from: w */
    public boolean f32796w;

    /* renamed from: w0 */
    public boolean f32797w0;

    /* renamed from: x */
    public TextView f32798x;

    /* renamed from: x0 */
    @Nullable
    public MaterialShapeDrawable f32799x0;

    /* renamed from: y */
    @Nullable
    public ColorStateList f32800y;

    /* renamed from: y0 */
    public MaterialShapeDrawable f32801y0;

    /* renamed from: z */
    public int f32802z;

    /* renamed from: z0 */
    public StateListDrawable f32803z0;

    /* renamed from: r1 */
    public static final int f32719r1 = C5139R.style.Widget_Design_TextInputLayout;

    /* renamed from: x1 */
    public static final int[][] f32725x1 = {new int[]{R.attr.state_pressed}, new int[0]};

    /* loaded from: classes6.dex */
    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* renamed from: d */
        public final TextInputLayout f32804d;

        public AccessibilityDelegate(@NonNull TextInputLayout textInputLayout) {
            this.f32804d = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f32804d.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f32804d.getHint();
            CharSequence error = this.f32804d.getError();
            CharSequence placeholderText = this.f32804d.getPlaceholderText();
            int counterMaxLength = this.f32804d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f32804d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !this.f32804d.m25216N();
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            String charSequence = z2 ? hint.toString() : "";
            this.f32804d.f32762f.m57677B(accessibilityNodeInfoCompat);
            if (z) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(charSequence)) {
                accessibilityNodeInfoCompat.setText(charSequence);
                if (z3 && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(charSequence + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                accessibilityNodeInfoCompat.setHintText(charSequence);
                accessibilityNodeInfoCompat.setShowingHintText(!z);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z5) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            View m58262u = this.f32804d.f32779n.m58262u();
            if (m58262u != null) {
                accessibilityNodeInfoCompat.setLabelFor(m58262u);
            }
            this.f32804d.f32764g.m25328o().mo56756o(view, accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(@NonNull View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.f32804d.f32764g.m25328o().mo56757p(view, accessibilityEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface BoxBackgroundMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface EndIconMode {
    }

    /* loaded from: classes6.dex */
    public interface LengthCounter {
        int countLength(@Nullable Editable editable);
    }

    /* loaded from: classes6.dex */
    public interface OnEditTextAttachedListener {
        void onEditTextAttached(@NonNull TextInputLayout textInputLayout);
    }

    /* loaded from: classes6.dex */
    public interface OnEndIconChangedListener {
        void onEndIconChanged(@NonNull TextInputLayout textInputLayout, int i);
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5422a();

        @Nullable
        CharSequence error;
        boolean isEndIconChecked;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5422a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.error, parcel, i);
            parcel.writeInt(this.isEndIconChecked ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.isEndIconChecked = parcel.readInt() == 1;
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$a */
    /* loaded from: classes6.dex */
    public class C5423a implements TextWatcher {

        /* renamed from: e */
        public int f32805e;

        /* renamed from: f */
        public final /* synthetic */ EditText f32806f;

        public C5423a(EditText editText) {
            this.f32806f = editText;
            this.f32805e = editText.getLineCount();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            TextInputLayout.this.m25250q0(!r0.f32784p1);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.f32781o) {
                textInputLayout.m25232g0(editable);
            }
            if (TextInputLayout.this.f32796w) {
                TextInputLayout.this.m25258u0(editable);
            }
            int lineCount = this.f32806f.getLineCount();
            int i = this.f32805e;
            if (lineCount != i) {
                if (lineCount < i) {
                    int minimumHeight = ViewCompat.getMinimumHeight(this.f32806f);
                    int i2 = TextInputLayout.this.f32769i1;
                    if (minimumHeight != i2) {
                        this.f32806f.setMinimumHeight(i2);
                    }
                }
                this.f32805e = lineCount;
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$b */
    /* loaded from: classes6.dex */
    public class RunnableC5424b implements Runnable {
        public RunnableC5424b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f32764g.m25316i();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$c */
    /* loaded from: classes6.dex */
    public class C5425c implements ValueAnimator.AnimatorUpdateListener {
        public C5425c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TextInputLayout.this.f32774k1.setExpansionFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: H */
    public static Drawable m25191H(MaterialShapeDrawable materialShapeDrawable, int i, int i2, int[][] iArr) {
        return new RippleDrawable(new ColorStateList(iArr, new int[]{MaterialColors.layer(i2, i, 0.1f), i}), materialShapeDrawable, materialShapeDrawable);
    }

    /* renamed from: K */
    public static Drawable m25192K(Context context, MaterialShapeDrawable materialShapeDrawable, int i, int[][] iArr) {
        int color = MaterialColors.getColor(context, C5139R.attr.colorSurface, f32726y1);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        int layer = MaterialColors.layer(i, color, 0.1f);
        materialShapeDrawable2.setFillColor(new ColorStateList(iArr, new int[]{layer, 0}));
        materialShapeDrawable2.setTint(color);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{layer, color});
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        materialShapeDrawable3.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
    }

    /* renamed from: Q */
    public static /* synthetic */ int m25193Q(Editable editable) {
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m25194R() {
        this.f32766h.requestLayout();
    }

    /* renamed from: V */
    public static void m25195V(@NonNull ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m25195V((ViewGroup) childAt, z);
            }
        }
    }

    @Nullable
    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f32766h;
        if (!(editText instanceof AutoCompleteTextView) || cmf.m53476a(editText)) {
            return this.f32799x0;
        }
        int color = MaterialColors.getColor(this.f32766h, C5139R.attr.colorControlHighlight);
        int i = this.f32733G0;
        if (i == 2) {
            return m25192K(getContext(), this.f32799x0, color, f32725x1);
        }
        if (i == 1) {
            return m25191H(this.f32799x0, this.f32740M0, color, f32725x1);
        }
        return null;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.f32803z0 == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.f32803z0 = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.f32803z0.addState(new int[0], m25211G(false));
        }
        return this.f32803z0;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.f32801y0 == null) {
            this.f32801y0 = m25211G(true);
        }
        return this.f32801y0;
    }

    /* renamed from: h0 */
    public static void m25204h0(@NonNull Context context, @NonNull TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? C5139R.string.character_counter_overflowed_content_description : C5139R.string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private void setEditText(EditText editText) {
        if (this.f32766h != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i(f32726y1, "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f32766h = editText;
        int i = this.f32770j;
        if (i != -1) {
            setMinEms(i);
        } else {
            setMinWidth(this.f32775l);
        }
        int i2 = this.f32772k;
        if (i2 != -1) {
            setMaxEms(i2);
        } else {
            setMaxWidth(this.f32777m);
        }
        this.f32727A0 = false;
        m25219S();
        setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
        this.f32774k1.setTypefaces(this.f32766h.getTypeface());
        this.f32774k1.setExpandedTextSize(this.f32766h.getTextSize());
        this.f32774k1.setExpandedLetterSpacing(this.f32766h.getLetterSpacing());
        int gravity = this.f32766h.getGravity();
        this.f32774k1.setCollapsedTextGravity((gravity & (-113)) | 48);
        this.f32774k1.setExpandedTextGravity(gravity);
        this.f32769i1 = ViewCompat.getMinimumHeight(editText);
        this.f32766h.addTextChangedListener(new C5423a(editText));
        if (this.f32753X0 == null) {
            this.f32753X0 = this.f32766h.getHintTextColors();
        }
        if (this.f32793u0) {
            if (TextUtils.isEmpty(this.f32795v0)) {
                CharSequence hint = this.f32766h.getHint();
                this.f32768i = hint;
                setHint(hint);
                this.f32766h.setHint((CharSequence) null);
            }
            this.f32797w0 = true;
        }
        m25236j0();
        if (this.f32789s != null) {
            m25232g0(this.f32766h.getText());
        }
        m25240l0();
        this.f32779n.m58247f();
        this.f32762f.bringToFront();
        this.f32764g.bringToFront();
        m25207C();
        this.f32764g.m25282D0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        m25252r0(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f32795v0)) {
            return;
        }
        this.f32795v0 = charSequence;
        this.f32774k1.setText(charSequence);
        if (this.f32771j1) {
            return;
        }
        m25220T();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f32796w == z) {
            return;
        }
        if (z) {
            m25233i();
        } else {
            m25222W();
            this.f32798x = null;
        }
        this.f32796w = z;
    }

    /* renamed from: A */
    public final boolean m25205A() {
        return this.f32793u0 && !TextUtils.isEmpty(this.f32795v0) && (this.f32799x0 instanceof cpe);
    }

    @VisibleForTesting
    /* renamed from: B */
    public boolean m25206B() {
        return m25205A() && ((cpe) this.f32799x0).m53486B();
    }

    /* renamed from: C */
    public final void m25207C() {
        Iterator<OnEditTextAttachedListener> it2 = this.f32749T0.iterator();
        while (it2.hasNext()) {
            it2.next().onEditTextAttached(this);
        }
    }

    /* renamed from: D */
    public final void m25208D(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        if (this.f32729C0 == null || (materialShapeDrawable = this.f32728B0) == null) {
            return;
        }
        materialShapeDrawable.draw(canvas);
        if (this.f32766h.isFocused()) {
            Rect bounds = this.f32729C0.getBounds();
            Rect bounds2 = this.f32728B0.getBounds();
            float expansionFraction = this.f32774k1.getExpansionFraction();
            int centerX = bounds2.centerX();
            bounds.left = AnimationUtils.lerp(centerX, bounds2.left, expansionFraction);
            bounds.right = AnimationUtils.lerp(centerX, bounds2.right, expansionFraction);
            this.f32729C0.draw(canvas);
        }
    }

    /* renamed from: E */
    public final void m25209E(@NonNull Canvas canvas) {
        if (this.f32793u0) {
            this.f32774k1.draw(canvas);
        }
    }

    /* renamed from: F */
    public final void m25210F(boolean z) {
        ValueAnimator valueAnimator = this.f32780n1;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f32780n1.cancel();
        }
        if (z && this.f32778m1) {
            m25237k(0.0f);
        } else {
            this.f32774k1.setExpansionFraction(0.0f);
        }
        if (m25205A() && ((cpe) this.f32799x0).m53486B()) {
            m25263x();
        }
        this.f32771j1 = true;
        m25214L();
        this.f32762f.m57692m(true);
        this.f32764g.m25291L(true);
    }

    /* renamed from: G */
    public final MaterialShapeDrawable m25211G(boolean z) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(C5139R.dimen.mtrl_shape_corner_size_small_component);
        float f = z ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f32766h;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(C5139R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(C5139R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        ShapeAppearanceModel build = ShapeAppearanceModel.builder().setTopLeftCornerSize(f).setTopRightCornerSize(f).setBottomLeftCornerSize(dimensionPixelOffset).setBottomRightCornerSize(dimensionPixelOffset).build();
        EditText editText2 = this.f32766h;
        MaterialShapeDrawable createWithElevationOverlay = MaterialShapeDrawable.createWithElevationOverlay(getContext(), popupElevation, editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null);
        createWithElevationOverlay.setShapeAppearanceModel(build);
        createWithElevationOverlay.setPadding(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        return createWithElevationOverlay;
    }

    /* renamed from: I */
    public final int m25212I(int i, boolean z) {
        return i + ((z || getPrefixText() == null) ? (!z || getSuffixText() == null) ? this.f32766h.getCompoundPaddingLeft() : this.f32764g.m25275A() : this.f32762f.m57682c());
    }

    /* renamed from: J */
    public final int m25213J(int i, boolean z) {
        return i - ((z || getSuffixText() == null) ? (!z || getPrefixText() == null) ? this.f32766h.getCompoundPaddingRight() : this.f32762f.m57682c() : this.f32764g.m25275A());
    }

    /* renamed from: L */
    public final void m25214L() {
        TextView textView = this.f32798x;
        if (textView == null || !this.f32796w) {
            return;
        }
        textView.setText((CharSequence) null);
        TransitionManager.beginDelayedTransition(this.f32760e, this.f32742O);
        this.f32798x.setVisibility(4);
    }

    @VisibleForTesting
    /* renamed from: M */
    public final boolean m25215M() {
        return this.f32779n.m58266y();
    }

    /* renamed from: N */
    public final boolean m25216N() {
        return this.f32771j1;
    }

    /* renamed from: O */
    public final boolean m25217O() {
        return m25225Z() || (this.f32789s != null && this.f32785q);
    }

    /* renamed from: P */
    public final boolean m25218P() {
        return this.f32733G0 == 1 && this.f32766h.getMinLines() <= 1;
    }

    /* renamed from: S */
    public final void m25219S() {
        m25245o();
        m25244n0();
        m25262w0();
        m25229d0();
        m25235j();
        if (this.f32733G0 != 0) {
            m25248p0();
        }
        m25223X();
    }

    /* renamed from: T */
    public final void m25220T() {
        if (m25205A()) {
            RectF rectF = this.f32744P0;
            this.f32774k1.getCollapsedTextActualBounds(rectF, this.f32766h.getWidth(), this.f32766h.getGravity());
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            m25243n(rectF);
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f32735I0);
            ((cpe) this.f32799x0).m53489E(rectF);
        }
    }

    /* renamed from: U */
    public final void m25221U() {
        if (!m25205A() || this.f32771j1) {
            return;
        }
        m25263x();
        m25220T();
    }

    /* renamed from: W */
    public final void m25222W() {
        TextView textView = this.f32798x;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* renamed from: X */
    public final void m25223X() {
        EditText editText = this.f32766h;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i = this.f32733G0;
                if (i == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* renamed from: Y */
    public void m25224Y(@NonNull TextView textView, @StyleRes int i) {
        boolean z = true;
        try {
            TextViewCompat.setTextAppearance(textView, i);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                z = false;
            }
        } catch (Exception unused) {
        }
        if (z) {
            TextViewCompat.setTextAppearance(textView, C5139R.style.TextAppearance_AppCompat_Caption);
            textView.setTextColor(ContextCompat.getColor(getContext(), C5139R.color.design_error));
        }
    }

    /* renamed from: Z */
    public boolean m25225Z() {
        return this.f32779n.m58254m();
    }

    /* renamed from: a0 */
    public final boolean m25226a0() {
        return (this.f32764g.m25289J() || ((this.f32764g.m25279C() && isEndIconVisible()) || this.f32764g.m25348y() != null)) && this.f32764g.getMeasuredWidth() > 0;
    }

    public void addOnEditTextAttachedListener(@NonNull OnEditTextAttachedListener onEditTextAttachedListener) {
        this.f32749T0.add(onEditTextAttachedListener);
        if (this.f32766h != null) {
            onEditTextAttachedListener.onEditTextAttached(this);
        }
    }

    public void addOnEndIconChangedListener(@NonNull OnEndIconChangedListener onEndIconChangedListener) {
        this.f32764g.m25312g(onEndIconChangedListener);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f32760e.addView(view, layoutParams2);
        this.f32760e.setLayoutParams(layoutParams);
        m25248p0();
        setEditText((EditText) view);
    }

    /* renamed from: b0 */
    public final boolean m25227b0() {
        return (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.f32762f.getMeasuredWidth() > 0;
    }

    /* renamed from: c0 */
    public final void m25228c0() {
        if (this.f32798x == null || !this.f32796w || TextUtils.isEmpty(this.f32794v)) {
            return;
        }
        this.f32798x.setText(this.f32794v);
        TransitionManager.beginDelayedTransition(this.f32760e, this.f32736J);
        this.f32798x.setVisibility(0);
        this.f32798x.bringToFront();
        announceForAccessibility(this.f32794v);
    }

    public void clearOnEditTextAttachedListeners() {
        this.f32749T0.clear();
    }

    public void clearOnEndIconChangedListeners() {
        this.f32764g.m25318j();
    }

    /* renamed from: d0 */
    public final void m25229d0() {
        if (this.f32733G0 == 1) {
            if (MaterialResources.isFontScaleAtLeast2_0(getContext())) {
                this.f32734H0 = getResources().getDimensionPixelSize(C5139R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
                this.f32734H0 = getResources().getDimensionPixelSize(C5139R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i) {
        EditText editText = this.f32766h;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f32768i != null) {
            boolean z = this.f32797w0;
            this.f32797w0 = false;
            CharSequence hint = editText.getHint();
            this.f32766h.setHint(this.f32768i);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f32766h.setHint(hint);
                this.f32797w0 = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f32760e.getChildCount());
        for (int i2 = 0; i2 < this.f32760e.getChildCount(); i2++) {
            View childAt = this.f32760e.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.f32766h) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.f32784p1 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f32784p1 = false;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        m25209E(canvas);
        m25208D(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f32782o1) {
            return;
        }
        this.f32782o1 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        CollapsingTextHelper collapsingTextHelper = this.f32774k1;
        boolean state = collapsingTextHelper != null ? collapsingTextHelper.setState(drawableState) | false : false;
        if (this.f32766h != null) {
            m25250q0(ViewCompat.isLaidOut(this) && isEnabled());
        }
        m25240l0();
        m25262w0();
        if (state) {
            invalidate();
        }
        this.f32782o1 = false;
    }

    /* renamed from: e0 */
    public final void m25230e0(@NonNull Rect rect) {
        MaterialShapeDrawable materialShapeDrawable = this.f32728B0;
        if (materialShapeDrawable != null) {
            int i = rect.bottom;
            materialShapeDrawable.setBounds(rect.left, i - this.f32737J0, rect.right, i);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f32729C0;
        if (materialShapeDrawable2 != null) {
            int i2 = rect.bottom;
            materialShapeDrawable2.setBounds(rect.left, i2 - this.f32738K0, rect.right, i2);
        }
    }

    /* renamed from: f0 */
    public final void m25231f0() {
        if (this.f32789s != null) {
            EditText editText = this.f32766h;
            m25232g0(editText == null ? null : editText.getText());
        }
    }

    /* renamed from: g0 */
    public void m25232g0(@Nullable Editable editable) {
        int countLength = this.f32788r.countLength(editable);
        boolean z = this.f32785q;
        int i = this.f32783p;
        if (i == -1) {
            this.f32789s.setText(String.valueOf(countLength));
            this.f32789s.setContentDescription(null);
            this.f32785q = false;
        } else {
            this.f32785q = countLength > i;
            m25204h0(getContext(), this.f32789s, countLength, this.f32783p, this.f32785q);
            if (z != this.f32785q) {
                m25234i0();
            }
            this.f32789s.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(C5139R.string.character_counter_pattern, Integer.valueOf(countLength), Integer.valueOf(this.f32783p))));
        }
        if (this.f32766h == null || z == this.f32785q) {
            return;
        }
        m25250q0(false);
        m25262w0();
        m25240l0();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f32766h;
        return editText != null ? editText.getBaseline() + getPaddingTop() + m25257u() : super.getBaseline();
    }

    @NonNull
    public MaterialShapeDrawable getBoxBackground() {
        int i = this.f32733G0;
        if (i == 1 || i == 2) {
            return this.f32799x0;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f32740M0;
    }

    public int getBoxBackgroundMode() {
        return this.f32733G0;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f32734H0;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return ViewUtils.isLayoutRtl(this) ? this.f32730D0.getBottomLeftCornerSize().getCornerSize(this.f32744P0) : this.f32730D0.getBottomRightCornerSize().getCornerSize(this.f32744P0);
    }

    public float getBoxCornerRadiusBottomStart() {
        return ViewUtils.isLayoutRtl(this) ? this.f32730D0.getBottomRightCornerSize().getCornerSize(this.f32744P0) : this.f32730D0.getBottomLeftCornerSize().getCornerSize(this.f32744P0);
    }

    public float getBoxCornerRadiusTopEnd() {
        return ViewUtils.isLayoutRtl(this) ? this.f32730D0.getTopLeftCornerSize().getCornerSize(this.f32744P0) : this.f32730D0.getTopRightCornerSize().getCornerSize(this.f32744P0);
    }

    public float getBoxCornerRadiusTopStart() {
        return ViewUtils.isLayoutRtl(this) ? this.f32730D0.getTopRightCornerSize().getCornerSize(this.f32744P0) : this.f32730D0.getTopLeftCornerSize().getCornerSize(this.f32744P0);
    }

    public int getBoxStrokeColor() {
        return this.f32757b1;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f32758c1;
    }

    public int getBoxStrokeWidth() {
        return this.f32737J0;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f32738K0;
    }

    public int getCounterMaxLength() {
        return this.f32783p;
    }

    @Nullable
    public CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f32781o && this.f32785q && (textView = this.f32789s) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f32773k0;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f32745Q;
    }

    @Nullable
    @RequiresApi(29)
    public ColorStateList getCursorColor() {
        return this.f32786q0;
    }

    @Nullable
    @RequiresApi(29)
    public ColorStateList getCursorErrorColor() {
        return this.f32791t0;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f32753X0;
    }

    @Nullable
    public EditText getEditText() {
        return this.f32766h;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.f32764g.m25326n();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.f32764g.m25330p();
    }

    public int getEndIconMinSize() {
        return this.f32764g.m25332q();
    }

    public int getEndIconMode() {
        return this.f32764g.m25334r();
    }

    @NonNull
    public ImageView.ScaleType getEndIconScaleType() {
        return this.f32764g.m25336s();
    }

    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.f32764g.m25338t();
    }

    @Nullable
    public CharSequence getError() {
        if (this.f32779n.m58227F()) {
            return this.f32779n.m58258q();
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f32779n.m58256o();
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f32779n.m58257p();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f32779n.m58259r();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.f32764g.m25340u();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f32779n.m58228G()) {
            return this.f32779n.m58261t();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f32779n.m58264w();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.f32793u0) {
            return this.f32795v0;
        }
        return null;
    }

    @VisibleForTesting
    public final float getHintCollapsedTextHeight() {
        return this.f32774k1.getCollapsedTextHeight();
    }

    @VisibleForTesting
    public final int getHintCurrentCollapsedTextColor() {
        return this.f32774k1.getCurrentCollapsedTextColor();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.f32754Y0;
    }

    @NonNull
    public LengthCounter getLengthCounter() {
        return this.f32788r;
    }

    public int getMaxEms() {
        return this.f32772k;
    }

    @Px
    public int getMaxWidth() {
        return this.f32777m;
    }

    public int getMinEms() {
        return this.f32770j;
    }

    @Px
    public int getMinWidth() {
        return this.f32775l;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f32764g.m25344w();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f32764g.m25346x();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f32796w) {
            return this.f32794v;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f32802z;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f32800y;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f32762f.m57680a();
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f32762f.m57681b();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f32762f.m57683d();
    }

    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f32730D0;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f32762f.m57684e();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f32762f.m57685f();
    }

    public int getStartIconMinSize() {
        return this.f32762f.m57686g();
    }

    @NonNull
    public ImageView.ScaleType getStartIconScaleType() {
        return this.f32762f.m57687h();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f32764g.m25348y();
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f32764g.m25350z();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f32764g.m25277B();
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f32746Q0;
    }

    /* renamed from: i */
    public final void m25233i() {
        TextView textView = this.f32798x;
        if (textView != null) {
            this.f32760e.addView(textView);
            this.f32798x.setVisibility(0);
        }
    }

    /* renamed from: i0 */
    public final void m25234i0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f32789s;
        if (textView != null) {
            m25224Y(textView, this.f32785q ? this.f32790t : this.f32792u);
            if (!this.f32785q && (colorStateList2 = this.f32745Q) != null) {
                this.f32789s.setTextColor(colorStateList2);
            }
            if (!this.f32785q || (colorStateList = this.f32773k0) == null) {
                return;
            }
            this.f32789s.setTextColor(colorStateList);
        }
    }

    public boolean isCounterEnabled() {
        return this.f32781o;
    }

    public boolean isEndIconCheckable() {
        return this.f32764g.m25286G();
    }

    public boolean isEndIconVisible() {
        return this.f32764g.m25288I();
    }

    public boolean isErrorEnabled() {
        return this.f32779n.m58227F();
    }

    public boolean isExpandedHintEnabled() {
        return this.f32776l1;
    }

    public boolean isHelperTextEnabled() {
        return this.f32779n.m58228G();
    }

    public boolean isHintAnimationEnabled() {
        return this.f32778m1;
    }

    public boolean isHintEnabled() {
        return this.f32793u0;
    }

    @Deprecated
    public boolean isPasswordVisibilityToggleEnabled() {
        return this.f32764g.m25290K();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isProvidingHint() {
        return this.f32797w0;
    }

    public boolean isStartIconCheckable() {
        return this.f32762f.m57690k();
    }

    public boolean isStartIconVisible() {
        return this.f32762f.m57691l();
    }

    /* renamed from: j */
    public final void m25235j() {
        if (this.f32766h == null || this.f32733G0 != 1) {
            return;
        }
        if (MaterialResources.isFontScaleAtLeast2_0(getContext())) {
            EditText editText = this.f32766h;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(C5139R.dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.f32766h), getResources().getDimensionPixelSize(C5139R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            EditText editText2 = this.f32766h;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(C5139R.dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.f32766h), getResources().getDimensionPixelSize(C5139R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    @RequiresApi(29)
    /* renamed from: j0 */
    public final void m25236j0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f32786q0;
        if (colorStateList2 == null) {
            colorStateList2 = MaterialColors.getColorStateListOrNull(getContext(), C5139R.attr.colorControlActivated);
        }
        EditText editText = this.f32766h;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable mutate = DrawableCompat.wrap(this.f32766h.getTextCursorDrawable()).mutate();
        if (m25217O() && (colorStateList = this.f32791t0) != null) {
            colorStateList2 = colorStateList;
        }
        DrawableCompat.setTintList(mutate, colorStateList2);
    }

    @VisibleForTesting
    /* renamed from: k */
    public void m25237k(float f) {
        if (this.f32774k1.getExpansionFraction() == f) {
            return;
        }
        if (this.f32780n1 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f32780n1 = valueAnimator;
            valueAnimator.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), C5139R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            this.f32780n1.setDuration(MotionUtils.resolveThemeDuration(getContext(), C5139R.attr.motionDurationMedium4, 167));
            this.f32780n1.addUpdateListener(new C5425c());
        }
        this.f32780n1.setFloatValues(this.f32774k1.getExpansionFraction(), f);
        this.f32780n1.start();
    }

    /* renamed from: k0 */
    public boolean m25238k0() {
        boolean z;
        if (this.f32766h == null) {
            return false;
        }
        boolean z2 = true;
        if (m25227b0()) {
            int measuredWidth = this.f32762f.getMeasuredWidth() - this.f32766h.getPaddingLeft();
            if (this.f32747R0 == null || this.f32748S0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f32747R0 = colorDrawable;
                this.f32748S0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f32766h);
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.f32747R0;
            if (drawable != drawable2) {
                TextViewCompat.setCompoundDrawablesRelative(this.f32766h, drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.f32747R0 != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f32766h);
                TextViewCompat.setCompoundDrawablesRelative(this.f32766h, null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f32747R0 = null;
                z = true;
            }
            z = false;
        }
        if (m25226a0()) {
            int measuredWidth2 = this.f32764g.m25277B().getMeasuredWidth() - this.f32766h.getPaddingRight();
            CheckableImageButton m25324m = this.f32764g.m25324m();
            if (m25324m != null) {
                measuredWidth2 = measuredWidth2 + m25324m.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) m25324m.getLayoutParams());
            }
            Drawable[] compoundDrawablesRelative3 = TextViewCompat.getCompoundDrawablesRelative(this.f32766h);
            Drawable drawable3 = this.f32750U0;
            if (drawable3 == null || this.f32751V0 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f32750U0 = colorDrawable2;
                    this.f32751V0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = compoundDrawablesRelative3[2];
                Drawable drawable5 = this.f32750U0;
                if (drawable4 != drawable5) {
                    this.f32752W0 = drawable4;
                    TextViewCompat.setCompoundDrawablesRelative(this.f32766h, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], drawable5, compoundDrawablesRelative3[3]);
                } else {
                    z2 = z;
                }
            } else {
                this.f32751V0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.setCompoundDrawablesRelative(this.f32766h, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.f32750U0, compoundDrawablesRelative3[3]);
            }
        } else {
            if (this.f32750U0 == null) {
                return z;
            }
            Drawable[] compoundDrawablesRelative4 = TextViewCompat.getCompoundDrawablesRelative(this.f32766h);
            if (compoundDrawablesRelative4[2] == this.f32750U0) {
                TextViewCompat.setCompoundDrawablesRelative(this.f32766h, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.f32752W0, compoundDrawablesRelative4[3]);
            } else {
                z2 = z;
            }
            this.f32750U0 = null;
        }
        return z2;
    }

    /* renamed from: l */
    public final void m25239l() {
        MaterialShapeDrawable materialShapeDrawable = this.f32799x0;
        if (materialShapeDrawable == null) {
            return;
        }
        ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.getShapeAppearanceModel();
        ShapeAppearanceModel shapeAppearanceModel2 = this.f32730D0;
        if (shapeAppearanceModel != shapeAppearanceModel2) {
            this.f32799x0.setShapeAppearanceModel(shapeAppearanceModel2);
        }
        if (m25259v()) {
            this.f32799x0.setStroke(this.f32735I0, this.f32739L0);
        }
        int m25247p = m25247p();
        this.f32740M0 = m25247p;
        this.f32799x0.setFillColor(ColorStateList.valueOf(m25247p));
        m25241m();
        m25244n0();
    }

    /* renamed from: l0 */
    public void m25240l0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f32766h;
        if (editText == null || this.f32733G0 != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (m25225Z()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f32785q && (textView = this.f32789s) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f32766h.refreshDrawableState();
        }
    }

    /* renamed from: m */
    public final void m25241m() {
        if (this.f32728B0 == null || this.f32729C0 == null) {
            return;
        }
        if (m25261w()) {
            this.f32728B0.setFillColor(this.f32766h.isFocused() ? ColorStateList.valueOf(this.f32755Z0) : ColorStateList.valueOf(this.f32739L0));
            this.f32729C0.setFillColor(ColorStateList.valueOf(this.f32739L0));
        }
        invalidate();
    }

    /* renamed from: m0 */
    public final void m25242m0() {
        ViewCompat.setBackground(this.f32766h, getEditTextBoxBackground());
    }

    /* renamed from: n */
    public final void m25243n(@NonNull RectF rectF) {
        float f = rectF.left;
        int i = this.f32732F0;
        rectF.left = f - i;
        rectF.right += i;
    }

    /* renamed from: n0 */
    public void m25244n0() {
        EditText editText = this.f32766h;
        if (editText == null || this.f32799x0 == null) {
            return;
        }
        if ((this.f32727A0 || editText.getBackground() == null) && this.f32733G0 != 0) {
            m25242m0();
            this.f32727A0 = true;
        }
    }

    /* renamed from: o */
    public final void m25245o() {
        int i = this.f32733G0;
        if (i == 0) {
            this.f32799x0 = null;
            this.f32728B0 = null;
            this.f32729C0 = null;
            return;
        }
        if (i == 1) {
            this.f32799x0 = new MaterialShapeDrawable(this.f32730D0);
            this.f32728B0 = new MaterialShapeDrawable();
            this.f32729C0 = new MaterialShapeDrawable();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(this.f32733G0 + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.f32793u0 || (this.f32799x0 instanceof cpe)) {
                this.f32799x0 = new MaterialShapeDrawable(this.f32730D0);
            } else {
                this.f32799x0 = cpe.m53485z(this.f32730D0);
            }
            this.f32728B0 = null;
            this.f32729C0 = null;
        }
    }

    /* renamed from: o0 */
    public final boolean m25246o0() {
        int max;
        if (this.f32766h == null || this.f32766h.getMeasuredHeight() >= (max = Math.max(this.f32764g.getMeasuredHeight(), this.f32762f.getMeasuredHeight()))) {
            return false;
        }
        this.f32766h.setMinimumHeight(max);
        return true;
    }

    @Override // android.view.View
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f32774k1.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f32764g.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.f32787q1 = false;
        boolean m25246o0 = m25246o0();
        boolean m25238k0 = m25238k0();
        if (m25246o0 || m25238k0) {
            this.f32766h.post(new Runnable() { // from class: com.sunia.HTREnginev2.fdn
                @Override // java.lang.Runnable
                public final void run() {
                    TextInputLayout.this.m25194R();
                }
            });
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f32766h;
        if (editText != null) {
            Rect rect = this.f32741N0;
            DescendantOffsetUtils.getDescendantRect(this, editText, rect);
            m25230e0(rect);
            if (this.f32793u0) {
                this.f32774k1.setExpandedTextSize(this.f32766h.getTextSize());
                int gravity = this.f32766h.getGravity();
                this.f32774k1.setCollapsedTextGravity((gravity & (-113)) | 48);
                this.f32774k1.setExpandedTextGravity(gravity);
                this.f32774k1.setCollapsedBounds(m25249q(rect));
                this.f32774k1.setExpandedBounds(m25255t(rect));
                this.f32774k1.recalculate();
                if (!m25205A() || this.f32771j1) {
                    return;
                }
                m25220T();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.f32787q1) {
            this.f32764g.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f32787q1 = true;
        }
        m25254s0();
        this.f32764g.m25282D0();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.error);
        if (savedState.isEndIconChecked) {
            post(new RunnableC5424b());
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 1;
        if (z != this.f32731E0) {
            float cornerSize = this.f32730D0.getTopLeftCornerSize().getCornerSize(this.f32744P0);
            float cornerSize2 = this.f32730D0.getTopRightCornerSize().getCornerSize(this.f32744P0);
            ShapeAppearanceModel build = ShapeAppearanceModel.builder().setTopLeftCorner(this.f32730D0.getTopRightCorner()).setTopRightCorner(this.f32730D0.getTopLeftCorner()).setBottomLeftCorner(this.f32730D0.getBottomRightCorner()).setBottomRightCorner(this.f32730D0.getBottomLeftCorner()).setTopLeftCornerSize(cornerSize2).setTopRightCornerSize(cornerSize).setBottomLeftCornerSize(this.f32730D0.getBottomRightCornerSize().getCornerSize(this.f32744P0)).setBottomRightCornerSize(this.f32730D0.getBottomLeftCornerSize().getCornerSize(this.f32744P0)).build();
            this.f32731E0 = z;
            setShapeAppearanceModel(build);
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (m25225Z()) {
            savedState.error = getError();
        }
        savedState.isEndIconChecked = this.f32764g.m25287H();
        return savedState;
    }

    /* renamed from: p */
    public final int m25247p() {
        return this.f32733G0 == 1 ? MaterialColors.layer(MaterialColors.getColor(this, C5139R.attr.colorSurface, 0), this.f32740M0) : this.f32740M0;
    }

    /* renamed from: p0 */
    public final void m25248p0() {
        if (this.f32733G0 != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f32760e.getLayoutParams();
            int m25257u = m25257u();
            if (m25257u != layoutParams.topMargin) {
                layoutParams.topMargin = m25257u;
                this.f32760e.requestLayout();
            }
        }
    }

    @Deprecated
    public void passwordVisibilityToggleRequested(boolean z) {
        this.f32764g.m25276A0(z);
    }

    @NonNull
    /* renamed from: q */
    public final Rect m25249q(@NonNull Rect rect) {
        if (this.f32766h == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f32743O0;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        rect2.bottom = rect.bottom;
        int i = this.f32733G0;
        if (i == 1) {
            rect2.left = m25212I(rect.left, isLayoutRtl);
            rect2.top = rect.top + this.f32734H0;
            rect2.right = m25213J(rect.right, isLayoutRtl);
            return rect2;
        }
        if (i != 2) {
            rect2.left = m25212I(rect.left, isLayoutRtl);
            rect2.top = getPaddingTop();
            rect2.right = m25213J(rect.right, isLayoutRtl);
            return rect2;
        }
        rect2.left = rect.left + this.f32766h.getPaddingLeft();
        rect2.top = rect.top - m25257u();
        rect2.right = rect.right - this.f32766h.getPaddingRight();
        return rect2;
    }

    /* renamed from: q0 */
    public void m25250q0(boolean z) {
        m25252r0(z, false);
    }

    /* renamed from: r */
    public final int m25251r(@NonNull Rect rect, @NonNull Rect rect2, float f) {
        return m25218P() ? (int) (rect2.top + f) : rect.bottom - this.f32766h.getCompoundPaddingBottom();
    }

    /* renamed from: r0 */
    public final void m25252r0(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f32766h;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f32766h;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f32753X0;
        if (colorStateList2 != null) {
            this.f32774k1.setCollapsedAndExpandedTextColor(colorStateList2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f32753X0;
            this.f32774k1.setCollapsedAndExpandedTextColor(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f32767h1) : this.f32767h1));
        } else if (m25225Z()) {
            this.f32774k1.setCollapsedAndExpandedTextColor(this.f32779n.m58260s());
        } else if (this.f32785q && (textView = this.f32789s) != null) {
            this.f32774k1.setCollapsedAndExpandedTextColor(textView.getTextColors());
        } else if (z4 && (colorStateList = this.f32754Y0) != null) {
            this.f32774k1.setCollapsedTextColor(colorStateList);
        }
        if (z3 || !this.f32776l1 || (isEnabled() && z4)) {
            if (z2 || this.f32771j1) {
                m25264y(z);
                return;
            }
            return;
        }
        if (z2 || !this.f32771j1) {
            m25210F(z);
        }
    }

    public void refreshEndIconDrawableState() {
        this.f32764g.m25293N();
    }

    public void refreshErrorIconDrawableState() {
        this.f32764g.m25294O();
    }

    public void refreshStartIconDrawableState() {
        this.f32762f.m57693n();
    }

    public void removeOnEditTextAttachedListener(@NonNull OnEditTextAttachedListener onEditTextAttachedListener) {
        this.f32749T0.remove(onEditTextAttachedListener);
    }

    public void removeOnEndIconChangedListener(@NonNull OnEndIconChangedListener onEndIconChangedListener) {
        this.f32764g.m25296Q(onEndIconChangedListener);
    }

    /* renamed from: s */
    public final int m25253s(@NonNull Rect rect, float f) {
        return m25218P() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f32766h.getCompoundPaddingTop();
    }

    /* renamed from: s0 */
    public final void m25254s0() {
        EditText editText;
        if (this.f32798x == null || (editText = this.f32766h) == null) {
            return;
        }
        this.f32798x.setGravity(editText.getGravity());
        this.f32798x.setPadding(this.f32766h.getCompoundPaddingLeft(), this.f32766h.getCompoundPaddingTop(), this.f32766h.getCompoundPaddingRight(), this.f32766h.getCompoundPaddingBottom());
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.f32740M0 != i) {
            this.f32740M0 = i;
            this.f32759d1 = i;
            this.f32763f1 = i;
            this.f32765g1 = i;
            m25239l();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f32759d1 = defaultColor;
        this.f32740M0 = defaultColor;
        this.f32761e1 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f32763f1 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f32765g1 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        m25239l();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f32733G0) {
            return;
        }
        this.f32733G0 = i;
        if (this.f32766h != null) {
            m25219S();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.f32734H0 = i;
    }

    public void setBoxCornerFamily(int i) {
        this.f32730D0 = this.f32730D0.toBuilder().setTopLeftCorner(i, this.f32730D0.getTopLeftCornerSize()).setTopRightCorner(i, this.f32730D0.getTopRightCornerSize()).setBottomLeftCorner(i, this.f32730D0.getBottomLeftCornerSize()).setBottomRightCorner(i, this.f32730D0.getBottomRightCornerSize()).build();
        m25239l();
    }

    public void setBoxCornerRadii(float f, float f2, float f3, float f4) {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        this.f32731E0 = isLayoutRtl;
        float f5 = isLayoutRtl ? f2 : f;
        if (!isLayoutRtl) {
            f = f2;
        }
        float f6 = isLayoutRtl ? f4 : f3;
        if (!isLayoutRtl) {
            f3 = f4;
        }
        MaterialShapeDrawable materialShapeDrawable = this.f32799x0;
        if (materialShapeDrawable != null && materialShapeDrawable.getTopLeftCornerResolvedSize() == f5 && this.f32799x0.getTopRightCornerResolvedSize() == f && this.f32799x0.getBottomLeftCornerResolvedSize() == f6 && this.f32799x0.getBottomRightCornerResolvedSize() == f3) {
            return;
        }
        this.f32730D0 = this.f32730D0.toBuilder().setTopLeftCornerSize(f5).setTopRightCornerSize(f).setBottomLeftCornerSize(f6).setBottomRightCornerSize(f3).build();
        m25239l();
    }

    public void setBoxCornerRadiiResources(@DimenRes int i, @DimenRes int i2, @DimenRes int i3, @DimenRes int i4) {
        setBoxCornerRadii(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i3));
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.f32757b1 != i) {
            this.f32757b1 = i;
            m25262w0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f32755Z0 = colorStateList.getDefaultColor();
            this.f32767h1 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f32756a1 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f32757b1 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f32757b1 != colorStateList.getDefaultColor()) {
            this.f32757b1 = colorStateList.getDefaultColor();
        }
        m25262w0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f32758c1 != colorStateList) {
            this.f32758c1 = colorStateList;
            m25262w0();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f32737J0 = i;
        m25262w0();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f32738K0 = i;
        m25262w0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f32781o != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f32789s = appCompatTextView;
                appCompatTextView.setId(C5139R.id.textinput_counter);
                Typeface typeface = this.f32746Q0;
                if (typeface != null) {
                    this.f32789s.setTypeface(typeface);
                }
                this.f32789s.setMaxLines(1);
                this.f32779n.m58246e(this.f32789s, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f32789s.getLayoutParams(), getResources().getDimensionPixelOffset(C5139R.dimen.mtrl_textinput_counter_margin_start));
                m25234i0();
                m25231f0();
            } else {
                this.f32779n.m58229H(this.f32789s, 2);
                this.f32789s = null;
            }
            this.f32781o = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f32783p != i) {
            if (i > 0) {
                this.f32783p = i;
            } else {
                this.f32783p = -1;
            }
            if (this.f32781o) {
                m25231f0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f32790t != i) {
            this.f32790t = i;
            m25234i0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f32773k0 != colorStateList) {
            this.f32773k0 = colorStateList;
            m25234i0();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f32792u != i) {
            this.f32792u = i;
            m25234i0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f32745Q != colorStateList) {
            this.f32745Q = colorStateList;
            m25234i0();
        }
    }

    @RequiresApi(29)
    public void setCursorColor(@Nullable ColorStateList colorStateList) {
        if (this.f32786q0 != colorStateList) {
            this.f32786q0 = colorStateList;
            m25236j0();
        }
    }

    @RequiresApi(29)
    public void setCursorErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f32791t0 != colorStateList) {
            this.f32791t0 = colorStateList;
            if (m25217O()) {
                m25236j0();
            }
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f32753X0 = colorStateList;
        this.f32754Y0 = colorStateList;
        if (this.f32766h != null) {
            m25250q0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m25195V(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f32764g.m25298S(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f32764g.m25299T(z);
    }

    public void setEndIconContentDescription(@StringRes int i) {
        this.f32764g.m25300U(i);
    }

    public void setEndIconDrawable(@DrawableRes int i) {
        this.f32764g.m25302W(i);
    }

    public void setEndIconMinSize(@IntRange(from = 0) int i) {
        this.f32764g.m25304Y(i);
    }

    public void setEndIconMode(int i) {
        this.f32764g.m25305Z(i);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32764g.m25306a0(onClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32764g.m25307b0(onLongClickListener);
    }

    public void setEndIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f32764g.m25308c0(scaleType);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        this.f32764g.m25309d0(colorStateList);
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32764g.m25310e0(mode);
    }

    public void setEndIconVisible(boolean z) {
        this.f32764g.m25311f0(z);
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f32779n.m58227F()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f32779n.m58222A();
        } else {
            this.f32779n.m58243V(charSequence);
        }
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        this.f32779n.m58231J(i);
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f32779n.m58232K(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        this.f32779n.m58233L(z);
    }

    public void setErrorIconDrawable(@DrawableRes int i) {
        this.f32764g.m25313g0(i);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32764g.m25317i0(onClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32764g.m25319j0(onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        this.f32764g.m25321k0(colorStateList);
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32764g.m25323l0(mode);
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        this.f32779n.m58234M(i);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f32779n.m58235N(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f32776l1 != z) {
            this.f32776l1 = z;
            m25250q0(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (isHelperTextEnabled()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!isHelperTextEnabled()) {
                setHelperTextEnabled(true);
            }
            this.f32779n.m58244W(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f32779n.m58238Q(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f32779n.m58237P(z);
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        this.f32779n.m58236O(i);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.f32793u0) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f32778m1 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f32793u0) {
            this.f32793u0 = z;
            if (z) {
                CharSequence hint = this.f32766h.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f32795v0)) {
                        setHint(hint);
                    }
                    this.f32766h.setHint((CharSequence) null);
                }
                this.f32797w0 = true;
            } else {
                this.f32797w0 = false;
                if (!TextUtils.isEmpty(this.f32795v0) && TextUtils.isEmpty(this.f32766h.getHint())) {
                    this.f32766h.setHint(this.f32795v0);
                }
                setHintInternal(null);
            }
            if (this.f32766h != null) {
                m25248p0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i) {
        this.f32774k1.setCollapsedTextAppearance(i);
        this.f32754Y0 = this.f32774k1.getCollapsedTextColor();
        if (this.f32766h != null) {
            m25250q0(false);
            m25248p0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f32754Y0 != colorStateList) {
            if (this.f32753X0 == null) {
                this.f32774k1.setCollapsedTextColor(colorStateList);
            }
            this.f32754Y0 = colorStateList;
            if (this.f32766h != null) {
                m25250q0(false);
            }
        }
    }

    public void setLengthCounter(@NonNull LengthCounter lengthCounter) {
        this.f32788r = lengthCounter;
    }

    public void setMaxEms(int i) {
        this.f32772k = i;
        EditText editText = this.f32766h;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public void setMaxWidth(@Px int i) {
        this.f32777m = i;
        EditText editText = this.f32766h;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(@DimenRes int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.f32770j = i;
        EditText editText = this.f32766h;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public void setMinWidth(@Px int i) {
        this.f32775l = i;
        EditText editText = this.f32766h;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(@DimenRes int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        this.f32764g.m25327n0(i);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        this.f32764g.m25331p0(i);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        this.f32764g.m25335r0(z);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.f32764g.m25337s0(colorStateList);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32764g.m25339t0(mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f32798x == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f32798x = appCompatTextView;
            appCompatTextView.setId(C5139R.id.textinput_placeholder);
            ViewCompat.setImportantForAccessibility(this.f32798x, 2);
            Fade m25265z = m25265z();
            this.f32736J = m25265z;
            m25265z.setStartDelay(67L);
            this.f32742O = m25265z();
            setPlaceholderTextAppearance(this.f32802z);
            setPlaceholderTextColor(this.f32800y);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f32796w) {
                setPlaceholderTextEnabled(true);
            }
            this.f32794v = charSequence;
        }
        m25256t0();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i) {
        this.f32802z = i;
        TextView textView = this.f32798x;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f32800y != colorStateList) {
            this.f32800y = colorStateList;
            TextView textView = this.f32798x;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f32762f.m57694o(charSequence);
    }

    public void setPrefixTextAppearance(@StyleRes int i) {
        this.f32762f.m57695p(i);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f32762f.m57696q(colorStateList);
    }

    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawable materialShapeDrawable = this.f32799x0;
        if (materialShapeDrawable == null || materialShapeDrawable.getShapeAppearanceModel() == shapeAppearanceModel) {
            return;
        }
        this.f32730D0 = shapeAppearanceModel;
        m25239l();
    }

    public void setStartIconCheckable(boolean z) {
        this.f32762f.m57697r(z);
    }

    public void setStartIconContentDescription(@StringRes int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i) {
        setStartIconDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setStartIconMinSize(@IntRange(from = 0) int i) {
        this.f32762f.m57700u(i);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f32762f.m57701v(onClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f32762f.m57702w(onLongClickListener);
    }

    public void setStartIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f32762f.m57703x(scaleType);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        this.f32762f.m57704y(colorStateList);
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f32762f.m57705z(mode);
    }

    public void setStartIconVisible(boolean z) {
        this.f32762f.m57676A(z);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.f32764g.m25341u0(charSequence);
    }

    public void setSuffixTextAppearance(@StyleRes int i) {
        this.f32764g.m25343v0(i);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f32764g.m25345w0(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.f32766h;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, accessibilityDelegate);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f32746Q0) {
            this.f32746Q0 = typeface;
            this.f32774k1.setTypefaces(typeface);
            this.f32779n.m58240S(typeface);
            TextView textView = this.f32789s;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    @NonNull
    /* renamed from: t */
    public final Rect m25255t(@NonNull Rect rect) {
        if (this.f32766h == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f32743O0;
        float expandedTextHeight = this.f32774k1.getExpandedTextHeight();
        rect2.left = rect.left + this.f32766h.getCompoundPaddingLeft();
        rect2.top = m25253s(rect, expandedTextHeight);
        rect2.right = rect.right - this.f32766h.getCompoundPaddingRight();
        rect2.bottom = m25251r(rect, rect2, expandedTextHeight);
        return rect2;
    }

    /* renamed from: t0 */
    public final void m25256t0() {
        EditText editText = this.f32766h;
        m25258u0(editText == null ? null : editText.getText());
    }

    /* renamed from: u */
    public final int m25257u() {
        float collapsedTextHeight;
        if (!this.f32793u0) {
            return 0;
        }
        int i = this.f32733G0;
        if (i == 0) {
            collapsedTextHeight = this.f32774k1.getCollapsedTextHeight();
        } else {
            if (i != 2) {
                return 0;
            }
            collapsedTextHeight = this.f32774k1.getCollapsedTextHeight() / 2.0f;
        }
        return (int) collapsedTextHeight;
    }

    /* renamed from: u0 */
    public final void m25258u0(@Nullable Editable editable) {
        if (this.f32788r.countLength(editable) != 0 || this.f32771j1) {
            m25214L();
        } else {
            m25228c0();
        }
    }

    /* renamed from: v */
    public final boolean m25259v() {
        return this.f32733G0 == 2 && m25261w();
    }

    /* renamed from: v0 */
    public final void m25260v0(boolean z, boolean z2) {
        int defaultColor = this.f32758c1.getDefaultColor();
        int colorForState = this.f32758c1.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f32758c1.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.f32739L0 = colorForState2;
        } else if (z2) {
            this.f32739L0 = colorForState;
        } else {
            this.f32739L0 = defaultColor;
        }
    }

    /* renamed from: w */
    public final boolean m25261w() {
        return this.f32735I0 > -1 && this.f32739L0 != 0;
    }

    /* renamed from: w0 */
    public void m25262w0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f32799x0 == null || this.f32733G0 == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.f32766h) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f32766h) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.f32739L0 = this.f32767h1;
        } else if (m25225Z()) {
            if (this.f32758c1 != null) {
                m25260v0(z2, z);
            } else {
                this.f32739L0 = getErrorCurrentTextColors();
            }
        } else if (!this.f32785q || (textView = this.f32789s) == null) {
            if (z2) {
                this.f32739L0 = this.f32757b1;
            } else if (z) {
                this.f32739L0 = this.f32756a1;
            } else {
                this.f32739L0 = this.f32755Z0;
            }
        } else if (this.f32758c1 != null) {
            m25260v0(z2, z);
        } else {
            this.f32739L0 = textView.getCurrentTextColor();
        }
        m25236j0();
        this.f32764g.m25292M();
        refreshStartIconDrawableState();
        if (this.f32733G0 == 2) {
            int i = this.f32735I0;
            if (z2 && isEnabled()) {
                this.f32735I0 = this.f32738K0;
            } else {
                this.f32735I0 = this.f32737J0;
            }
            if (this.f32735I0 != i) {
                m25221U();
            }
        }
        if (this.f32733G0 == 1) {
            if (!isEnabled()) {
                this.f32740M0 = this.f32761e1;
            } else if (z && !z2) {
                this.f32740M0 = this.f32765g1;
            } else if (z2) {
                this.f32740M0 = this.f32763f1;
            } else {
                this.f32740M0 = this.f32759d1;
            }
        }
        m25239l();
    }

    /* renamed from: x */
    public final void m25263x() {
        if (m25205A()) {
            ((cpe) this.f32799x0).m53487C();
        }
    }

    /* renamed from: y */
    public final void m25264y(boolean z) {
        ValueAnimator valueAnimator = this.f32780n1;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f32780n1.cancel();
        }
        if (z && this.f32778m1) {
            m25237k(1.0f);
        } else {
            this.f32774k1.setExpansionFraction(1.0f);
        }
        this.f32771j1 = false;
        if (m25205A()) {
            m25220T();
        }
        m25256t0();
        this.f32762f.m57692m(false);
        this.f32764g.m25291L(false);
    }

    /* renamed from: z */
    public final Fade m25265z() {
        Fade fade = new Fade();
        fade.setDuration(MotionUtils.resolveThemeDuration(getContext(), C5139R.attr.motionDurationShort2, 87));
        fade.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), C5139R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR));
        return fade;
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.textInputStyle);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        this.f32764g.m25301V(charSequence);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.f32764g.m25303X(drawable);
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.f32764g.m25315h0(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f32764g.m25329o0(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f32764g.m25333q0(drawable);
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        this.f32762f.m57698s(charSequence);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f32762f.m57699t(drawable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputLayout(@androidx.annotation.NonNull android.content.Context r17, @androidx.annotation.Nullable android.util.AttributeSet r18, int r19) {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setHint(@StringRes int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }
}
