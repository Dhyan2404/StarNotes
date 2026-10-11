package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public class LayoutStrokeAndColorBindingImpl extends LayoutStrokeAndColorBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57490u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57491v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57492q0;

    /* renamed from: t0 */
    public long f57493t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57491v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.stroke_desc, 1);
        sparseIntArray.put(C10651R.id.seek_bar_container, 2);
        sparseIntArray.put(C10651R.id.stroke_seekbar, 3);
        sparseIntArray.put(C10651R.id.color_label, 4);
        sparseIntArray.put(C10651R.id.color_layout, 5);
    }

    public LayoutStrokeAndColorBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57490u0, f57491v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57493t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57493t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57493t0 = 1L;
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

    public LayoutStrokeAndColorBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[4], (ShapeColorPropertyLayout) objArr[5], (FrameLayout) objArr[2], (TextView) objArr[1], (AppCompatSeekBar) objArr[3]);
        this.f57493t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57492q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
