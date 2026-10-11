package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.CheckBox;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableCompoundButton;
import androidx.core.widget.TintableCompoundDrawablesView;
import com.sunia.HTREnginev2.C13559cc;
import com.sunia.HTREnginev2.C14132nc;
import com.sunia.HTREnginev2.C14599wc;
import com.sunia.HTREnginev2.C14646xb;

/* loaded from: classes3.dex */
public class AppCompatCheckBox extends CheckBox implements TintableCompoundButton, TintableBackgroundView, EmojiCompatConfigurationView, TintableCompoundDrawablesView {

    /* renamed from: e */
    public final C13559cc f1512e;

    /* renamed from: f */
    public final C14646xb f1513f;

    /* renamed from: g */
    public final C14599wc f1514g;

    /* renamed from: h */
    public C14132nc f1515h;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatCheckBox> {

        /* renamed from: a */
        public boolean f1516a = false;

        /* renamed from: b */
        public int f1517b;

        /* renamed from: c */
        public int f1518c;

        /* renamed from: d */
        public int f1519d;

        /* renamed from: e */
        public int f1520e;

        /* renamed from: f */
        public int f1521f;

        /* renamed from: g */
        public int f1522g;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1517b = propertyMapper.mapObject("backgroundTint", C0118R.attr.backgroundTint);
            this.f1518c = propertyMapper.mapObject("backgroundTintMode", C0118R.attr.backgroundTintMode);
            this.f1519d = propertyMapper.mapObject("buttonTint", C0118R.attr.buttonTint);
            this.f1520e = propertyMapper.mapObject("buttonTintMode", C0118R.attr.buttonTintMode);
            this.f1521f = propertyMapper.mapObject("drawableTint", C0118R.attr.drawableTint);
            this.f1522g = propertyMapper.mapObject("drawableTintMode", C0118R.attr.drawableTintMode);
            this.f1516a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatCheckBox appCompatCheckBox, @NonNull PropertyReader propertyReader) {
            if (this.f1516a) {
                propertyReader.readObject(this.f1517b, appCompatCheckBox.getBackgroundTintList());
                propertyReader.readObject(this.f1518c, appCompatCheckBox.getBackgroundTintMode());
                propertyReader.readObject(this.f1519d, appCompatCheckBox.getButtonTintList());
                propertyReader.readObject(this.f1520e, appCompatCheckBox.getButtonTintMode());
                propertyReader.readObject(this.f1521f, appCompatCheckBox.getCompoundDrawableTintList());
                propertyReader.readObject(this.f1522g, appCompatCheckBox.getCompoundDrawableTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatCheckBox(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private C14132nc getEmojiTextViewHelper() {
        if (this.f1515h == null) {
            this.f1515h = new C14132nc(this);
        }
        return this.f1515h;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C14646xb c14646xb = this.f1513f;
        if (c14646xb != null) {
            c14646xb.m58172b();
        }
        C14599wc c14599wc = this.f1514g;
        if (c14599wc != null) {
            c14599wc.m58025b();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        C14646xb c14646xb = this.f1513f;
        if (c14646xb != null) {
            return c14646xb.m58173c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C14646xb c14646xb = this.f1513f;
        if (c14646xb != null) {
            return c14646xb.m58174d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportButtonTintList() {
        C13559cc c13559cc = this.f1512e;
        if (c13559cc != null) {
            return c13559cc.m53421b();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportButtonTintMode() {
        C13559cc c13559cc = this.f1512e;
        if (c13559cc != null) {
            return c13559cc.m53422c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1514g.m58032j();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1514g.m58033k();
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().m55734b();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m55736d(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C14646xb c14646xb = this.f1513f;
        if (c14646xb != null) {
            c14646xb.m58176f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        C14646xb c14646xb = this.f1513f;
        if (c14646xb != null) {
            c14646xb.m58177g(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C13559cc c13559cc = this.f1512e;
        if (c13559cc != null) {
            c13559cc.m53424e();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1514g;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1514g;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().m55737e(z);
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().m55733a(inputFilterArr));
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        C14646xb c14646xb = this.f1513f;
        if (c14646xb != null) {
            c14646xb.m58179i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        C14646xb c14646xb = this.f1513f;
        if (c14646xb != null) {
            c14646xb.m58180j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintList(@Nullable ColorStateList colorStateList) {
        C13559cc c13559cc = this.f1512e;
        if (c13559cc != null) {
            c13559cc.m53425f(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        C13559cc c13559cc = this.f1512e;
        if (c13559cc != null) {
            c13559cc.m53426g(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1514g.m58045w(colorStateList);
        this.f1514g.m58025b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1514g.m58046x(mode);
        this.f1514g.m58025b();
    }

    public AppCompatCheckBox(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.checkboxStyle);
    }

    public AppCompatCheckBox(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        C13559cc c13559cc = new C13559cc(this);
        this.f1512e = c13559cc;
        c13559cc.m53423d(attributeSet, i);
        C14646xb c14646xb = new C14646xb(this);
        this.f1513f = c14646xb;
        c14646xb.m58175e(attributeSet, i);
        C14599wc c14599wc = new C14599wc(this);
        this.f1514g = c14599wc;
        c14599wc.m58035m(attributeSet, i);
        getEmojiTextViewHelper().m55735c(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i));
    }
}
