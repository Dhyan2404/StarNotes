package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public final class yao extends Drawable.ConstantState {

    /* renamed from: a */
    public int f90545a;

    /* renamed from: b */
    public Drawable.ConstantState f90546b;

    /* renamed from: c */
    public ColorStateList f90547c;

    /* renamed from: d */
    public PorterDuff.Mode f90548d;

    public yao(@Nullable yao yaoVar) {
        this.f90547c = null;
        this.f90548d = wao.f88416k;
        if (yaoVar != null) {
            this.f90545a = yaoVar.f90545a;
            this.f90546b = yaoVar.f90546b;
            this.f90547c = yaoVar.f90547c;
            this.f90548d = yaoVar.f90548d;
        }
    }

    /* renamed from: a */
    public boolean m58400a() {
        return this.f90546b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f90545a;
        Drawable.ConstantState constantState = this.f90546b;
        return (constantState != null ? constantState.getChangingConfigurations() : 0) | i;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable(@Nullable Resources resources) {
        return new xao(this, resources);
    }
}
