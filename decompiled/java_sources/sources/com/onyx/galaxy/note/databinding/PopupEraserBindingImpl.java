package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public class PopupEraserBindingImpl extends PopupEraserBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57615u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57616v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57617q0;

    /* renamed from: t0 */
    public long f57618t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57616v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fl_height, 1);
        sparseIntArray.put(C10651R.id.fl_content_layout, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.divider, 4);
        sparseIntArray.put(C10651R.id.ll_eraser_type_container, 5);
        sparseIntArray.put(C10651R.id.pixel_eraser, 6);
        sparseIntArray.put(C10651R.id.stroke_eraser, 7);
        sparseIntArray.put(C10651R.id.select_eraser, 8);
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 9);
        sparseIntArray.put(C10651R.id.lly_pressure_eraser, 10);
        sparseIntArray.put(C10651R.id.pressure_eraser_container, 11);
        sparseIntArray.put(C10651R.id.switch_pressure_eraser, 12);
        sparseIntArray.put(C10651R.id.seek_bar_pressure, 13);
        sparseIntArray.put(C10651R.id.scratch_erase_container, 14);
        sparseIntArray.put(C10651R.id.iv_scribble_erase_guide, 15);
        sparseIntArray.put(C10651R.id.scribble_erase, 16);
        sparseIntArray.put(C10651R.id.eraser_only_mark_pen_container, 17);
        sparseIntArray.put(C10651R.id.switch_only_mark_pen, 18);
        sparseIntArray.put(C10651R.id.eraser_only_tape_container, 19);
        sparseIntArray.put(C10651R.id.switch_only_tape, 20);
        sparseIntArray.put(C10651R.id.eraser_all_contains, 21);
        sparseIntArray.put(C10651R.id.switch_all_contains, 22);
        sparseIntArray.put(C10651R.id.view_divider_line, 23);
        sparseIntArray.put(C10651R.id.eraser_cancel, 24);
        sparseIntArray.put(C10651R.id.iv_erase_cancel_guide, 25);
        sparseIntArray.put(C10651R.id.switch_eraser_cancel, 26);
        sparseIntArray.put(C10651R.id.tv_clear_page, 27);
    }

    public PopupEraserBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 28, f57615u0, f57616v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57618t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57618t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57618t0 = 1L;
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

    public PopupEraserBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[4], (FrameLayout) objArr[21], (FrameLayout) objArr[24], (FrameLayout) objArr[17], (FrameLayout) objArr[19], (TintLinearLayout) objArr[2], (FrameLayout) objArr[1], (TintImageView) objArr[25], (TintImageView) objArr[15], (LinearLayout) objArr[5], (TintLinearLayout) objArr[10], (TintImageView) objArr[6], (FrameLayout) objArr[11], (FrameLayout) objArr[14], (TintSwitchCompat) objArr[16], (StickSeekBarContainer) objArr[13], (StickSeekBarContainer) objArr[9], (TintImageView) objArr[8], (TintImageView) objArr[7], (TintSwitchCompat) objArr[22], (TintSwitchCompat) objArr[26], (TintSwitchCompat) objArr[18], (TintSwitchCompat) objArr[20], (TintSwitchCompat) objArr[12], (AppCompatTextView) objArr[27], (MediumTextView) objArr[3], (View) objArr[23]);
        this.f57618t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57617q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
