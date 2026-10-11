package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class AppCompatImageHelper {

    /* renamed from: a */
    @NonNull
    public final ImageView f1565a;

    /* renamed from: b */
    public TintInfo f1566b;

    /* renamed from: c */
    public TintInfo f1567c;

    /* renamed from: d */
    public TintInfo f1568d;

    /* renamed from: e */
    public int f1569e = 0;

    public AppCompatImageHelper(@NonNull ImageView imageView) {
        this.f1565a = imageView;
    }

    /* renamed from: a */
    public final boolean m741a(@NonNull Drawable drawable) {
        if (this.f1568d == null) {
            this.f1568d = new TintInfo();
        }
        TintInfo tintInfo = this.f1568d;
        tintInfo.m934a();
        ColorStateList imageTintList = ImageViewCompat.getImageTintList(this.f1565a);
        if (imageTintList != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = imageTintList;
        }
        PorterDuff.Mode imageTintMode = ImageViewCompat.getImageTintMode(this.f1565a);
        if (imageTintMode != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = imageTintMode;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            return false;
        }
        AppCompatDrawableManager.m723e(drawable, tintInfo, this.f1565a.getDrawableState());
        return true;
    }

    /* renamed from: b */
    public void m742b() {
        if (this.f1565a.getDrawable() != null) {
            this.f1565a.getDrawable().setLevel(this.f1569e);
        }
    }

    /* renamed from: c */
    public void m743c() {
        Drawable drawable = this.f1565a.getDrawable();
        if (drawable != null) {
            DrawableUtils.m788a(drawable);
        }
        if (drawable != null) {
            if (m751k() && m741a(drawable)) {
                return;
            }
            TintInfo tintInfo = this.f1567c;
            if (tintInfo != null) {
                AppCompatDrawableManager.m723e(drawable, tintInfo, this.f1565a.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.f1566b;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.m723e(drawable, tintInfo2, this.f1565a.getDrawableState());
            }
        }
    }

    /* renamed from: d */
    public ColorStateList m744d() {
        TintInfo tintInfo = this.f1567c;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    /* renamed from: e */
    public PorterDuff.Mode m745e() {
        TintInfo tintInfo = this.f1567c;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* renamed from: f */
    public boolean m746f() {
        return !(this.f1565a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: g */
    public void m747g(@NonNull Drawable drawable) {
        this.f1569e = drawable.getLevel();
    }

    /* renamed from: h */
    public void m748h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1566b == null) {
                this.f1566b = new TintInfo();
            }
            TintInfo tintInfo = this.f1566b;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.f1566b = null;
        }
        m743c();
    }

    /* renamed from: i */
    public void m749i(ColorStateList colorStateList) {
        if (this.f1567c == null) {
            this.f1567c = new TintInfo();
        }
        TintInfo tintInfo = this.f1567c;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        m743c();
    }

    /* renamed from: j */
    public void m750j(PorterDuff.Mode mode) {
        if (this.f1567c == null) {
            this.f1567c = new TintInfo();
        }
        TintInfo tintInfo = this.f1567c;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        m743c();
    }

    /* renamed from: k */
    public final boolean m751k() {
        return this.f1566b != null;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        int resourceId;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f1565a.getContext(), attributeSet, C0118R.styleable.AppCompatImageView, i, 0);
        ImageView imageView = this.f1565a;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), C0118R.styleable.AppCompatImageView, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        try {
            Drawable drawable = this.f1565a.getDrawable();
            if (drawable == null && (resourceId = obtainStyledAttributes.getResourceId(C0118R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = AppCompatResources.getDrawable(this.f1565a.getContext(), resourceId)) != null) {
                this.f1565a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.m788a(drawable);
            }
            if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatImageView_tint)) {
                ImageViewCompat.setImageTintList(this.f1565a, obtainStyledAttributes.getColorStateList(C0118R.styleable.AppCompatImageView_tint));
            }
            if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatImageView_tintMode)) {
                ImageViewCompat.setImageTintMode(this.f1565a, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0118R.styleable.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setImageResource(int i) {
        if (i != 0) {
            Drawable drawable = AppCompatResources.getDrawable(this.f1565a.getContext(), i);
            if (drawable != null) {
                DrawableUtils.m788a(drawable);
            }
            this.f1565a.setImageDrawable(drawable);
        } else {
            this.f1565a.setImageDrawable(null);
        }
        m743c();
    }
}
