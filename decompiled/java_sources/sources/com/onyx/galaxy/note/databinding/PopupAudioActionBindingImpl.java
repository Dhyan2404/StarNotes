package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupAudioActionBindingImpl extends PopupAudioActionBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57548u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57549v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57550q0;

    /* renamed from: t0 */
    public long f57551t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57549v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.audio_recognize, 1);
        sparseIntArray.put(C10651R.id.audio_link, 2);
        sparseIntArray.put(C10651R.id.goto_link, 3);
        sparseIntArray.put(C10651R.id.rename, 4);
        sparseIntArray.put(C10651R.id.delete, 5);
    }

    public PopupAudioActionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57548u0, f57549v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57551t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57551t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57551t0 = 1L;
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

    public PopupAudioActionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[2], (TintTextView) objArr[1], (TintTextView) objArr[5], (TintTextView) objArr[3], (TintTextView) objArr[4]);
        this.f57551t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57550q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
