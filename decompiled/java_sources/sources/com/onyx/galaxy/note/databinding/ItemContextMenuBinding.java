package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemContextMenuBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout itemContainer;

    @NonNull
    public final TintImageView ivIcon;

    @Bindable
    protected MenuItem mModel;

    @NonNull
    public final TintTextView show;

    public ItemContextMenuBinding(Object obj, View view, int i, LinearLayout linearLayout, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.itemContainer = linearLayout;
        this.ivIcon = tintImageView;
        this.show = tintTextView;
    }

    public static ItemContextMenuBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemContextMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public MenuItem getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable MenuItem menuItem);

    @Deprecated
    public static ItemContextMenuBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemContextMenuBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_context_menu);
    }

    @NonNull
    @Deprecated
    public static ItemContextMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemContextMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_context_menu, viewGroup, z, obj);
    }

    @NonNull
    public static ItemContextMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemContextMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemContextMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_context_menu, null, false, obj);
    }
}
