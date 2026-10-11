package com.onyx.android.sdk.textbox.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.textbox.C7999BR;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.widget.TintImageView;
import com.onyx.android.sdk.textbox.widget.TintLinearLayout;

/* loaded from: classes8.dex */
public class LayoutTextBoxBindingImpl extends LayoutTextBoxBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f46685u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f46686v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f46687q0;

    /* renamed from: t0 */
    public long f46688t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f46686v0 = sparseIntArray;
        sparseIntArray.put(C8002R.id.editor_container, 9);
        sparseIntArray.put(C8002R.id.touch_container, 10);
        sparseIntArray.put(C8002R.id.btn_move, 11);
        sparseIntArray.put(C8002R.id.iv_move, 12);
        sparseIntArray.put(C8002R.id.iv_left, 13);
        sparseIntArray.put(C8002R.id.iv_right, 14);
        sparseIntArray.put(C8002R.id.iv_top, 15);
        sparseIntArray.put(C8002R.id.iv_bottom, 16);
    }

    public LayoutTextBoxBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 17, f46685u0, f46686v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        int i;
        long j2;
        long j3;
        synchronized (this) {
            j = this.f46688t0;
            this.f46688t0 = 0L;
        }
        Boolean bool = this.mIsAdaptiveMode;
        long j4 = j & 5;
        int i2 = 0;
        if (j4 != 0) {
            boolean safeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j4 != 0) {
                if (safeUnbox) {
                    j2 = j | 16;
                    j3 = 64;
                } else {
                    j2 = j | 8;
                    j3 = 32;
                }
                j = j2 | j3;
            }
            i = safeUnbox ? 0 : 8;
            if (safeUnbox) {
                i2 = 8;
            }
        } else {
            i = 0;
        }
        if ((j & 5) != 0) {
            this.leftBottomHandle.setVisibility(i2);
            this.leftTopHandle.setVisibility(i2);
            this.rightBottomHandle.setVisibility(i2);
            this.rightTopHandle.setVisibility(i2);
            this.selectionBottomHandle.setVisibility(i);
            this.selectionLeftHandle.setVisibility(i);
            this.selectionRightHandle.setVisibility(i);
            this.selectionTopHandle.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46688t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46688t0 = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.android.sdk.textbox.databinding.LayoutTextBoxBinding
    public void setIsAdaptiveMode(@Nullable Boolean bool) {
        this.mIsAdaptiveMode = bool;
        synchronized (this) {
            this.f46688t0 |= 1;
        }
        notifyPropertyChanged(C7999BR.isAdaptiveMode);
        super.requestRebind();
    }

    @Override // com.onyx.android.sdk.textbox.databinding.LayoutTextBoxBinding
    public void setResizeIconRes(@Nullable Integer num) {
        this.mResizeIconRes = num;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (C7999BR.isAdaptiveMode == i) {
            setIsAdaptiveMode((Boolean) obj);
        } else {
            if (C7999BR.resizeIconRes != i) {
                return false;
            }
            setResizeIconRes((Integer) obj);
        }
        return true;
    }

    public LayoutTextBoxBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[11], (TintLinearLayout) objArr[9], (TintImageView) objArr[16], (TintImageView) objArr[13], (TintImageView) objArr[12], (TintImageView) objArr[14], (TintImageView) objArr[15], (FrameLayout) objArr[7], (FrameLayout) objArr[5], (FrameLayout) objArr[8], (FrameLayout) objArr[6], (FrameLayout) objArr[4], (FrameLayout) objArr[1], (FrameLayout) objArr[2], (FrameLayout) objArr[3], (View) objArr[10]);
        this.f46688t0 = -1L;
        this.leftBottomHandle.setTag(null);
        this.leftTopHandle.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f46687q0 = frameLayout;
        frameLayout.setTag(null);
        this.rightBottomHandle.setTag(null);
        this.rightTopHandle.setTag(null);
        this.selectionBottomHandle.setTag(null);
        this.selectionLeftHandle.setTag(null);
        this.selectionRightHandle.setTag(null);
        this.selectionTopHandle.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
