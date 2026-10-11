package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.CheckedTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCheckedTextView;
import androidx.core.widget.TintableCompoundDrawablesView;
import com.sunia.HTREnginev2.C13479ac;
import com.sunia.HTREnginev2.C14132nc;
import com.sunia.HTREnginev2.C14177oc;
import com.sunia.HTREnginev2.C14599wc;
import com.sunia.HTREnginev2.C14646xb;

/* loaded from: classes3.dex */
public class AppCompatCheckedTextView extends CheckedTextView implements TintableCheckedTextView, TintableBackgroundView, EmojiCompatConfigurationView, TintableCompoundDrawablesView {

    /* renamed from: e */
    public final C13479ac f1523e;

    /* renamed from: f */
    public final C14646xb f1524f;

    /* renamed from: g */
    public final C14599wc f1525g;

    /* renamed from: h */
    @NonNull
    public C14132nc f1526h;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatCheckedTextView> {

        /* renamed from: a */
        public boolean f1527a = false;

        /* renamed from: b */
        public int f1528b;

        /* renamed from: c */
        public int f1529c;

        /* renamed from: d */
        public int f1530d;

        /* renamed from: e */
        public int f1531e;

        /* renamed from: f */
        public int f1532f;

        /* renamed from: g */
        public int f1533g;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1528b = propertyMapper.mapObject("backgroundTint", C0118R.attr.backgroundTint);
            this.f1529c = propertyMapper.mapObject("backgroundTintMode", C0118R.attr.backgroundTintMode);
            this.f1530d = propertyMapper.mapObject("checkMarkTint", C0118R.attr.checkMarkTint);
            this.f1531e = propertyMapper.mapObject("checkMarkTintMode", C0118R.attr.checkMarkTintMode);
            this.f1532f = propertyMapper.mapObject("drawableTint", C0118R.attr.drawableTint);
            this.f1533g = propertyMapper.mapObject("drawableTintMode", C0118R.attr.drawableTintMode);
            this.f1527a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatCheckedTextView appCompatCheckedTextView, @NonNull PropertyReader propertyReader) {
            if (this.f1527a) {
                propertyReader.readObject(this.f1528b, appCompatCheckedTextView.getBackgroundTintList());
                propertyReader.readObject(this.f1529c, appCompatCheckedTextView.getBackgroundTintMode());
                propertyReader.readObject(this.f1530d, appCompatCheckedTextView.getCheckMarkTintList());
                propertyReader.readObject(this.f1531e, appCompatCheckedTextView.getCheckMarkTintMode());
                propertyReader.readObject(this.f1532f, appCompatCheckedTextView.getCompoundDrawableTintList());
                propertyReader.readObject(this.f1533g, appCompatCheckedTextView.getCompoundDrawableTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatCheckedTextView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private C14132nc getEmojiTextViewHelper() {
        if (this.f1526h == null) {
            this.f1526h = new C14132nc(this);
        }
        return this.f1526h;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C14599wc c14599wc = this.f1525g;
        if (c14599wc != null) {
            c14599wc.m58025b();
        }
        C14646xb c14646xb = this.f1524f;
        if (c14646xb != null) {
            c14646xb.m58172b();
        }
        C13479ac c13479ac = this.f1523e;
        if (c13479ac != null) {
            c13479ac.m52992a();
        }
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
        C14646xb c14646xb = this.f1524f;
        if (c14646xb != null) {
            return c14646xb.m58173c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C14646xb c14646xb = this.f1524f;
        if (c14646xb != null) {
            return c14646xb.m58174d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCheckMarkTintList() {
        C13479ac c13479ac = this.f1523e;
        if (c13479ac != null) {
            return c13479ac.m52993b();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C13479ac c13479ac = this.f1523e;
        if (c13479ac != null) {
            return c13479ac.m52994c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1525g.m58032j();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1525g.m58033k();
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().m55734b();
    }

    @Override // android.widget.TextView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        return C14177oc.m55928a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m55736d(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C14646xb c14646xb = this.f1524f;
        if (c14646xb != null) {
            c14646xb.m58176f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        C14646xb c14646xb = this.f1524f;
        if (c14646xb != null) {
            c14646xb.m58177g(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@Nullable Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C13479ac c13479ac = this.f1523e;
        if (c13479ac != null) {
            c13479ac.m52996e();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1525g;
        if (c14599wc != null) {
            c14599wc.m58038p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C14599wc c14599wc = this.f1525g;
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

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        C14646xb c14646xb = this.f1524f;
        if (c14646xb != null) {
            c14646xb.m58179i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        C14646xb c14646xb = this.f1524f;
        if (c14646xb != null) {
            c14646xb.m58180j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCheckMarkTintList(@Nullable ColorStateList colorStateList) {
        C13479ac c13479ac = this.f1523e;
        if (c13479ac != null) {
            c13479ac.m52997f(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCheckMarkTintMode(@Nullable PorterDuff.Mode mode) {
        C13479ac c13479ac = this.f1523e;
        if (c13479ac != null) {
            c13479ac.m52998g(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1525g.m58045w(colorStateList);
        this.f1525g.m58025b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1525g.m58046x(mode);
        this.f1525g.m58025b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i) {
        super.setTextAppearance(context, i);
        C14599wc c14599wc = this.f1525g;
        if (c14599wc != null) {
            c14599wc.m58039q(context, i);
        }
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.checkedTextViewStyle);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        C14599wc c14599wc = new C14599wc(this);
        this.f1525g = c14599wc;
        c14599wc.m58035m(attributeSet, i);
        c14599wc.m58025b();
        C14646xb c14646xb = new C14646xb(this);
        this.f1524f = c14646xb;
        c14646xb.m58175e(attributeSet, i);
        C13479ac c13479ac = new C13479ac(this);
        this.f1523e = c13479ac;
        c13479ac.m52995d(attributeSet, i);
        getEmojiTextViewHelper().m55735c(attributeSet, i);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@DrawableRes int i) {
        setCheckMarkDrawable(AppCompatResources.getDrawable(getContext(), i));
    }
}
