package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogNoteCountRegisterGuideBindingImpl extends DialogNoteCountRegisterGuideBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56476u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56477v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56478q0;

    /* renamed from: t0 */
    public long f56479t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56477v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.text_container, 1);
        sparseIntArray.put(C10651R.id.tv_title_container, 2);
        sparseIntArray.put(C10651R.id.iv_warning, 3);
        sparseIntArray.put(C10651R.id.tv_title, 4);
        sparseIntArray.put(C10651R.id.content_container, 5);
        sparseIntArray.put(C10651R.id.tv_content, 6);
        sparseIntArray.put(C10651R.id.tv_confirm, 7);
        sparseIntArray.put(C10651R.id.iv_close, 8);
    }

    public DialogNoteCountRegisterGuideBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56476u0, f56477v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56479t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56479t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56479t0 = 1L;
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

    public DialogNoteCountRegisterGuideBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[5], (TintImageView) objArr[8], (TintImageView) objArr[3], (TintLinearLayout) objArr[1], (MediumTextView) objArr[7], (TintTextView) objArr[6], (MediumTextView) objArr[4], (LinearLayout) objArr[2]);
        this.f56479t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56478q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
