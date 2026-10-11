package com.onyx.android.sdk.theme.widgets;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.DrawableUtils;
import com.onyx.android.sdk.theme.utils.TintInfo;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.sunia.HTREnginev2.AbstractC14698yb;

/* loaded from: classes8.dex */
public class AppCompatImageHelper extends AbstractC14698yb<ImageView> {

    /* renamed from: b */
    public TintInfo f46888b;

    /* renamed from: c */
    public int f46889c;

    /* renamed from: d */
    public int f46890d;

    /* loaded from: classes8.dex */
    public interface ImageExtensible {
        void setImageTintList(int i);

        void setImageTintList(int i, PorterDuff.Mode mode);
    }

    public AppCompatImageHelper(ImageView imageView, TintManager tintManager) {
        super(imageView, tintManager);
    }

    /* renamed from: a */
    public final boolean m36298a() {
        TintInfo tintInfo;
        Drawable drawable = ((ImageView) this.mView).getDrawable();
        if (drawable == null || (tintInfo = this.f46888b) == null || !tintInfo.mHasTintList) {
            return false;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        TintInfo tintInfo2 = this.f46888b;
        if (tintInfo2.mHasTintList) {
            DrawableCompat.setTintList(wrap, tintInfo2.mTintList);
        }
        TintInfo tintInfo3 = this.f46888b;
        if (tintInfo3.mHasTintMode) {
            DrawableCompat.setTintMode(wrap, tintInfo3.mTintMode);
        }
        if (wrap.isStateful()) {
            wrap.setState(((ImageView) this.mView).getDrawableState());
        }
        m36302e(wrap);
        if (drawable != wrap) {
            return true;
        }
        wrap.invalidateSelf();
        return true;
    }

    /* renamed from: b */
    public void m36299b() {
        m36298a();
    }

    /* renamed from: c */
    public final void m36300c(int i) {
        this.f46889c = i;
        this.f46890d = 0;
        TintInfo tintInfo = this.f46888b;
        if (tintInfo != null) {
            tintInfo.mHasTintList = false;
            tintInfo.mTintList = null;
            tintInfo.mHasTintMode = false;
            tintInfo.mTintMode = null;
        }
    }

    /* renamed from: d */
    public void m36301d() {
        if (skipNextApply()) {
            return;
        }
        m36300c(this.f46889c);
        setSkipNextApply(false);
    }

    /* renamed from: e */
    public final void m36302e(Drawable drawable) {
        if (skipNextApply()) {
            return;
        }
        ((ImageView) this.mView).setImageDrawable(drawable);
    }

    /* renamed from: f */
    public final void m36303f(Drawable drawable) {
        ((ImageView) this.mView).setImageDrawable(drawable);
    }

    /* renamed from: g */
    public void m36304g(int i) {
        if (this.f46889c != i) {
            this.f46889c = i;
            if (i != 0) {
                Drawable drawable = this.mTintManager.getDrawable(i);
                if (drawable == null) {
                    drawable = ContextCompat.getDrawable(((ImageView) this.mView).getContext(), i);
                }
                m36303f(drawable);
            }
        }
    }

    /* renamed from: h */
    public void m36305h(int i, PorterDuff.Mode mode) {
        if (this.f46890d != i) {
            this.f46890d = i;
            TintInfo tintInfo = this.f46888b;
            if (tintInfo != null) {
                tintInfo.mHasTintList = false;
                tintInfo.mTintList = null;
            }
            m36307j(mode);
            m36306i(i);
        }
    }

    /* renamed from: i */
    public final boolean m36306i(int i) {
        if (i != 0) {
            if (this.f46888b == null) {
                this.f46888b = new TintInfo();
            }
            TintInfo tintInfo = this.f46888b;
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = this.mTintManager.getColorStateList(i);
        }
        return m36298a();
    }

    /* renamed from: j */
    public final void m36307j(PorterDuff.Mode mode) {
        if (this.f46890d == 0 || mode == null) {
            return;
        }
        if (this.f46888b == null) {
            this.f46888b = new TintInfo();
        }
        TintInfo tintInfo = this.f46888b;
        tintInfo.mHasTintMode = true;
        tintInfo.mTintMode = mode;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void loadFromAttribute(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ((ImageView) this.mView).getContext().obtainStyledAttributes(attributeSet, C7996R.styleable.TintImageHelper, i, 0);
        if (((ImageView) this.mView).getDrawable() == null) {
            TintManager tintManager = this.mTintManager;
            int resourceId = obtainStyledAttributes.getResourceId(C7996R.styleable.TintImageHelper_srcCompat, 0);
            this.f46889c = resourceId;
            Drawable drawable = tintManager.getDrawable(resourceId);
            if (drawable != null) {
                m36302e(drawable);
            }
        }
        if (obtainStyledAttributes.hasValue(C7996R.styleable.TintImageHelper_imageTint)) {
            this.f46890d = obtainStyledAttributes.getResourceId(C7996R.styleable.TintImageHelper_imageTint, 0);
            if (obtainStyledAttributes.hasValue(C7996R.styleable.TintImageHelper_imageTintMode)) {
                m36307j(DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C7996R.styleable.TintImageHelper_imageTintMode, 0), null));
            }
            m36306i(this.f46890d);
        } else if (this.f46889c == 0) {
            TintManager tintManager2 = this.mTintManager;
            int resourceId2 = obtainStyledAttributes.getResourceId(C7996R.styleable.TintImageHelper_android_src, 0);
            this.f46889c = resourceId2;
            Drawable drawable2 = tintManager2.getDrawable(resourceId2);
            if (drawable2 != null) {
                m36302e(drawable2);
            }
        }
        obtainStyledAttributes.recycle();
    }

    @Override // com.sunia.HTREnginev2.AbstractC14698yb
    public void tint() {
        setSkipNextApply(false);
        int i = this.f46890d;
        if (i == 0 || !m36306i(i)) {
            Drawable drawable = this.mTintManager.getDrawable(this.f46889c);
            if (drawable == null) {
                drawable = this.f46889c == 0 ? null : ContextCompat.getDrawable(((ImageView) this.mView).getContext(), this.f46889c);
            }
            m36302e(drawable);
        }
    }
}
