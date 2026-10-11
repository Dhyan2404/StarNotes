package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.C5139R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes6.dex */
public class SwitchMaterial extends SwitchCompat {

    /* renamed from: Y0 */
    public static final int f32585Y0 = C5139R.style.Widget_MaterialComponents_CompoundButton_Switch;

    /* renamed from: Z0 */
    public static final int[][] f32586Z0 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: U0 */
    @NonNull
    public final ElevationOverlayProvider f32587U0;

    /* renamed from: V0 */
    @Nullable
    public ColorStateList f32588V0;

    /* renamed from: W0 */
    @Nullable
    public ColorStateList f32589W0;

    /* renamed from: X0 */
    public boolean f32590X0;

    public SwitchMaterial(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f32588V0 == null) {
            int color = MaterialColors.getColor(this, C5139R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, C5139R.attr.colorControlActivated);
            float dimension = getResources().getDimension(C5139R.dimen.mtrl_switch_thumb_elevation);
            if (this.f32587U0.isThemeElevationOverlayEnabled()) {
                dimension += ViewUtils.getParentAbsoluteElevation(this);
            }
            int compositeOverlayIfNeeded = this.f32587U0.compositeOverlayIfNeeded(color, dimension);
            int[][] iArr = f32586Z0;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = MaterialColors.layer(color, color2, 1.0f);
            iArr2[1] = compositeOverlayIfNeeded;
            iArr2[2] = MaterialColors.layer(color, color2, 0.38f);
            iArr2[3] = compositeOverlayIfNeeded;
            this.f32588V0 = new ColorStateList(iArr, iArr2);
        }
        return this.f32588V0;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.f32589W0 == null) {
            int[][] iArr = f32586Z0;
            int[] iArr2 = new int[iArr.length];
            int color = MaterialColors.getColor(this, C5139R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, C5139R.attr.colorControlActivated);
            int color3 = MaterialColors.getColor(this, C5139R.attr.colorOnSurface);
            iArr2[0] = MaterialColors.layer(color, color2, 0.54f);
            iArr2[1] = MaterialColors.layer(color, color3, 0.32f);
            iArr2[2] = MaterialColors.layer(color, color2, 0.12f);
            iArr2[3] = MaterialColors.layer(color, color3, 0.12f);
            this.f32589W0 = new ColorStateList(iArr, iArr2);
        }
        return this.f32589W0;
    }

    public boolean isUseMaterialThemeColors() {
        return this.f32590X0;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f32590X0 && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f32590X0 && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f32590X0 = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchMaterial(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r4 = com.google.android.material.switchmaterial.SwitchMaterial.f32585Y0
            android.content.Context r7 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r7, r8, r9, r4)
            r6.<init>(r7, r8, r9)
            android.content.Context r0 = r6.getContext()
            com.google.android.material.elevation.ElevationOverlayProvider r7 = new com.google.android.material.elevation.ElevationOverlayProvider
            r7.<init>(r0)
            r6.f32587U0 = r7
            int[] r2 = com.google.android.material.C5139R.styleable.SwitchMaterial
            r7 = 0
            int[] r5 = new int[r7]
            r1 = r8
            r3 = r9
            android.content.res.TypedArray r8 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r9 = com.google.android.material.C5139R.styleable.SwitchMaterial_useMaterialThemeColors
            boolean r7 = r8.getBoolean(r9, r7)
            r6.f32590X0 = r7
            r8.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.switchmaterial.SwitchMaterial.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
