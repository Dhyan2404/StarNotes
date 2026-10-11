package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableImageSourceView;
import com.sunia.HTREnginev2.C14646xb;

/* loaded from: classes3.dex */
public class AppCompatImageView extends ImageView implements TintableBackgroundView, TintableImageSourceView {

    /* renamed from: e */
    public final C14646xb f1570e;

    /* renamed from: f */
    public final AppCompatImageHelper f1571f;

    /* renamed from: g */
    public boolean f1572g;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatImageView> {

        /* renamed from: a */
        public boolean f1573a = false;

        /* renamed from: b */
        public int f1574b;

        /* renamed from: c */
        public int f1575c;

        /* renamed from: d */
        public int f1576d;

        /* renamed from: e */
        public int f1577e;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1574b = propertyMapper.mapObject("backgroundTint", C0118R.attr.backgroundTint);
            this.f1575c = propertyMapper.mapObject("backgroundTintMode", C0118R.attr.backgroundTintMode);
            this.f1576d = propertyMapper.mapObject("tint", C0118R.attr.tint);
            this.f1577e = propertyMapper.mapObject("tintMode", C0118R.attr.tintMode);
            this.f1573a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatImageView appCompatImageView, @NonNull PropertyReader propertyReader) {
            if (this.f1573a) {
                propertyReader.readObject(this.f1574b, appCompatImageView.getBackgroundTintList());
                propertyReader.readObject(this.f1575c, appCompatImageView.getBackgroundTintMode());
                propertyReader.readObject(this.f1576d, appCompatImageView.getImageTintList());
                propertyReader.readObject(this.f1577e, appCompatImageView.getImageTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatImageView(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C14646xb c14646xb = this.f1570e;
        if (c14646xb != null) {
            c14646xb.m58172b();
        }
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m743c();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        C14646xb c14646xb = this.f1570e;
        if (c14646xb != null) {
            return c14646xb.m58173c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C14646xb c14646xb = this.f1570e;
        if (c14646xb != null) {
            return c14646xb.m58174d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportImageTintList() {
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            return appCompatImageHelper.m744d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportImageTintMode() {
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            return appCompatImageHelper.m745e();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1571f.m746f() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C14646xb c14646xb = this.f1570e;
        if (c14646xb != null) {
            c14646xb.m58176f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        C14646xb c14646xb = this.f1570e;
        if (c14646xb != null) {
            c14646xb.m58177g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m743c();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null && drawable != null && !this.f1572g) {
            appCompatImageHelper.m747g(drawable);
        }
        super.setImageDrawable(drawable);
        AppCompatImageHelper appCompatImageHelper2 = this.f1571f;
        if (appCompatImageHelper2 != null) {
            appCompatImageHelper2.m743c();
            if (this.f1572g) {
                return;
            }
            this.f1571f.m742b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.f1572g = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.setImageResource(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m743c();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        C14646xb c14646xb = this.f1570e;
        if (c14646xb != null) {
            c14646xb.m58179i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        C14646xb c14646xb = this.f1570e;
        if (c14646xb != null) {
            c14646xb.m58180j(mode);
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m749i(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatImageHelper appCompatImageHelper = this.f1571f;
        if (appCompatImageHelper != null) {
            appCompatImageHelper.m750j(mode);
        }
    }

    public AppCompatImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.wrap(context), attributeSet, i);
        this.f1572g = false;
        ThemeUtils.checkAppCompatTheme(this, getContext());
        C14646xb c14646xb = new C14646xb(this);
        this.f1570e = c14646xb;
        c14646xb.m58175e(attributeSet, i);
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f1571f = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i);
    }
}
