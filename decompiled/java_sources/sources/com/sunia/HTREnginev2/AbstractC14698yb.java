package com.sunia.HTREnginev2;

import android.util.AttributeSet;
import android.view.View;
import com.onyx.android.sdk.theme.utils.TintManager;

/* renamed from: com.sunia.HTREnginev2.yb */
/* loaded from: classes8.dex */
public abstract class AbstractC14698yb<T extends View> {

    /* renamed from: a */
    public boolean f90551a;
    protected TintManager mTintManager;
    protected T mView;

    public AbstractC14698yb(T t, TintManager tintManager) {
        this.mView = t;
        this.mTintManager = tintManager;
    }

    public abstract void loadFromAttribute(AttributeSet attributeSet, int i);

    public void setSkipNextApply(boolean z) {
        this.f90551a = z;
    }

    public boolean skipNextApply() {
        if (this.f90551a) {
            this.f90551a = false;
            return true;
        }
        this.f90551a = true;
        return false;
    }

    public abstract void tint();
}
