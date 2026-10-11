package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogConvertFileProgressBindingImpl extends DialogConvertFileProgressBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56346u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56347v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56348q0;

    /* renamed from: t0 */
    public long f56349t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56347v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.iv_close, 2);
        sparseIntArray.put(C10651R.id.progress_container, 3);
        sparseIntArray.put(C10651R.id.progress_bar, 4);
        sparseIntArray.put(C10651R.id.progress_value_container, 5);
        sparseIntArray.put(C10651R.id.tv_progress_title, 6);
        sparseIntArray.put(C10651R.id.downloadingButton, 7);
        sparseIntArray.put(C10651R.id.tv_progress, 8);
        sparseIntArray.put(C10651R.id.wait_container, 9);
        sparseIntArray.put(C10651R.id.tv_wait_tips, 10);
        sparseIntArray.put(C10651R.id.tv_wait_warning, 11);
    }

    public DialogConvertFileProgressBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56346u0, f56347v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56349t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56349t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56349t0 = 1L;
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

    public DialogConvertFileProgressBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[7], (TintImageView) objArr[2], (TintProgressBar) objArr[4], (LinearLayout) objArr[3], (ConstraintLayout) objArr[5], (TintTextView) objArr[8], (TintTextView) objArr[6], (MediumTextView) objArr[1], (TintTextView) objArr[10], (TintTextView) objArr[11], (LinearLayout) objArr[9]);
        this.f56349t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56348q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
