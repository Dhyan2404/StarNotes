package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.CompoundButton;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.text.AllCapsTransformationMethod;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.emoji2.text.EmojiCompat;
import com.sunia.HTREnginev2.C14132nc;
import com.sunia.HTREnginev2.C14599wc;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class SwitchCompat extends CompoundButton implements EmojiCompatConfigurationView {

    /* renamed from: K0 */
    public static final int f1925K0 = 250;

    /* renamed from: L0 */
    public static final int f1926L0 = 0;

    /* renamed from: M0 */
    public static final int f1927M0 = 1;

    /* renamed from: N0 */
    public static final int f1928N0 = 2;

    /* renamed from: O0 */
    public static final String f1929O0 = "android.widget.Switch";

    /* renamed from: P0 */
    public static final int f1930P0 = 1;

    /* renamed from: Q0 */
    public static final int f1931Q0 = 2;

    /* renamed from: R0 */
    public static final int f1932R0 = 3;

    /* renamed from: S0 */
    public static final Property<SwitchCompat, Float> f1933S0 = new C0292a(Float.class, "thumbPos");

    /* renamed from: T0 */
    public static final int[] f1934T0 = {R.attr.state_checked};

    /* renamed from: A0 */
    public final TextPaint f1935A0;

    /* renamed from: B0 */
    public ColorStateList f1936B0;

    /* renamed from: C0 */
    public Layout f1937C0;

    /* renamed from: D0 */
    public Layout f1938D0;

    /* renamed from: E0 */
    @Nullable
    public TransformationMethod f1939E0;

    /* renamed from: F0 */
    public ObjectAnimator f1940F0;

    /* renamed from: G0 */
    public final C14599wc f1941G0;

    /* renamed from: H0 */
    @NonNull
    public C14132nc f1942H0;

    /* renamed from: I0 */
    @Nullable
    public C0293b f1943I0;

    /* renamed from: J */
    public float f1944J;

    /* renamed from: J0 */
    public final Rect f1945J0;

    /* renamed from: O */
    public VelocityTracker f1946O;

    /* renamed from: Q */
    public int f1947Q;

    /* renamed from: e */
    public Drawable f1948e;

    /* renamed from: f */
    public ColorStateList f1949f;

    /* renamed from: g */
    public PorterDuff.Mode f1950g;

    /* renamed from: h */
    public boolean f1951h;

    /* renamed from: i */
    public boolean f1952i;

    /* renamed from: j */
    public Drawable f1953j;

    /* renamed from: k */
    public ColorStateList f1954k;

    /* renamed from: k0 */
    public float f1955k0;

    /* renamed from: l */
    public PorterDuff.Mode f1956l;

    /* renamed from: m */
    public boolean f1957m;

    /* renamed from: n */
    public boolean f1958n;

    /* renamed from: o */
    public int f1959o;

    /* renamed from: p */
    public int f1960p;

    /* renamed from: q */
    public int f1961q;

    /* renamed from: q0 */
    public int f1962q0;

    /* renamed from: r */
    public boolean f1963r;

    /* renamed from: s */
    public CharSequence f1964s;

    /* renamed from: t */
    public CharSequence f1965t;

    /* renamed from: t0 */
    public int f1966t0;

    /* renamed from: u */
    public CharSequence f1967u;

    /* renamed from: u0 */
    public int f1968u0;

    /* renamed from: v */
    public CharSequence f1969v;

    /* renamed from: v0 */
    public int f1970v0;

    /* renamed from: w */
    public boolean f1971w;

    /* renamed from: w0 */
    public int f1972w0;

    /* renamed from: x */
    public int f1973x;

    /* renamed from: x0 */
    public int f1974x0;

    /* renamed from: y */
    public int f1975y;

    /* renamed from: y0 */
    public int f1976y0;

    /* renamed from: z */
    public float f1977z;

    /* renamed from: z0 */
    public boolean f1978z0;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<SwitchCompat> {

        /* renamed from: a */
        public boolean f1979a = false;

        /* renamed from: b */
        public int f1980b;

        /* renamed from: c */
        public int f1981c;

        /* renamed from: d */
        public int f1982d;

        /* renamed from: e */
        public int f1983e;

        /* renamed from: f */
        public int f1984f;

        /* renamed from: g */
        public int f1985g;

        /* renamed from: h */
        public int f1986h;

        /* renamed from: i */
        public int f1987i;

        /* renamed from: j */
        public int f1988j;

        /* renamed from: k */
        public int f1989k;

        /* renamed from: l */
        public int f1990l;

        /* renamed from: m */
        public int f1991m;

        /* renamed from: n */
        public int f1992n;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1980b = propertyMapper.mapObject("textOff", R.attr.textOff);
            this.f1981c = propertyMapper.mapObject("textOn", R.attr.textOn);
            this.f1982d = propertyMapper.mapObject("thumb", R.attr.thumb);
            this.f1983e = propertyMapper.mapBoolean("showText", C0118R.attr.showText);
            this.f1984f = propertyMapper.mapBoolean("splitTrack", C0118R.attr.splitTrack);
            this.f1985g = propertyMapper.mapInt("switchMinWidth", C0118R.attr.switchMinWidth);
            this.f1986h = propertyMapper.mapInt("switchPadding", C0118R.attr.switchPadding);
            this.f1987i = propertyMapper.mapInt("thumbTextPadding", C0118R.attr.thumbTextPadding);
            this.f1988j = propertyMapper.mapObject("thumbTint", C0118R.attr.thumbTint);
            this.f1989k = propertyMapper.mapObject("thumbTintMode", C0118R.attr.thumbTintMode);
            this.f1990l = propertyMapper.mapObject("track", C0118R.attr.track);
            this.f1991m = propertyMapper.mapObject("trackTint", C0118R.attr.trackTint);
            this.f1992n = propertyMapper.mapObject("trackTintMode", C0118R.attr.trackTintMode);
            this.f1979a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull SwitchCompat switchCompat, @NonNull PropertyReader propertyReader) {
            if (this.f1979a) {
                propertyReader.readObject(this.f1980b, switchCompat.getTextOff());
                propertyReader.readObject(this.f1981c, switchCompat.getTextOn());
                propertyReader.readObject(this.f1982d, switchCompat.getThumbDrawable());
                propertyReader.readBoolean(this.f1983e, switchCompat.getShowText());
                propertyReader.readBoolean(this.f1984f, switchCompat.getSplitTrack());
                propertyReader.readInt(this.f1985g, switchCompat.getSwitchMinWidth());
                propertyReader.readInt(this.f1986h, switchCompat.getSwitchPadding());
                propertyReader.readInt(this.f1987i, switchCompat.getThumbTextPadding());
                propertyReader.readObject(this.f1988j, switchCompat.getThumbTintList());
                propertyReader.readObject(this.f1989k, switchCompat.getThumbTintMode());
                propertyReader.readObject(this.f1990l, switchCompat.getTrackDrawable());
                propertyReader.readObject(this.f1991m, switchCompat.getTrackTintList());
                propertyReader.readObject(this.f1992n, switchCompat.getTrackTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* renamed from: androidx.appcompat.widget.SwitchCompat$a */
    /* loaded from: classes3.dex */
    public class C0292a extends Property<SwitchCompat, Float> {
        public C0292a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1955k0);
        }

        @Override // android.util.Property
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(SwitchCompat switchCompat, Float f) {
            switchCompat.setThumbPosition(f.floatValue());
        }
    }

    /* renamed from: androidx.appcompat.widget.SwitchCompat$b */
    /* loaded from: classes3.dex */
    public static class C0293b extends EmojiCompat.InitCallback {

        /* renamed from: a */
        public final Reference<SwitchCompat> f1993a;

        public C0293b(SwitchCompat switchCompat) {
            this.f1993a = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onFailed(@Nullable Throwable th) {
            SwitchCompat switchCompat = this.f1993a.get();
            if (switchCompat != null) {
                switchCompat.m923j();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.InitCallback
        public void onInitialized() {
            SwitchCompat switchCompat = this.f1993a.get();
            if (switchCompat != null) {
                switchCompat.m923j();
            }
        }
    }

    public SwitchCompat(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: f */
    public static float m914f(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    @NonNull
    private C14132nc getEmojiTextViewHelper() {
        if (this.f1942H0 == null) {
            this.f1942H0 = new C14132nc(this);
        }
        return this.f1942H0;
    }

    private boolean getTargetCheckedState() {
        return this.f1955k0 > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((ViewUtils.isLayoutRtl(this) ? 1.0f - this.f1955k0 : this.f1955k0) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f1953j;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f1945J0;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f1948e;
        Rect opticalBounds = drawable2 != null ? DrawableUtils.getOpticalBounds(drawable2) : DrawableUtils.INSETS_NONE;
        return ((((this.f1962q0 - this.f1968u0) - rect.left) - rect.right) - opticalBounds.left) - opticalBounds.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f1967u = charSequence;
        this.f1969v = m920g(charSequence);
        this.f1938D0 = null;
        if (this.f1971w) {
            m927n();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f1964s = charSequence;
        this.f1965t = m920g(charSequence);
        this.f1937C0 = null;
        if (this.f1971w) {
            m927n();
        }
    }

    /* renamed from: a */
    public final void m915a(boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f1933S0, z ? 1.0f : 0.0f);
        this.f1940F0 = ofFloat;
        ofFloat.setDuration(250L);
        this.f1940F0.setAutoCancel(true);
        this.f1940F0.start();
    }

    /* renamed from: b */
    public final void m916b() {
        Drawable drawable = this.f1948e;
        if (drawable != null) {
            if (this.f1951h || this.f1952i) {
                Drawable mutate = DrawableCompat.wrap(drawable).mutate();
                this.f1948e = mutate;
                if (this.f1951h) {
                    DrawableCompat.setTintList(mutate, this.f1949f);
                }
                if (this.f1952i) {
                    DrawableCompat.setTintMode(this.f1948e, this.f1950g);
                }
                if (this.f1948e.isStateful()) {
                    this.f1948e.setState(getDrawableState());
                }
            }
        }
    }

    /* renamed from: c */
    public final void m917c() {
        Drawable drawable = this.f1953j;
        if (drawable != null) {
            if (this.f1957m || this.f1958n) {
                Drawable mutate = DrawableCompat.wrap(drawable).mutate();
                this.f1953j = mutate;
                if (this.f1957m) {
                    DrawableCompat.setTintList(mutate, this.f1954k);
                }
                if (this.f1958n) {
                    DrawableCompat.setTintMode(this.f1953j, this.f1956l);
                }
                if (this.f1953j.isStateful()) {
                    this.f1953j.setState(getDrawableState());
                }
            }
        }
    }

    /* renamed from: d */
    public final void m918d() {
        ObjectAnimator objectAnimator = this.f1940F0;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        int i;
        int i2;
        Rect rect = this.f1945J0;
        int i3 = this.f1970v0;
        int i4 = this.f1972w0;
        int i5 = this.f1974x0;
        int i6 = this.f1976y0;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.f1948e;
        Rect opticalBounds = drawable != null ? DrawableUtils.getOpticalBounds(drawable) : DrawableUtils.INSETS_NONE;
        Drawable drawable2 = this.f1953j;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (opticalBounds != null) {
                int i8 = opticalBounds.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = opticalBounds.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = opticalBounds.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = opticalBounds.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                    this.f1953j.setBounds(i3, i, i5, i2);
                }
            } else {
                i = i4;
            }
            i2 = i6;
            this.f1953j.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.f1948e;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.f1968u0 + rect.right;
            this.f1948e.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                DrawableCompat.setHotspotBounds(background, i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f1948e;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f, f2);
        }
        Drawable drawable2 = this.f1953j;
        if (drawable2 != null) {
            DrawableCompat.setHotspot(drawable2, f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1948e;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f1953j;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: e */
    public final void m919e(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    @Nullable
    /* renamed from: g */
    public final CharSequence m920g(@Nullable CharSequence charSequence) {
        TransformationMethod m55738f = getEmojiTextViewHelper().m55738f(this.f1939E0);
        return m55738f != null ? m55738f.getTransformation(charSequence, this) : charSequence;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f1962q0;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f1961q : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (ViewUtils.isLayoutRtl(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f1962q0;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f1961q : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f1971w;
    }

    public boolean getSplitTrack() {
        return this.f1963r;
    }

    public int getSwitchMinWidth() {
        return this.f1960p;
    }

    public int getSwitchPadding() {
        return this.f1961q;
    }

    public CharSequence getTextOff() {
        return this.f1967u;
    }

    public CharSequence getTextOn() {
        return this.f1964s;
    }

    public Drawable getThumbDrawable() {
        return this.f1948e;
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public final float getThumbPosition() {
        return this.f1955k0;
    }

    public int getThumbTextPadding() {
        return this.f1959o;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f1949f;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.f1950g;
    }

    public Drawable getTrackDrawable() {
        return this.f1953j;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f1954k;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.f1956l;
    }

    /* renamed from: h */
    public final boolean m921h(float f, float f2) {
        if (this.f1948e == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1948e.getPadding(this.f1945J0);
        int i = this.f1972w0;
        int i2 = this.f1975y;
        int i3 = i - i2;
        int i4 = (this.f1970v0 + thumbOffset) - i2;
        int i5 = this.f1968u0 + i4;
        Rect rect = this.f1945J0;
        return f > ((float) i4) && f < ((float) (((i5 + rect.left) + rect.right) + i2)) && f2 > ((float) i3) && f2 < ((float) (this.f1976y0 + i2));
    }

    /* renamed from: i */
    public final Layout m922i(CharSequence charSequence) {
        return new StaticLayout(charSequence, this.f1935A0, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, r2)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().m55734b();
    }

    /* renamed from: j */
    public void m923j() {
        setTextOnInternal(this.f1964s);
        setTextOffInternal(this.f1967u);
        requestLayout();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1948e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1953j;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f1940F0;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f1940F0.end();
        this.f1940F0 = null;
    }

    /* renamed from: k */
    public final void m924k() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence = this.f1967u;
            if (charSequence == null) {
                charSequence = getResources().getString(C0118R.string.abc_capital_off);
            }
            ViewCompat.setStateDescription(this, charSequence);
        }
    }

    /* renamed from: l */
    public final void m925l() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence = this.f1964s;
            if (charSequence == null) {
                charSequence = getResources().getString(C0118R.string.abc_capital_on);
            }
            ViewCompat.setStateDescription(this, charSequence);
        }
    }

    /* renamed from: m */
    public final void m926m(int i, int i2) {
        setSwitchTypeface(i != 1 ? i != 2 ? i != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF, i2);
    }

    /* renamed from: n */
    public final void m927n() {
        if (this.f1943I0 == null && this.f1942H0.m55734b() && EmojiCompat.isConfigured()) {
            EmojiCompat emojiCompat = EmojiCompat.get();
            int loadState = emojiCompat.getLoadState();
            if (loadState == 3 || loadState == 0) {
                C0293b c0293b = new C0293b(this);
                this.f1943I0 = c0293b;
                emojiCompat.registerInitCallback(c0293b);
            }
        }
    }

    /* renamed from: o */
    public final void m928o(MotionEvent motionEvent) {
        this.f1973x = 0;
        boolean z = true;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        boolean isChecked = isChecked();
        if (z2) {
            this.f1946O.computeCurrentVelocity(1000);
            float xVelocity = this.f1946O.getXVelocity();
            if (Math.abs(xVelocity) <= this.f1947Q) {
                z = getTargetCheckedState();
            } else if (!ViewUtils.isLayoutRtl(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                z = false;
            }
        } else {
            z = isChecked;
        }
        if (z != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z);
        m919e(motionEvent);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f1934T0);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.f1945J0;
        Drawable drawable = this.f1953j;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.f1972w0;
        int i2 = this.f1976y0;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.f1948e;
        if (drawable != null) {
            if (!this.f1963r || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable2);
                drawable2.copyBounds(rect);
                rect.left += opticalBounds.left;
                rect.right -= opticalBounds.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.f1937C0 : this.f1938D0;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f1936B0;
            if (colorStateList != null) {
                this.f1935A0.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.f1935A0.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f1929O0);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f1929O0);
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f1964s : this.f1967u;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        int i7;
        int i8;
        int i9;
        super.onLayout(z, i, i2, i3, i4);
        int i10 = 0;
        if (this.f1948e != null) {
            Rect rect = this.f1945J0;
            Drawable drawable = this.f1953j;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect opticalBounds = DrawableUtils.getOpticalBounds(this.f1948e);
            i5 = Math.max(0, opticalBounds.left - rect.left);
            i10 = Math.max(0, opticalBounds.right - rect.right);
        } else {
            i5 = 0;
        }
        if (ViewUtils.isLayoutRtl(this)) {
            i6 = getPaddingLeft() + i5;
            width = ((this.f1962q0 + i6) - i5) - i10;
        } else {
            width = (getWidth() - getPaddingRight()) - i10;
            i6 = (width - this.f1962q0) + i5 + i10;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
            i7 = this.f1966t0;
            i8 = paddingTop - (i7 / 2);
        } else {
            if (gravity == 80) {
                i9 = getHeight() - getPaddingBottom();
                i8 = i9 - this.f1966t0;
                this.f1970v0 = i6;
                this.f1972w0 = i8;
                this.f1976y0 = i9;
                this.f1974x0 = width;
            }
            i8 = getPaddingTop();
            i7 = this.f1966t0;
        }
        i9 = i7 + i8;
        this.f1970v0 = i6;
        this.f1972w0 = i8;
        this.f1976y0 = i9;
        this.f1974x0 = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.f1971w) {
            if (this.f1937C0 == null) {
                this.f1937C0 = m922i(this.f1965t);
            }
            if (this.f1938D0 == null) {
                this.f1938D0 = m922i(this.f1969v);
            }
        }
        Rect rect = this.f1945J0;
        Drawable drawable = this.f1948e;
        int i5 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i3 = (this.f1948e.getIntrinsicWidth() - rect.left) - rect.right;
            i4 = this.f1948e.getIntrinsicHeight();
        } else {
            i3 = 0;
            i4 = 0;
        }
        this.f1968u0 = Math.max(this.f1971w ? Math.max(this.f1937C0.getWidth(), this.f1938D0.getWidth()) + (this.f1959o * 2) : 0, i3);
        Drawable drawable2 = this.f1953j;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i5 = this.f1953j.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i6 = rect.left;
        int i7 = rect.right;
        Drawable drawable3 = this.f1948e;
        if (drawable3 != null) {
            Rect opticalBounds = DrawableUtils.getOpticalBounds(drawable3);
            i6 = Math.max(i6, opticalBounds.left);
            i7 = Math.max(i7, opticalBounds.right);
        }
        int max = this.f1978z0 ? Math.max(this.f1960p, (this.f1968u0 * 2) + i6 + i7) : this.f1960p;
        int max2 = Math.max(i5, i4);
        this.f1962q0 = max;
        this.f1966t0 = max2;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < max2) {
            setMeasuredDimension(getMeasuredWidthAndState(), max2);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1964s : this.f1967u;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
    
        if (r0 != 3) goto L44;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.VelocityTracker r0 = r6.f1946O
            r0.addMovement(r7)
            int r0 = r7.getActionMasked()
            r1 = 1
            if (r0 == 0) goto L9d
            r2 = 2
            if (r0 == r1) goto L89
            if (r0 == r2) goto L16
            r3 = 3
            if (r0 == r3) goto L89
            goto Lb7
        L16:
            int r0 = r6.f1973x
            if (r0 == r1) goto L55
            if (r0 == r2) goto L1e
            goto Lb7
        L1e:
            float r7 = r7.getX()
            int r0 = r6.getThumbScrollRange()
            float r2 = r6.f1977z
            float r2 = r7 - r2
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 0
            if (r0 == 0) goto L32
            float r0 = (float) r0
            float r2 = r2 / r0
            goto L3b
        L32:
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L38
            r2 = r3
            goto L3b
        L38:
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r2 = r0
        L3b:
            boolean r0 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(r6)
            if (r0 == 0) goto L42
            float r2 = -r2
        L42:
            float r0 = r6.f1955k0
            float r0 = r0 + r2
            float r0 = m914f(r0, r4, r3)
            float r2 = r6.f1955k0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L54
            r6.f1977z = r7
            r6.setThumbPosition(r0)
        L54:
            return r1
        L55:
            float r0 = r7.getX()
            float r3 = r7.getY()
            float r4 = r6.f1977z
            float r4 = r0 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.f1975y
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 > 0) goto L7b
            float r4 = r6.f1944J
            float r4 = r3 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.f1975y
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto Lb7
        L7b:
            r6.f1973x = r2
            android.view.ViewParent r7 = r6.getParent()
            r7.requestDisallowInterceptTouchEvent(r1)
            r6.f1977z = r0
            r6.f1944J = r3
            return r1
        L89:
            int r0 = r6.f1973x
            if (r0 != r2) goto L94
            r6.m928o(r7)
            super.onTouchEvent(r7)
            return r1
        L94:
            r0 = 0
            r6.f1973x = r0
            android.view.VelocityTracker r0 = r6.f1946O
            r0.clear()
            goto Lb7
        L9d:
            float r0 = r7.getX()
            float r2 = r7.getY()
            boolean r3 = r6.isEnabled()
            if (r3 == 0) goto Lb7
            boolean r3 = r6.m921h(r0, r2)
            if (r3 == 0) goto Lb7
            r6.f1973x = r1
            r6.f1977z = r0
            r6.f1944J = r2
        Lb7:
            boolean r6 = super.onTouchEvent(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m55736d(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean isChecked = isChecked();
        if (isChecked) {
            m925l();
        } else {
            m924k();
        }
        if (getWindowToken() != null && isLaidOut()) {
            m915a(isChecked);
        } else {
            m918d();
            setThumbPosition(isChecked ? 1.0f : 0.0f);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().m55737e(z);
        setTextOnInternal(this.f1964s);
        setTextOffInternal(this.f1967u);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z) {
        this.f1978z0 = z;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().m55733a(inputFilterArr));
    }

    public void setShowText(boolean z) {
        if (this.f1971w != z) {
            this.f1971w = z;
            requestLayout();
            if (z) {
                m927n();
            }
        }
    }

    public void setSplitTrack(boolean z) {
        this.f1963r = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.f1960p = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.f1961q = i;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i, C0118R.styleable.TextAppearance);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(C0118R.styleable.TextAppearance_android_textColor);
        if (colorStateList != null) {
            this.f1936B0 = colorStateList;
        } else {
            this.f1936B0 = getTextColors();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.TextAppearance_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            if (f != this.f1935A0.getTextSize()) {
                this.f1935A0.setTextSize(f);
                requestLayout();
            }
        }
        m926m(obtainStyledAttributes.getInt(C0118R.styleable.TextAppearance_android_typeface, -1), obtainStyledAttributes.getInt(C0118R.styleable.TextAppearance_android_textStyle, -1));
        if (obtainStyledAttributes.getBoolean(C0118R.styleable.TextAppearance_textAllCaps, false)) {
            this.f1939E0 = new AllCapsTransformationMethod(getContext());
        } else {
            this.f1939E0 = null;
        }
        setTextOnInternal(this.f1964s);
        setTextOffInternal(this.f1967u);
        obtainStyledAttributes.recycle();
    }

    public void setSwitchTypeface(Typeface typeface, int i) {
        Typeface create;
        if (i > 0) {
            if (typeface == null) {
                create = Typeface.defaultFromStyle(i);
            } else {
                create = Typeface.create(typeface, i);
            }
            setSwitchTypeface(create);
            int i2 = (~(create != null ? create.getStyle() : 0)) & i;
            this.f1935A0.setFakeBoldText((i2 & 1) != 0);
            this.f1935A0.setTextSkewX((i2 & 2) != 0 ? -0.25f : 0.0f);
            return;
        }
        this.f1935A0.setFakeBoldText(false);
        this.f1935A0.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            return;
        }
        m924k();
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            m925l();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1948e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1948e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f1955k0 = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.f1959o = i;
        requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f1949f = colorStateList;
        this.f1951h = true;
        m916b();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1950g = mode;
        this.f1952i = true;
        m916b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1953j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1953j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f1954k = colorStateList;
        this.f1957m = true;
        m917c();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1956l = mode;
        this.f1958n = true;
        m917c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1948e || drawable == this.f1953j;
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.switchStyle);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1949f = null;
        this.f1950g = null;
        this.f1951h = false;
        this.f1952i = false;
        this.f1954k = null;
        this.f1956l = null;
        this.f1957m = false;
        this.f1958n = false;
        this.f1946O = VelocityTracker.obtain();
        this.f1978z0 = true;
        this.f1945J0 = new Rect();
        ThemeUtils.checkAppCompatTheme(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f1935A0 = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0118R.styleable.SwitchCompat, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C0118R.styleable.SwitchCompat, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(C0118R.styleable.SwitchCompat_android_thumb);
        this.f1948e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(C0118R.styleable.SwitchCompat_track);
        this.f1953j = drawable2;
        if (drawable2 != null) {
            drawable2.setCallback(this);
        }
        setTextOnInternal(obtainStyledAttributes.getText(C0118R.styleable.SwitchCompat_android_textOn));
        setTextOffInternal(obtainStyledAttributes.getText(C0118R.styleable.SwitchCompat_android_textOff));
        this.f1971w = obtainStyledAttributes.getBoolean(C0118R.styleable.SwitchCompat_showText, true);
        this.f1959o = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.SwitchCompat_thumbTextPadding, 0);
        this.f1960p = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.SwitchCompat_switchMinWidth, 0);
        this.f1961q = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.SwitchCompat_switchPadding, 0);
        this.f1963r = obtainStyledAttributes.getBoolean(C0118R.styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(C0118R.styleable.SwitchCompat_thumbTint);
        if (colorStateList != null) {
            this.f1949f = colorStateList;
            this.f1951h = true;
        }
        PorterDuff.Mode parseTintMode = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0118R.styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1950g != parseTintMode) {
            this.f1950g = parseTintMode;
            this.f1952i = true;
        }
        if (this.f1951h || this.f1952i) {
            m916b();
        }
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(C0118R.styleable.SwitchCompat_trackTint);
        if (colorStateList2 != null) {
            this.f1954k = colorStateList2;
            this.f1957m = true;
        }
        PorterDuff.Mode parseTintMode2 = DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0118R.styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f1956l != parseTintMode2) {
            this.f1956l = parseTintMode2;
            this.f1958n = true;
        }
        if (this.f1957m || this.f1958n) {
            m917c();
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0118R.styleable.SwitchCompat_switchTextAppearance, 0);
        if (resourceId != 0) {
            setSwitchTextAppearance(context, resourceId);
        }
        C14599wc c14599wc = new C14599wc(this);
        this.f1941G0 = c14599wc;
        c14599wc.m58035m(attributeSet, i);
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1975y = viewConfiguration.getScaledTouchSlop();
        this.f1947Q = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().m55735c(attributeSet, i);
        refreshDrawableState();
        setChecked(isChecked());
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.f1935A0.getTypeface() == null || this.f1935A0.getTypeface().equals(typeface)) && (this.f1935A0.getTypeface() != null || typeface == null)) {
            return;
        }
        this.f1935A0.setTypeface(typeface);
        requestLayout();
        invalidate();
    }
}
