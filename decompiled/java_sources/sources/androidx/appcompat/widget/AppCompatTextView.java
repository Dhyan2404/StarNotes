package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCompoundDrawablesView;
import com.sunia.HTREnginev2.C14132nc;
import com.sunia.HTREnginev2.C14177oc;
import com.sunia.HTREnginev2.C14540vc;
import com.sunia.HTREnginev2.C14599wc;
import com.sunia.HTREnginev2.C14646xb;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.function.IntFunction;

/* loaded from: classes3.dex */
public class AppCompatTextView extends TextView implements TintableBackgroundView, TintableCompoundDrawablesView, AutoSizeableTextView, EmojiCompatConfigurationView {

    /* renamed from: e */
    public final C14646xb f1636e;

    /* renamed from: f */
    public final C14599wc f1637f;

    /* renamed from: g */
    public final C14540vc f1638g;

    /* renamed from: h */
    @NonNull
    public C14132nc f1639h;

    /* renamed from: i */
    public boolean f1640i;

    /* renamed from: j */
    @Nullable
    public InterfaceC0240a f1641j;

    /* renamed from: k */
    @Nullable
    public Future<PrecomputedTextCompat> f1642k;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatTextView> {

        /* renamed from: a */
        public boolean f1643a = false;

        /* renamed from: b */
        public int f1644b;

        /* renamed from: c */
        public int f1645c;

        /* renamed from: d */
        public int f1646d;

        /* renamed from: e */
        public int f1647e;

        /* renamed from: f */
        public int f1648f;

        /* renamed from: g */
        public int f1649g;

        /* renamed from: h */
        public int f1650h;

        /* renamed from: i */
        public int f1651i;

        /* renamed from: androidx.appcompat.widget.AppCompatTextView$InspectionCompanion$a */
        /* loaded from: classes3.dex */
        public class C0239a implements IntFunction<String> {
            public C0239a() {
            }

            @Override // java.util.function.IntFunction
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public String apply(int i) {
                return i != 0 ? i != 1 ? String.valueOf(i) : "uniform" : "none";
            }
        }

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1644b = propertyMapper.mapInt("autoSizeMaxTextSize", C0118R.attr.autoSizeMaxTextSize);
            this.f1645c = propertyMapper.mapInt("autoSizeMinTextSize", C0118R.attr.autoSizeMinTextSize);
            this.f1646d = propertyMapper.mapInt("autoSizeStepGranularity", C0118R.attr.autoSizeStepGranularity);
            this.f1647e = propertyMapper.mapIntEnum("autoSizeTextType", C0118R.attr.autoSizeTextType, new C0239a());
            this.f1648f = propertyMapper.mapObject("backgroundTint", C0118R.attr.backgroundTint);
            this.f1649g = propertyMapper.mapObject("backgroundTintMode", C0118R.attr.backgroundTintMode);
            this.f1650h = propertyMapper.mapObject("drawableTint", C0118R.attr.drawableTint);
            this.f1651i = propertyMapper.mapObject("drawableTintMode", C0118R.attr.drawableTintMode);
            this.f1643a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatTextView appCompatTextView, @NonNull PropertyReader propertyReader) {
            if (this.f1643a) {
                propertyReader.readInt(this.f1644b, appCompatTextView.getAutoSizeMaxTextSize());
                propertyReader.readInt(this.f1645c, appCompatTextView.getAutoSizeMinTextSize());
                propertyReader.readInt(this.f1646d, appCompatTextView.getAutoSizeStepGranularity());
                propertyReader.readIntEnum(this.f1647e, appCompatTextView.getAutoSizeTextType());
                propertyReader.readObject(this.f1648f, appCompatTextView.getBackgroundTintList());
                propertyReader.readObject(this.f1649g, appCompatTextView.getBackgroundTintMode());
                propertyReader.readObject(this.f1650h, appCompatTextView.getCompoundDrawableTintList());
                propertyReader.readObject(this.f1651i, appCompatTextView.getCompoundDrawableTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* renamed from: androidx.appcompat.widget.AppCompatTextView$a */
    /* loaded from: classes3.dex */
    public interface InterfaceC0240a {
        /* renamed from: a */
        void mo781a(@Px int i);

        /* renamed from: b */
        void mo782b(@Px int i);

        /* renamed from: c */
        TextClassifier mo783c();

        /* renamed from: d */
        void mo784d(int i, @FloatRange(from = 0.0d) float f);

        /* renamed from: e */
        void mo785e(@Nullable TextClassifier textClassifier);

        int getAutoSizeMaxTextSize();

        int getAutoSizeMinTextSize();

        int getAutoSizeStepGranularity();

        int[] getAutoSizeTextAvailableSizes();

        int getAutoSizeTextType();

        void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4);

        void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i);

        void setAutoSizeTextTypeWithDefaults(int i);
    }

    @RequiresApi(api = 26)
    /* renamed from: androidx.appcompat.widget.AppCompatTextView$b */
    /* loaded from: classes3.dex */
    public class C0241b implements InterfaceC0240a {
        public C0241b() {
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: a */
        public void mo781a(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: b */
        public void mo782b(int i) {
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: c */
        public TextClassifier mo783c() {
            return AppCompatTextView.super.getTextClassifier();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: d */
        public void mo784d(int i, float f) {
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: e */
        public void mo785e(@Nullable TextClassifier textClassifier) {
            AppCompatTextView.super.setTextClassifier(textClassifier);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public int getAutoSizeMaxTextSize() {
            return AppCompatTextView.super.getAutoSizeMaxTextSize();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public int getAutoSizeMinTextSize() {
            return AppCompatTextView.super.getAutoSizeMinTextSize();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public int getAutoSizeStepGranularity() {
            return AppCompatTextView.super.getAutoSizeStepGranularity();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public int[] getAutoSizeTextAvailableSizes() {
            return AppCompatTextView.super.getAutoSizeTextAvailableSizes();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public int getAutoSizeTextType() {
            return AppCompatTextView.super.getAutoSizeTextType();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
            AppCompatTextView.super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
            AppCompatTextView.super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        public void setAutoSizeTextTypeWithDefaults(int i) {
            AppCompatTextView.super.setAutoSizeTextTypeWithDefaults(i);
        }
    }

    @RequiresApi(api = 28)
    /* renamed from: androidx.appcompat.widget.AppCompatTextView$c */
    /* loaded from: classes3.dex */
    public class C0242c extends C0241b {
        public C0242c() {
            super();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.C0241b, androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: a */
        public void mo781a(@Px int i) {
            AppCompatTextView.super.setFirstBaselineToTopHeight(i);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.C0241b, androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: b */
        public void mo782b(@Px int i) {
            AppCompatTextView.super.setLastBaselineToBottomHeight(i);
        }
    }

    @RequiresApi(api = 34)
    /* renamed from: androidx.appcompat.widget.AppCompatTextView$d */
    /* loaded from: classes3.dex */
    public class C0243d extends C0242c {
        public C0243d() {
            super();
        }

        @Override // androidx.appcompat.widget.AppCompatTextView.C0241b, androidx.appcompat.widget.AppCompatTextView.InterfaceC0240a
        /* renamed from: d */
        public void mo784d(int i, float f) {
            AppCompatTextView.super.setLineHeight(i, f);
        }
    }

    public AppCompatTextView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private C14132nc getEmojiTextViewHelper() {
        if (this.f1639h == null) {
            this.f1639h = new C14132nc(this);
        }
        return this.f1639h;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C14646xb c14646xb = this.f1636e;
        if (c14646xb != null) {
            c14646xb.m58172b();
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58025b();
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMaxTextSize() {
        if (ViewUtils.f2130d) {
            return getSuperCaller().getAutoSizeMaxTextSize();
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            return c14599wc.m58027e();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMinTextSize() {
        if (ViewUtils.f2130d) {
            return getSuperCaller().getAutoSizeMinTextSize();
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            return c14599wc.m58028f();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeStepGranularity() {
        if (ViewUtils.f2130d) {
            return getSuperCaller().getAutoSizeStepGranularity();
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            return c14599wc.m58029g();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int[] getAutoSizeTextAvailableSizes() {
        if (ViewUtils.f2130d) {
            return getSuperCaller().getAutoSizeTextAvailableSizes();
        }
        C14599wc c14599wc = this.f1637f;
        return c14599wc != null ? c14599wc.m58030h() : new int[0];
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        if (ViewUtils.f2130d) {
            return getSuperCaller().getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            return c14599wc.m58031i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return TextViewCompat.getFirstBaselineToTopHeight(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return TextViewCompat.getLastBaselineToBottomHeight(this);
    }

    @RequiresApi(api = 26)
    @UiThread
    public InterfaceC0240a getSuperCaller() {
        if (this.f1641j == null) {
            if (Build.VERSION.SDK_INT >= 34) {
                this.f1641j = new C0243d();
            } else {
                this.f1641j = new C0242c();
            }
        }
        return this.f1641j;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        C14646xb c14646xb = this.f1636e;
        if (c14646xb != null) {
            return c14646xb.m58173c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C14646xb c14646xb = this.f1636e;
        if (c14646xb != null) {
            return c14646xb.m58174d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1637f.m58032j();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1637f.m58033k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m779n();
        return super.getText();
    }

    @Override // android.widget.TextView
    @NonNull
    @RequiresApi(api = 26)
    public TextClassifier getTextClassifier() {
        return getSuperCaller().mo783c();
    }

    @NonNull
    public PrecomputedTextCompat.Params getTextMetricsParamsCompat() {
        return TextViewCompat.getTextMetricsParams(this);
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().m55734b();
    }

    /* renamed from: n */
    public final void m779n() {
        Future<PrecomputedTextCompat> future = this.f1642k;
        if (future != null) {
            try {
                this.f1642k = null;
                TextViewCompat.setPrecomputedText(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f1637f.m58040r(this, onCreateInputConnection, editorInfo);
        return C14177oc.m55928a(onCreateInputConnection, editorInfo, this);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58037o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        m779n();
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C14599wc c14599wc = this.f1637f;
        if ((c14599wc == null || ViewUtils.f2130d || !c14599wc.m58034l()) ? false : true) {
            this.f1637f.m58026c();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m55736d(z);
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (ViewUtils.f2130d) {
            getSuperCaller().setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58042t(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        if (ViewUtils.f2130d) {
            getSuperCaller().setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58043u(iArr, i);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (ViewUtils.f2130d) {
            getSuperCaller().setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58044v(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C14646xb c14646xb = this.f1636e;
        if (c14646xb != null) {
            c14646xb.m58176f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        C14646xb c14646xb = this.f1636e;
        if (c14646xb != null) {
            c14646xb.m58177g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().m55737e(z);
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().m55733a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(@IntRange(from = 0) @Px int i) {
        getSuperCaller().mo781a(i);
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(@IntRange(from = 0) @Px int i) {
        getSuperCaller().mo782b(i);
    }

    @Override // android.widget.TextView
    public void setLineHeight(@IntRange(from = 0) @Px int i) {
        TextViewCompat.setLineHeight(this, i);
    }

    public void setPrecomputedText(@NonNull PrecomputedTextCompat precomputedTextCompat) {
        TextViewCompat.setPrecomputedText(this, precomputedTextCompat);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        C14646xb c14646xb = this.f1636e;
        if (c14646xb != null) {
            c14646xb.m58179i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        C14646xb c14646xb = this.f1636e;
        if (c14646xb != null) {
            c14646xb.m58180j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1637f.m58045w(colorStateList);
        this.f1637f.m58025b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1637f.m58046x(mode);
        this.f1637f.m58025b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58039q(context, i);
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(api = 26)
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        getSuperCaller().mo785e(textClassifier);
    }

    public void setTextFuture(@Nullable Future<PrecomputedTextCompat> future) {
        this.f1642k = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(@NonNull PrecomputedTextCompat.Params params) {
        TextViewCompat.setTextMetricsParams(this, params);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (ViewUtils.f2130d) {
            super.setTextSize(i, f);
            return;
        }
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58021A(i, f);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(@Nullable Typeface typeface, int i) {
        if (this.f1640i) {
            return;
        }
        Typeface create = (typeface == null || i <= 0) ? null : TypefaceCompat.create(getContext(), typeface, i);
        this.f1640i = true;
        if (create != null) {
            typeface = create;
        }
        try {
            super.setTypeface(typeface, i);
        } finally {
            this.f1640i = false;
        }
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i, @FloatRange(from = 0.0d) float f) {
        if (Build.VERSION.SDK_INT >= 34) {
            getSuperCaller().mo784d(i, f);
        } else {
            TextViewCompat.setLineHeight(this, i, f);
        }
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        this.f1640i = false;
        this.f1641j = null;
        ThemeUtils.checkAppCompatTheme(this, getContext());
        C14646xb c14646xb = new C14646xb(this);
        this.f1636e = c14646xb;
        c14646xb.m58175e(attributeSet, i);
        C14599wc c14599wc = new C14599wc(this);
        this.f1637f = c14599wc;
        c14599wc.m58035m(attributeSet, i);
        c14599wc.m58025b();
        this.f1638g = new C14540vc(this);
        getEmojiTextViewHelper().m55735c(attributeSet, i);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i != 0 ? AppCompatResources.getDrawable(context, i) : null, i2 != 0 ? AppCompatResources.getDrawable(context, i2) : null, i3 != 0 ? AppCompatResources.getDrawable(context, i3) : null, i4 != 0 ? AppCompatResources.getDrawable(context, i4) : null);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i != 0 ? AppCompatResources.getDrawable(context, i) : null, i2 != 0 ? AppCompatResources.getDrawable(context, i2) : null, i3 != 0 ? AppCompatResources.getDrawable(context, i3) : null, i4 != 0 ? AppCompatResources.getDrawable(context, i4) : null);
        C14599wc c14599wc = this.f1637f;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }
}
