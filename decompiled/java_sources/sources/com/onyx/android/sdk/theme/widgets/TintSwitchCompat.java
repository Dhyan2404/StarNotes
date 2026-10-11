package com.onyx.android.sdk.theme.widgets;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatCompoundButtonHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper;
import com.onyx.android.sdk.theme.widgets.AppCompatTextHelper;

/* loaded from: classes8.dex */
public class TintSwitchCompat extends SwitchCompat implements Tintable, AppCompatTextHelper.TextExtensible, AppCompatBackgroundHelper.BackgroundExtensible, AppCompatSwitchHelper.SwitchCompatExtensible, AppCompatCompoundButtonHelper.CompoundButtonExtensible {

    /* renamed from: U0 */
    public AppCompatBackgroundHelper f46980U0;

    /* renamed from: V0 */
    public AppCompatCompoundButtonHelper f46981V0;

    /* renamed from: W0 */
    public AppCompatTextHelper f46982W0;

    /* renamed from: X0 */
    public AppCompatSwitchHelper f46983X0;

    /* renamed from: Y0 */
    public AppCompatSwitchHelper f46984Y0;

    /* renamed from: com.onyx.android.sdk.theme.widgets.TintSwitchCompat$a */
    /* loaded from: classes8.dex */
    public class C8024a implements AppCompatSwitchHelper.DrawableCallback {
        public C8024a() {
        }

        @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.DrawableCallback
        public Drawable getDrawable() {
            return TintSwitchCompat.this.getThumbDrawable();
        }

        @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.DrawableCallback
        public void setDrawable(Drawable drawable) {
            TintSwitchCompat.this.setThumbDrawable(drawable);
        }
    }

    /* renamed from: com.onyx.android.sdk.theme.widgets.TintSwitchCompat$b */
    /* loaded from: classes8.dex */
    public class C8025b implements AppCompatSwitchHelper.DrawableCallback {
        public C8025b() {
        }

        @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.DrawableCallback
        public Drawable getDrawable() {
            return TintSwitchCompat.this.getTrackDrawable();
        }

        @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.DrawableCallback
        public void setDrawable(Drawable drawable) {
            TintSwitchCompat.this.setTrackDrawable(drawable);
        }
    }

    public TintSwitchCompat(Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (ThemeUtils.isSkipAnimatedSelector()) {
            Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this);
            try {
                if (ThemeUtils.getWrapperDrawable(buttonDrawable) instanceof AnimatedStateListDrawable) {
                    buttonDrawable.jumpToCurrentState();
                }
            } catch (NoClassDefFoundError e) {
                e.printStackTrace();
            }
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46981V0;
        return appCompatCompoundButtonHelper != null ? appCompatCompoundButtonHelper.m36271b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46980U0;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46980U0;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundDrawableExternal(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46980U0;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundResId(i);
        } else {
            super.setBackgroundResource(i);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46980U0;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, null);
        }
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46981V0;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36273d();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatCompoundButtonHelper.CompoundButtonExtensible
    public void setCompoundButtonTintList(int i) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46981V0;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36276g(i, null);
        }
    }

    @Override // android.widget.TextView
    @TargetApi(23)
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        AppCompatTextHelper appCompatTextHelper = this.f46982W0;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        AppCompatTextHelper appCompatTextHelper = this.f46982W0;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatTextHelper.TextExtensible
    public void setTextColorById(@ColorRes int i) {
        AppCompatTextHelper appCompatTextHelper = this.f46982W0;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36335m(i);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(Drawable drawable) {
        super.setThumbDrawable(drawable);
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46983X0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36312e();
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbResource(int i) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46983X0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36314g(i);
        } else {
            super.setThumbResource(i);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46983X0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36315h(colorStateList);
        } else {
            super.setThumbTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46983X0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36316i(mode);
        } else {
            super.setThumbTintMode(mode);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(Drawable drawable) {
        super.setTrackDrawable(drawable);
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46984Y0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36312e();
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackResource(int i) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46984Y0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36314g(i);
        } else {
            super.setTrackResource(i);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46984Y0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36315h(colorStateList);
        } else {
            super.setTrackTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46984Y0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36316i(mode);
        } else {
            super.setTrackTintMode(mode);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatTextHelper appCompatTextHelper = this.f46982W0;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.tint();
        }
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46981V0;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.tint();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46980U0;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46984Y0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36321n();
        }
        AppCompatSwitchHelper appCompatSwitchHelper2 = this.f46983X0;
        if (appCompatSwitchHelper2 != null) {
            appCompatSwitchHelper2.m36321n();
        }
    }

    public TintSwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    public TintSwitchCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (isInEditMode()) {
            return;
        }
        TintManager tintManager = TintManager.get(context);
        AppCompatSwitchHelper appCompatSwitchHelper = new AppCompatSwitchHelper(this, tintManager, C7996R.styleable.TintSwitchThumb, new C8024a());
        this.f46983X0 = appCompatSwitchHelper;
        appCompatSwitchHelper.m36309b(attributeSet, i);
        AppCompatSwitchHelper appCompatSwitchHelper2 = new AppCompatSwitchHelper(this, tintManager, C7996R.styleable.TintSwitchTrack, new C8025b());
        this.f46984Y0 = appCompatSwitchHelper2;
        appCompatSwitchHelper2.m36309b(attributeSet, i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, tintManager);
        this.f46980U0 = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = new AppCompatCompoundButtonHelper(this, tintManager);
        this.f46981V0 = appCompatCompoundButtonHelper;
        appCompatCompoundButtonHelper.loadFromAttribute(attributeSet, i);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this, tintManager);
        this.f46982W0 = appCompatTextHelper;
        appCompatTextHelper.loadFromAttribute(attributeSet, i);
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper.BackgroundExtensible
    public void setBackgroundTintList(int i, PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f46980U0;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.setBackgroundTintList(i, mode);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatCompoundButtonHelper.CompoundButtonExtensible
    public void setCompoundButtonTintList(int i, PorterDuff.Mode mode) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46981V0;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36276g(i, mode);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f46981V0;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m36274e(i);
        } else {
            super.setButtonDrawable(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        AppCompatTextHelper appCompatTextHelper = this.f46982W0;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36330h(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        AppCompatTextHelper appCompatTextHelper = this.f46982W0;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m36332j();
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.SwitchCompatExtensible
    public void setThumbTintList(int i) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46983X0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36311d(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.SwitchCompatExtensible
    public void setTrackTintList(int i) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46984Y0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36311d(i, null);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.SwitchCompatExtensible
    public void setThumbTintList(int i, PorterDuff.Mode mode) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46983X0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36311d(i, mode);
        }
    }

    @Override // com.onyx.android.sdk.theme.widgets.AppCompatSwitchHelper.SwitchCompatExtensible
    public void setTrackTintList(int i, PorterDuff.Mode mode) {
        AppCompatSwitchHelper appCompatSwitchHelper = this.f46984Y0;
        if (appCompatSwitchHelper != null) {
            appCompatSwitchHelper.m36311d(i, mode);
        }
    }
}
