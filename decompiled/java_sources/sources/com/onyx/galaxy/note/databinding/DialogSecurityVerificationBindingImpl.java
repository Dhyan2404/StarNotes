package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogSecurityVerificationBindingImpl extends DialogSecurityVerificationBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56506u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56507v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56508q0;

    /* renamed from: t0 */
    public long f56509t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56507v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.btn_close, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.web_view, 3);
        sparseIntArray.put(C10651R.id.loading, 4);
    }

    public DialogSecurityVerificationBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f56506u0, f56507v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56509t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56509t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56509t0 = 1L;
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

    public DialogSecurityVerificationBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Button) objArr[1], (TextView) objArr[4], (TextView) objArr[2], (WebView) objArr[3]);
        this.f56509t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56508q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
