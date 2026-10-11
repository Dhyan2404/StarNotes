package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupShapeLinkEditBindingImpl extends PopupShapeLinkEditBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57820u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57821v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57822q0;

    /* renamed from: t0 */
    public long f57823t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57821v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_edit_layout, 1);
        sparseIntArray.put(C10651R.id.finish, 2);
        sparseIntArray.put(C10651R.id.edittext, 3);
        sparseIntArray.put(C10651R.id.close, 4);
        sparseIntArray.put(C10651R.id.linkTypeLayout, 5);
        sparseIntArray.put(C10651R.id.link_to, 6);
        sparseIntArray.put(C10651R.id.linkTargetLayout, 7);
        sparseIntArray.put(C10651R.id.link_position, 8);
        sparseIntArray.put(C10651R.id.link_position_invalid_tip, 9);
        sparseIntArray.put(C10651R.id.value_edit_layout, 10);
        sparseIntArray.put(C10651R.id.back, 11);
        sparseIntArray.put(C10651R.id.value_edittext, 12);
    }

    public PopupShapeLinkEditBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f57820u0, f57821v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57823t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57823t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57823t0 = 1L;
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

    public PopupShapeLinkEditBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[11], (TintImageView) objArr[4], (TouchModeMaxLengthEditText) objArr[3], (TintTextView) objArr[2], (TintTextView) objArr[8], (AppCompatTextView) objArr[9], (TintLinearLayout) objArr[7], (TintTextView) objArr[6], (TintLinearLayout) objArr[5], (LinearLayoutCompat) objArr[1], (LinearLayoutCompat) objArr[10], (TintEditText) objArr[12]);
        this.f57823t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57822q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
