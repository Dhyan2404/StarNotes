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
public abstract class ItemTextSizeSpaceBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvTitle;

    public ItemTextSizeSpaceBinding(Object obj, View view, int i, TintTextView tintTextView) {
        super(obj, view, i);
        this.tvTitle = tintTextView;
    }

    public static ItemTextSizeSpaceBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemTextSizeSpaceBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemTextSizeSpaceBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_text_size_space);
    }

    @NonNull
    @Deprecated
    public static ItemTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemTextSizeSpaceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_text_size_space, viewGroup, z, obj);
    }

    @NonNull
    public static ItemTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemTextSizeSpaceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_text_size_space, null, false, obj);
    }
}
