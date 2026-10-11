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
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.custom.TapeView;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public class PopupTapePenBindingImpl extends PopupTapePenBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57872u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57873v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57874q0;

    /* renamed from: t0 */
    public long f57875t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57873v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fl_height, 1);
        sparseIntArray.put(C10651R.id.fl_content_layout, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.divider, 4);
        sparseIntArray.put(C10651R.id.ll_mark_type_container, 5);
        sparseIntArray.put(C10651R.id.tape_line_type, 6);
        sparseIntArray.put(C10651R.id.tape_view_line, 7);
        sparseIntArray.put(C10651R.id.tape_rectangle_type, 8);
        sparseIntArray.put(C10651R.id.tape_view_rectangle, 9);
        sparseIntArray.put(C10651R.id.display_all_container, 10);
        sparseIntArray.put(C10651R.id.switch_tape_display_all, 11);
        sparseIntArray.put(C10651R.id.tv_style_title, 12);
        sparseIntArray.put(C10651R.id.fl_custom_style, 13);
        sparseIntArray.put(C10651R.id.rv_tape_style, 14);
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 15);
        sparseIntArray.put(C10651R.id.tv_color_title, 16);
        sparseIntArray.put(C10651R.id.color_layout, 17);
        sparseIntArray.put(C10651R.id.add_to_pen_box, 18);
        sparseIntArray.put(C10651R.id.tv_clear_page_tape, 19);
        sparseIntArray.put(C10651R.id.tv_clear_all_tape, 20);
    }

    public PopupTapePenBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 21, f57872u0, f57873v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57875t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57875t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57875t0 = 1L;
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

    public PopupTapePenBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[18], (ShapeColorPropertyLayout) objArr[17], (FrameLayout) objArr[10], (TintView) objArr[4], (FrameLayout) objArr[2], (TintFrameLayout) objArr[13], (FrameLayout) objArr[1], (LinearLayout) objArr[5], (TintRecycleView) objArr[14], (StickSeekBarContainer) objArr[15], (TintSwitchCompat) objArr[11], (TintFrameLayout) objArr[6], (TintFrameLayout) objArr[8], (TapeView) objArr[7], (TapeView) objArr[9], (AppCompatTextView) objArr[20], (AppCompatTextView) objArr[19], (TintTextView) objArr[16], (TintTextView) objArr[12], (MediumTextView) objArr[3]);
        this.f57875t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57874q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
