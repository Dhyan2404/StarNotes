package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutNoteTagBindingImpl extends LayoutNoteTagBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57400u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57401v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57402q0;

    /* renamed from: t0 */
    public long f57403t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57401v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tag_manager_container, 1);
        sparseIntArray.put(C10651R.id.tv_tag_manager, 2);
        sparseIntArray.put(C10651R.id.iv_expand, 3);
        sparseIntArray.put(C10651R.id.rv_tags, 4);
    }

    public LayoutNoteTagBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57400u0, f57401v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57403t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57403t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57403t0 = 1L;
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

    public LayoutNoteTagBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[3], (TintRecycleView) objArr[4], (LinearLayout) objArr[1], (TintTextView) objArr[2]);
        this.f57403t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57402q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
