package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

@RequiresApi(21)
/* loaded from: classes3.dex */
public class xao extends wao {

    /* renamed from: l */
    public static final String f89445l = "WrappedDrawableApi21";

    /* renamed from: m */
    public static Method f89446m;

    public xao(Drawable drawable) {
        super(drawable);
        m58170e();
    }

    @Override // com.sunia.HTREnginev2.wao
    /* renamed from: a */
    public boolean mo58015a() {
        return false;
    }

    /* renamed from: e */
    public final void m58170e() {
        if (f89446m == null) {
            try {
                f89446m = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception e) {
                Log.w(f89445l, "Failed to retrieve Drawable#isProjected() method", e);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Rect getDirtyBounds() {
        return this.f88422j.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NonNull Outline outline) {
        this.f88422j.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f88422j;
        if (drawable != null && (method = f89446m) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception e) {
                Log.w(f89445l, "Error calling Drawable#isProjected() method", e);
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.f88422j.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f88422j.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // com.sunia.HTREnginev2.wao, android.graphics.drawable.Drawable
    public boolean setState(@NonNull int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // com.sunia.HTREnginev2.wao, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        if (mo58015a()) {
            super.setTint(i);
        } else {
            this.f88422j.setTint(i);
        }
    }

    @Override // com.sunia.HTREnginev2.wao, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        if (mo58015a()) {
            super.setTintList(colorStateList);
        } else {
            this.f88422j.setTintList(colorStateList);
        }
    }

    @Override // com.sunia.HTREnginev2.wao, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (mo58015a()) {
            super.setTintMode(mode);
        } else {
            this.f88422j.setTintMode(mode);
        }
    }

    public xao(yao yaoVar, Resources resources) {
        super(yaoVar, resources);
        m58170e();
    }
}
