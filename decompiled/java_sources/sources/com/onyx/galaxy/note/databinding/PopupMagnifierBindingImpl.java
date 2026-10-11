package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupMagnifierBindingImpl extends PopupMagnifierBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57701u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57702v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57703q0;

    /* renamed from: t0 */
    public long f57704t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57702v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fl_height, 1);
        sparseIntArray.put(C10651R.id.fl_content_layout, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.divider, 4);
        sparseIntArray.put(C10651R.id.switch_auto_forward_move, 5);
    }

    public PopupMagnifierBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57701u0, f57702v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57704t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57704t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57704t0 = 1L;
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

    public PopupMagnifierBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[4], (FrameLayout) objArr[2], (FrameLayout) objArr[1], (TintSwitchCompat) objArr[5], (MediumTextView) objArr[3]);
        this.f57704t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57703q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
