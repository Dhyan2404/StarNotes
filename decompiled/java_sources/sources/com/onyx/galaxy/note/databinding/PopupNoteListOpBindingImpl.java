package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupNoteListOpBindingImpl extends PopupNoteListOpBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57737u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57738v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57739q0;

    /* renamed from: t0 */
    public long f57740t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57738v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.btn_edit, 1);
        sparseIntArray.put(C10651R.id.view_2, 2);
        sparseIntArray.put(C10651R.id.btn_copy, 3);
        sparseIntArray.put(C10651R.id.view_3, 4);
        sparseIntArray.put(C10651R.id.ll_change_template, 5);
        sparseIntArray.put(C10651R.id.btn_change_template, 6);
        sparseIntArray.put(C10651R.id.ll_export, 7);
        sparseIntArray.put(C10651R.id.btn_export, 8);
        sparseIntArray.put(C10651R.id.ll_add_tags, 9);
        sparseIntArray.put(C10651R.id.btn_add_tags, 10);
        sparseIntArray.put(C10651R.id.btn_move, 11);
        sparseIntArray.put(C10651R.id.view_5, 12);
        sparseIntArray.put(C10651R.id.ll_lock, 13);
        sparseIntArray.put(C10651R.id.btn_lock, 14);
        sparseIntArray.put(C10651R.id.btn_move_trash, 15);
    }

    public PopupNoteListOpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f57737u0, f57738v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57740t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57740t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57740t0 = 1L;
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

    public PopupNoteListOpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[10], (TintTextView) objArr[6], (TintTextView) objArr[3], (TintTextView) objArr[1], (TintTextView) objArr[8], (TintTextView) objArr[14], (TintTextView) objArr[11], (TintTextView) objArr[15], (LinearLayout) objArr[9], (LinearLayout) objArr[5], (LinearLayout) objArr[7], (LinearLayout) objArr[13], (TintView) objArr[2], (TintView) objArr[4], (TintView) objArr[12]);
        this.f57740t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57739q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
