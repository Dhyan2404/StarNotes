package com.onyx.galaxy.note.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes9.dex */
public class ItemContextMenuBindingImpl extends ItemContextMenuBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56951t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56952u0 = null;

    /* renamed from: q0 */
    public long f56953q0;

    public ItemContextMenuBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f56951t0, f56952u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        CharSequence charSequence;
        boolean z;
        Drawable drawable;
        synchronized (this) {
            j = this.f56953q0;
            this.f56953q0 = 0L;
        }
        MenuItem menuItem = this.mModel;
        long j2 = j & 3;
        if (j2 == 0 || menuItem == null) {
            charSequence = null;
            z = false;
            drawable = null;
        } else {
            charSequence = menuItem.getTitle();
            drawable = menuItem.getIcon();
            z = menuItem.isEnabled();
        }
        if (j2 != 0) {
            this.itemContainer.setEnabled(z);
            this.ivIcon.setEnabled(z);
            ImageViewBindingAdapter.setImageDrawable(this.ivIcon, drawable);
            this.show.setEnabled(z);
            TextViewBindingAdapter.setText(this.show, charSequence);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56953q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56953q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemContextMenuBinding
    public void setModel(@Nullable MenuItem menuItem) {
        this.mModel = menuItem;
        synchronized (this) {
            this.f56953q0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((MenuItem) obj);
        return true;
    }

    public ItemContextMenuBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[0], (TintImageView) objArr[1], (TintTextView) objArr[2]);
        this.f56953q0 = -1L;
        this.itemContainer.setTag(null);
        this.ivIcon.setTag(null);
        this.show.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
