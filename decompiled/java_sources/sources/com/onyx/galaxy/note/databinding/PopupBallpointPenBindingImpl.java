package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;

/* loaded from: classes9.dex */
public class PopupBallpointPenBindingImpl extends PopupBallpointPenBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57557u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57558v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57559q0;

    /* renamed from: t0 */
    public long f57560t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57558v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.divider, 2);
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 3);
        sparseIntArray.put(C10651R.id.seek_bar_smooth, 4);
        sparseIntArray.put(C10651R.id.tv_color_title, 5);
        sparseIntArray.put(C10651R.id.color_layout, 6);
        sparseIntArray.put(C10651R.id.add_to_pen_box, 7);
    }

    public PopupBallpointPenBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57557u0, f57558v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57560t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57560t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57560t0 = 1L;
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

    public PopupBallpointPenBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[7], (ShapeColorArgsPropertyLayout) objArr[6], (TintView) objArr[2], (StickSeekBarContainer) objArr[4], (StickSeekBarContainer) objArr[3], (TintTextView) objArr[5], (MediumTextView) objArr[1]);
        this.f57560t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57559q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
