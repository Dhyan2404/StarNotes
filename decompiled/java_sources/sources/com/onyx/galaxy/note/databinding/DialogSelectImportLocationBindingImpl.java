package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogSelectImportLocationBindingImpl extends DialogSelectImportLocationBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56521u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56522v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56523q0;

    /* renamed from: t0 */
    public long f56524t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56522v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.rl_top, 1);
        sparseIntArray.put(C10651R.id.tv_cancel, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.tv_import, 4);
        sparseIntArray.put(C10651R.id.ll_single_file, 5);
        sparseIntArray.put(C10651R.id.tv_file_name, 6);
        sparseIntArray.put(C10651R.id.ll_multiple_file, 7);
        sparseIntArray.put(C10651R.id.tv_multiple_file_count, 8);
        sparseIntArray.put(C10651R.id.tv_name_title, 9);
        sparseIntArray.put(C10651R.id.til_name, 10);
        sparseIntArray.put(C10651R.id.td_file_base_name, 11);
        sparseIntArray.put(C10651R.id.ll_folders, 12);
        sparseIntArray.put(C10651R.id.tv_folders_name, 13);
        sparseIntArray.put(C10651R.id.ll_tag, 14);
        sparseIntArray.put(C10651R.id.tv_add_tag, 15);
        sparseIntArray.put(C10651R.id.rv_tags, 16);
    }

    public DialogSelectImportLocationBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 17, f56521u0, f56522v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56524t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56524t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56524t0 = 1L;
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

    public DialogSelectImportLocationBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintLinearLayout) objArr[12], (LinearLayout) objArr[7], (LinearLayout) objArr[5], (TintLinearLayout) objArr[14], (RelativeLayout) objArr[1], (TintRecycleView) objArr[16], (MaxLengthInputTextEdit) objArr[11], (TintTextInputLayoutView) objArr[10], (TintTextView) objArr[15], (TintTextView) objArr[2], (TintTextView) objArr[6], (TintTextView) objArr[13], (TintTextView) objArr[4], (TintTextView) objArr[8], (TintTextView) objArr[9], (TintTextView) objArr[3]);
        this.f56524t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56523q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
