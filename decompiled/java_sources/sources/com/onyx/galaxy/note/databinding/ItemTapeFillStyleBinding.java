package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.RoundImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemTapeFillStyleBinding extends ViewDataBinding {

    @NonNull
    public final RoundImageView ivIcon;

    public ItemTapeFillStyleBinding(Object obj, View view, int i, RoundImageView roundImageView) {
        super(obj, view, i);
        this.ivIcon = roundImageView;
    }

    public static ItemTapeFillStyleBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemTapeFillStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemTapeFillStyleBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemTapeFillStyleBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_tape_fill_style);
    }

    @NonNull
    @Deprecated
    public static ItemTapeFillStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemTapeFillStyleBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_tape_fill_style, viewGroup, z, obj);
    }

    @NonNull
    public static ItemTapeFillStyleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemTapeFillStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemTapeFillStyleBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_tape_fill_style, null, false, obj);
    }
}
