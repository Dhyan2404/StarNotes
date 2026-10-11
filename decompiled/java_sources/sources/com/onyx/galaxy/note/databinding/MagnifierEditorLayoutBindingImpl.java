package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.display.EditorView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierNewLineAreaView;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportContainer;

/* loaded from: classes9.dex */
public class MagnifierEditorLayoutBindingImpl extends MagnifierEditorLayoutBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57542u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57543v0;

    /* renamed from: q0 */
    @NonNull
    public final RelativeLayout f57544q0;

    /* renamed from: t0 */
    public long f57545t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57543v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.magnifier_view_port_container, 1);
        sparseIntArray.put(C10651R.id.magnifier_action_container, 2);
        sparseIntArray.put(C10651R.id.iv_magnifier_left, 3);
        sparseIntArray.put(C10651R.id.iv_magnifier_right, 4);
        sparseIntArray.put(C10651R.id.iv_magnifier_up, 5);
        sparseIntArray.put(C10651R.id.iv_magnifier_down, 6);
        sparseIntArray.put(C10651R.id.iv_magnifier_newline, 7);
        sparseIntArray.put(C10651R.id.iv_magnifier_close, 8);
        sparseIntArray.put(C10651R.id.magnifier_editor_container, 9);
        sparseIntArray.put(C10651R.id.magnifier_layout, 10);
        sparseIntArray.put(C10651R.id.magnifier_editor_view, 11);
        sparseIntArray.put(C10651R.id.magnifier_new_line_area_view, 12);
        sparseIntArray.put(C10651R.id.erase_circle_view, 13);
    }

    public MagnifierEditorLayoutBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f57542u0, f57543v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57545t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57545t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57545t0 = 1L;
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

    public MagnifierEditorLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatImageView) objArr[13], (TintImageView) objArr[8], (TintImageView) objArr[6], (TintImageView) objArr[3], (TintImageView) objArr[7], (TintImageView) objArr[4], (TintImageView) objArr[5], (TintLinearLayout) objArr[2], (LinearLayout) objArr[9], (EditorView) objArr[11], (FrameLayout) objArr[10], (MagnifierNewLineAreaView) objArr[12], (MagnifierViewportContainer) objArr[1]);
        this.f57545t0 = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f57544q0 = relativeLayout;
        relativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
