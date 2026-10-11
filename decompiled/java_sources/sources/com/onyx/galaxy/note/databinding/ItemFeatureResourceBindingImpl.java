package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.exoplayer2.p008ui.DefaultTimeBar;
import com.google.android.exoplayer2.p008ui.PlayerView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemFeatureResourceBindingImpl extends ItemFeatureResourceBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57006u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57007v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57008q0;

    /* renamed from: t0 */
    public long f57009t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57007v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_resource, 1);
        sparseIntArray.put(C10651R.id.fly_player, 2);
        sparseIntArray.put(C10651R.id.player_view, 3);
        sparseIntArray.put(C10651R.id.cly_control, 4);
        sparseIntArray.put(C10651R.id.iv_play, 5);
        sparseIntArray.put(C10651R.id.tv_duration, 6);
        sparseIntArray.put(C10651R.id.iv_player_volume, 7);
        sparseIntArray.put(C10651R.id.player_time_bar, 8);
    }

    public ItemFeatureResourceBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f57006u0, f57007v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57009t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57009t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57009t0 = 1L;
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

    public ItemFeatureResourceBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[4], (FrameLayout) objArr[2], (TintImageView) objArr[5], (TintImageView) objArr[7], (TintImageView) objArr[1], (DefaultTimeBar) objArr[8], (PlayerView) objArr[3], (TintTextView) objArr[6]);
        this.f57009t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57008q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
