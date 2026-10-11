package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogBackupProcessBindingImpl extends DialogBackupProcessBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56326u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56327v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56328q0;

    /* renamed from: t0 */
    public long f56329t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56327v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.iv_close, 2);
        sparseIntArray.put(C10651R.id.fl_center_container, 3);
        sparseIntArray.put(C10651R.id.progress_container, 4);
        sparseIntArray.put(C10651R.id.progress_import_backup, 5);
        sparseIntArray.put(C10651R.id.tv_backup_name, 6);
        sparseIntArray.put(C10651R.id.tv_current_progress_name, 7);
        sparseIntArray.put(C10651R.id.tv_current_progress, 8);
        sparseIntArray.put(C10651R.id.ll_result_container, 9);
        sparseIntArray.put(C10651R.id.ll_result_complete_container, 10);
        sparseIntArray.put(C10651R.id.ll_result_error_container, 11);
        sparseIntArray.put(C10651R.id.ll_error_detail_info_container, 12);
        sparseIntArray.put(C10651R.id.rl_import_error_list, 13);
    }

    public DialogBackupProcessBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f56326u0, f56327v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56329t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56329t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56329t0 = 1L;
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

    public DialogBackupProcessBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[3], (ImageView) objArr[2], (LinearLayout) objArr[12], (LinearLayout) objArr[10], (LinearLayout) objArr[9], (LinearLayout) objArr[11], (LinearLayout) objArr[4], (ProgressBar) objArr[5], (RecyclerView) objArr[13], (TextView) objArr[6], (TextView) objArr[8], (TextView) objArr[7], (TextView) objArr[1]);
        this.f56329t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56328q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
