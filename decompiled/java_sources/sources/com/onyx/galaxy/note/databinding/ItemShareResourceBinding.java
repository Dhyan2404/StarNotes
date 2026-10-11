package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemShareResourceBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvProgress;

    @NonNull
    public final TintTextView tvTitle;

    public ItemShareResourceBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.tvProgress = tintTextView;
        this.tvTitle = tintTextView2;
    }

    public static ItemShareResourceBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemShareResourceBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemShareResourceBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_share_resource);
    }

    @NonNull
    @Deprecated
    public static ItemShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemShareResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_share_resource, viewGroup, z, obj);
    }

    @NonNull
    public static ItemShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemShareResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_share_resource, null, false, obj);
    }
}
