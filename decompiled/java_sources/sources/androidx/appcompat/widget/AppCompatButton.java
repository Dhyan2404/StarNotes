package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.Button;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCompoundDrawablesView;
import com.sunia.HTREnginev2.C14132nc;
import com.sunia.HTREnginev2.C14599wc;
import com.sunia.HTREnginev2.C14646xb;
import java.util.function.IntFunction;

/* loaded from: classes3.dex */
public class AppCompatButton extends Button implements TintableBackgroundView, AutoSizeableTextView, TintableCompoundDrawablesView, EmojiCompatConfigurationView {

    /* renamed from: e */
    public final C14646xb f1499e;

    /* renamed from: f */
    public final C14599wc f1500f;

    /* renamed from: g */
    @NonNull
    public C14132nc f1501g;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatButton> {

        /* renamed from: a */
        public boolean f1502a = false;

        /* renamed from: b */
        public int f1503b;

        /* renamed from: c */
        public int f1504c;

        /* renamed from: d */
        public int f1505d;

        /* renamed from: e */
        public int f1506e;

        /* renamed from: f */
        public int f1507f;

        /* renamed from: g */
        public int f1508g;

        /* renamed from: h */
        public int f1509h;

        /* renamed from: i */
        public int f1510i;

        /* renamed from: androidx.appcompat.widget.AppCompatButton$InspectionCompanion$a */
        /* loaded from: classes3.dex */
        public class C0228a implements IntFunction<String> {
            public C0228a() {
            }

            @Override // java.util.function.IntFunction
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public String apply(int i) {
                return i != 0 ? i != 1 ? String.valueOf(i) : "uniform" : "none";
            }
        }

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1503b = propertyMapper.mapInt("autoSizeMaxTextSize", C0118R.attr.autoSizeMaxTextSize);
            this.f1504c = propertyMapper.mapInt("autoSizeMinTextSize", C0118R.attr.autoSizeMinTextSize);
            this.f1505d = propertyMapper.mapInt("autoSizeStepGranularity", C0118R.attr.autoSizeStepGranularity);
            this.f1506e = propertyMapper.mapIntEnum("autoSizeTextType", C0118R.attr.autoSizeTextType, new C0228a());
            this.f1507f = propertyMapper.mapObject("backgroundTint", C0118R.attr.backgroundTint);
            this.f1508g = propertyMapper.mapObject("backgroundTintMode", C0118R.attr.backgroundTintMode);
            this.f1509h = propertyMapper.mapObject("drawableTint", C0118R.attr.drawableTint);
            this.f1510i = propertyMapper.mapObject("drawableTintMode", C0118R.attr.drawableTintMode);
            this.f1502a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatButton appCompatButton, @NonNull PropertyReader propertyReader) {
            if (this.f1502a) {
                propertyReader.readInt(this.f1503b, appCompatButton.getAutoSizeMaxTextSize());
                propertyReader.readInt(this.f1504c, appCompatButton.getAutoSizeMinTextSize());
                propertyReader.readInt(this.f1505d, appCompatButton.getAutoSizeStepGranularity());
                propertyReader.readIntEnum(this.f1506e, appCompatButton.getAutoSizeTextType());
                propertyReader.readObject(this.f1507f, appCompatButton.getBackgroundTintList());
                propertyReader.readObject(this.f1508g, appCompatButton.getBackgroundTintMode());
                propertyReader.readObject(this.f1509h, appCompatButton.getCompoundDrawableTintList());
                propertyReader.readObject(this.f1510i, appCompatButton.getCompoundDrawableTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatButton(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private C14132nc getEmojiTextViewHelper() {
        if (this.f1501g == null) {
            this.f1501g = new C14132nc(this);
        }
        return this.f1501g;
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C14646xb c14646xb = this.f1499e;
        if (c14646xb != null) {
            c14646xb.m58172b();
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58025b();
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMaxTextSize() {
        if (ViewUtils.f2130d) {
            return super.getAutoSizeMaxTextSize();
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            return c14599wc.m58027e();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMinTextSize() {
        if (ViewUtils.f2130d) {
            return super.getAutoSizeMinTextSize();
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            return c14599wc.m58028f();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeStepGranularity() {
        if (ViewUtils.f2130d) {
            return super.getAutoSizeStepGranularity();
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            return c14599wc.m58029g();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int[] getAutoSizeTextAvailableSizes() {
        if (ViewUtils.f2130d) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C14599wc c14599wc = this.f1500f;
        return c14599wc != null ? c14599wc.m58030h() : new int[0];
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        if (ViewUtils.f2130d) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C14599wc c14599wc = this.f1500f;
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

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        C14646xb c14646xb = this.f1499e;
        if (c14646xb != null) {
            return c14646xb.m58173c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C14646xb c14646xb = this.f1499e;
        if (c14646xb != null) {
            return c14646xb.m58174d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1500f.m58032j();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1500f.m58033k();
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().m55734b();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58037o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C14599wc c14599wc = this.f1500f;
        if ((c14599wc == null || ViewUtils.f2130d || !c14599wc.m58034l()) ? false : true) {
            this.f1500f.m58026c();
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
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58042t(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i) throws IllegalArgumentException {
        if (ViewUtils.f2130d) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58043u(iArr, i);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (ViewUtils.f2130d) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58044v(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C14646xb c14646xb = this.f1499e;
        if (c14646xb != null) {
            c14646xb.m58176f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        C14646xb c14646xb = this.f1499e;
        if (c14646xb != null) {
            c14646xb.m58177g(i);
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

    public void setSupportAllCaps(boolean z) {
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58041s(z);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        C14646xb c14646xb = this.f1499e;
        if (c14646xb != null) {
            c14646xb.m58179i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        C14646xb c14646xb = this.f1499e;
        if (c14646xb != null) {
            c14646xb.m58180j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1500f.m58045w(colorStateList);
        this.f1500f.m58025b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1500f.m58046x(mode);
        this.f1500f.m58025b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58039q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (ViewUtils.f2130d) {
            super.setTextSize(i, f);
            return;
        }
        C14599wc c14599wc = this.f1500f;
        if (c14599wc != null) {
            c14599wc.m58021A(i, f);
        }
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.buttonStyle);
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        C14646xb c14646xb = new C14646xb(this);
        this.f1499e = c14646xb;
        c14646xb.m58175e(attributeSet, i);
        C14599wc c14599wc = new C14599wc(this);
        this.f1500f = c14599wc;
        c14599wc.m58035m(attributeSet, i);
        c14599wc.m58025b();
        getEmojiTextViewHelper().m55735c(attributeSet, i);
    }
}
