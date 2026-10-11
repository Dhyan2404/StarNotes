package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import de.hdodenhof.circleimageview.CircleImageView;

/* loaded from: classes9.dex */
public class FragmentRecentLoginBindingImpl extends FragmentRecentLoginBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56804u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56805v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56806q0;

    /* renamed from: t0 */
    public long f56807t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56805v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.cl_title, 1);
        sparseIntArray.put(C10651R.id.lly_feedback, 2);
        sparseIntArray.put(C10651R.id.tv_help_and_feedback, 3);
        sparseIntArray.put(C10651R.id.lly_data_tips, 4);
        sparseIntArray.put(C10651R.id.tv_data_tips, 5);
        sparseIntArray.put(C10651R.id.iv_logo, 6);
        sparseIntArray.put(C10651R.id.tv_welcome, 7);
        sparseIntArray.put(C10651R.id.lly_account_list, 8);
        sparseIntArray.put(C10651R.id.cl_account, 9);
        sparseIntArray.put(C10651R.id.iv_user_avatar, 10);
        sparseIntArray.put(C10651R.id.iv_login_type, 11);
        sparseIntArray.put(C10651R.id.tv_account, 12);
        sparseIntArray.put(C10651R.id.tv_last_login_at, 13);
        sparseIntArray.put(C10651R.id.iv_user_role, 14);
        sparseIntArray.put(C10651R.id.tv_login, 15);
        sparseIntArray.put(C10651R.id.tv_tips, 16);
        sparseIntArray.put(C10651R.id.tv_login_other, 17);
    }

    public FragmentRecentLoginBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 18, f56804u0, f56805v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56807t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56807t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56807t0 = 1L;
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

    public FragmentRecentLoginBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[9], (TintConstraintLayout) objArr[1], (ImageView) objArr[11], (ImageView) objArr[6], (CircleImageView) objArr[10], (ImageView) objArr[14], (TintLinearLayout) objArr[8], (TintLinearLayout) objArr[4], (TintLinearLayout) objArr[2], (TintTextView) objArr[12], (TintTextView) objArr[5], (TintTextView) objArr[3], (TintTextView) objArr[13], (TintTextView) objArr[15], (TintTextView) objArr[17], (TintTextView) objArr[16], (TintTextView) objArr[7]);
        this.f56807t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56806q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
