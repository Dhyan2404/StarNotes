package com.sunia.HTREnginev2;

import android.graphics.Outline;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeableDelegate;

@RequiresApi(22)
/* loaded from: classes6.dex */
public class tmm extends ShapeableDelegate {

    /* renamed from: f */
    public boolean f85498f = false;

    /* renamed from: g */
    public float f85499g = 0.0f;

    /* renamed from: com.sunia.HTREnginev2.tmm$a */
    /* loaded from: classes6.dex */
    public class C14462a extends ViewOutlineProvider {
        public C14462a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            tmm tmmVar = tmm.this;
            if (tmmVar.f32330c == null || tmmVar.f32331d.isEmpty()) {
                return;
            }
            tmm tmmVar2 = tmm.this;
            RectF rectF = tmmVar2.f32331d;
            outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, tmmVar2.f85499g);
        }
    }

    public tmm(@NonNull View view) {
        m57399h(view);
    }

    @DoNotInline
    /* renamed from: h */
    private void m57399h(View view) {
        view.setOutlineProvider(new C14462a());
    }

    /* renamed from: k */
    public static boolean m57400k(ShapeAppearanceModel shapeAppearanceModel) {
        return (shapeAppearanceModel.getTopLeftCorner() instanceof RoundedCornerTreatment) && (shapeAppearanceModel.getTopRightCorner() instanceof RoundedCornerTreatment) && (shapeAppearanceModel.getBottomLeftCorner() instanceof RoundedCornerTreatment) && (shapeAppearanceModel.getBottomRightCorner() instanceof RoundedCornerTreatment);
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    /* renamed from: a */
    public void mo24835a(@NonNull View view) {
        this.f85499g = m57402g();
        this.f85498f = m57403i() || m57404j();
        view.setClipToOutline(!mo24837c());
        if (mo24837c()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    /* renamed from: c */
    public boolean mo24837c() {
        return !this.f85498f || this.f32328a;
    }

    @VisibleForTesting
    /* renamed from: f */
    public float m57401f() {
        return this.f85499g;
    }

    /* renamed from: g */
    public final float m57402g() {
        RectF rectF;
        ShapeAppearanceModel shapeAppearanceModel = this.f32330c;
        if (shapeAppearanceModel == null || (rectF = this.f32331d) == null) {
            return 0.0f;
        }
        return shapeAppearanceModel.f32265f.getCornerSize(rectF);
    }

    /* renamed from: i */
    public final boolean m57403i() {
        ShapeAppearanceModel shapeAppearanceModel;
        if (this.f32331d.isEmpty() || (shapeAppearanceModel = this.f32330c) == null) {
            return false;
        }
        return shapeAppearanceModel.isRoundRect(this.f32331d);
    }

    /* renamed from: j */
    public final boolean m57404j() {
        ShapeAppearanceModel shapeAppearanceModel;
        if (!this.f32331d.isEmpty() && (shapeAppearanceModel = this.f32330c) != null && this.f32329b && !shapeAppearanceModel.isRoundRect(this.f32331d) && m57400k(this.f32330c)) {
            float cornerSize = this.f32330c.getTopLeftCornerSize().getCornerSize(this.f32331d);
            float cornerSize2 = this.f32330c.getTopRightCornerSize().getCornerSize(this.f32331d);
            float cornerSize3 = this.f32330c.getBottomLeftCornerSize().getCornerSize(this.f32331d);
            float cornerSize4 = this.f32330c.getBottomRightCornerSize().getCornerSize(this.f32331d);
            if (cornerSize == 0.0f && cornerSize3 == 0.0f && cornerSize2 == cornerSize4) {
                RectF rectF = this.f32331d;
                rectF.set(rectF.left - cornerSize2, rectF.top, rectF.right, rectF.bottom);
                this.f85499g = cornerSize2;
                return true;
            }
            if (cornerSize == 0.0f && cornerSize2 == 0.0f && cornerSize3 == cornerSize4) {
                RectF rectF2 = this.f32331d;
                rectF2.set(rectF2.left, rectF2.top - cornerSize3, rectF2.right, rectF2.bottom);
                this.f85499g = cornerSize3;
                return true;
            }
            if (cornerSize2 == 0.0f && cornerSize4 == 0.0f && cornerSize == cornerSize3) {
                RectF rectF3 = this.f32331d;
                rectF3.set(rectF3.left, rectF3.top, rectF3.right + cornerSize, rectF3.bottom);
                this.f85499g = cornerSize;
                return true;
            }
            if (cornerSize3 == 0.0f && cornerSize4 == 0.0f && cornerSize == cornerSize2) {
                RectF rectF4 = this.f32331d;
                rectF4.set(rectF4.left, rectF4.top, rectF4.right, rectF4.bottom + cornerSize);
                this.f85499g = cornerSize;
                return true;
            }
        }
        return false;
    }
}
