package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogProgressBindingImpl extends DialogProgressBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56501u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56502v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56503q0;

    /* renamed from: t0 */
    public long f56504t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56502v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.titleText, 1);
        sparseIntArray.put(C10651R.id.closeButton, 2);
        sparseIntArray.put(C10651R.id.progressBar, 3);
        sparseIntArray.put(C10651R.id.leftText, 4);
        sparseIntArray.put(C10651R.id.rightText, 5);
    }

    public DialogProgressBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56501u0, f56502v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56504t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56504t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56504t0 = 1L;
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

    public DialogProgressBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (TextView) objArr[4], (ProgressBar) objArr[3], (TextView) objArr[5], (TextView) objArr[1]);
        this.f56504t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56503q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
