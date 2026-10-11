package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.note.common.data.shape.LaserShapeType;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public class PopupLaserShapeBindingImpl extends PopupLaserShapeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57668u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57669v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57670q0;

    /* renamed from: t0 */
    public long f57671t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57669v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 3);
        sparseIntArray.put(C10651R.id.seek_bar_duration, 4);
        sparseIntArray.put(C10651R.id.tv_color_title, 5);
        sparseIntArray.put(C10651R.id.color_layout, 6);
    }

    public PopupLaserShapeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57668u0, f57669v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f57671t0;
            this.f57671t0 = 0L;
        }
        if ((j & 1) != 0) {
            this.dotType.setTag(LaserShapeType.DOT);
            this.lineType.setTag(LaserShapeType.LINE);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57671t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57671t0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public PopupLaserShapeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ShapeColorPropertyLayout) objArr[6], (TintImageView) objArr[2], (TintImageView) objArr[1], (StickSeekBarContainer) objArr[4], (StickSeekBarContainer) objArr[3], (TintTextView) objArr[5]);
        this.f57671t0 = -1L;
        this.dotType.setTag(null);
        this.lineType.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57670q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
